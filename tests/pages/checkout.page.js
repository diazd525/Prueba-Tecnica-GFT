class CheckoutPage {
  constructor(page) {
    this.page = page;
    this.Bottoncheckout = page.locator('[data-test="checkout"]');
    this.FirstName = page.locator('[data-test="firstName"]');
    this.LastName = page.locator('[data-test="lastName"]');
    this.Zip = page.locator('[data-test="postalCode"]');
    this.Continue = page.locator('[data-test="continue"]');
    this.Finish = page.locator('[data-test="finish"]');
    this.confirmation = page.locator('.complete-header');
  }

  async checkout() {
    await this.Bottoncheckout.click();
  }

  async formulario() {
    await this.FirstName.fill('Daniel');
    await this.LastName.fill('Diaz');
    await this.Zip.fill('050001');
    await this.Continue.click();
  }

  async finalizacionOrden() {
    await this.Finish.click();
  }
}

module.exports = CheckoutPage;