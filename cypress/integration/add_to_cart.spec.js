describe('Home Page', () => {
  beforeEach(() => {
    cy.visit('/');
    cy.get(".products article").should("have.length", 2);
  });


  it("increments the number on the cart when add is clicked", () => {
    cy.get("button")
      .contains('Add')
      .click({force: true})

    cy.get('.nav-link')
      .contains(' My Cart (1) ')
      .should('be.visible');
  });
});