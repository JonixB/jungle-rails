describe('User Login', () => {
  beforeEach(() => {
    cy.visit('/');
    cy.get(".products article").should("have.length", 2);
  });



  it("can successfully login user with email and password", () => {
    cy.get(".nav-item")
      .contains('Login')
      .click()

    cy.get('input#email').type('nikko@test.com');
    cy.get('input#password').type('12345678');
    cy.get('input').contains('Submit').click();
  });

  it("redirects user to Home Page after logging in", () => {
    cy.get(".nav-item")
      .contains('Login')
      .click()

    cy.get('input#email').type('nikko@test.com');
    cy.get('input#password').type('12345678');
    cy.get('input').contains('Submit').click();
    cy.get('.user-section').contains('Welcome');
  });

  it("lets user logout successfully if logged in", () => {
    cy.get(".nav-item")
      .contains('Login')
      .click()

    cy.get('input#email').type('nikko@test.com');
    cy.get('input#password').type('12345678');
    cy.get('input').contains('Submit').click();

    cy.get(".nav-item")
      .contains('Logout')
      .click()
  });

});