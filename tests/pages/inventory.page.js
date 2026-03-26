
class InventoryPage {
  constructor(page) {
    this.page = page;
    this.BottonAddCart = page.locator('[data-test="add-to-cart-sauce-labs-backpack"]');
    this.cart = page.locator('.shopping_cart_link');
  }
 
  async agregarProducto() {
    await this.BottonAddCart.click();
  }

  async irCarrito() {
    await this.cart.click();
  }
}

module.exports = InventoryPage;