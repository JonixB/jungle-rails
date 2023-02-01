describe('Home Page', () => {
  beforeEach(() => {
    cy.visit('/');
    cy.get(".products article").should("have.length", 2);
  });


  it("brings you to the product page if you click on the image", () => {
    cy.get("img")
      .first()
      .click()
  });
});