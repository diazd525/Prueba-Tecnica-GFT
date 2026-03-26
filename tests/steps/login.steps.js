const { Given, When, Then } = require('@cucumber/cucumber');
const assert = require('assert');

const LoginPage = require('../pages/login.page');
const InventoryPage = require('../pages/inventory.page');
const CheckoutPage = require('../pages/checkout.page');

Given('el usuario ingresa al portal web', async function () {
  this.loginPage = new LoginPage(this.page);
  await this.loginPage.goto();
});

When('hace login con las credenciales {string} y {string}', async function (user, password) {
  await this.loginPage.login(user, password);
});

When('agrega un producto al carrito', async function () {
  this.inventory = new InventoryPage(this.page);
  await this.inventory.agregarProducto();
  await this.inventory.irCarrito();
});

When('completa el checkout', async function () {
  this.checkout = new CheckoutPage(this.page);
  await this.checkout.checkout();
  await this.checkout.formulario();
  await this.checkout.finalizacionOrden();
});

Then('visualiza la notificacion de compra', async function () {
  const text = await this.checkout.confirmation.textContent();
  assert(text.includes('Thank'));
});

Then('visualiza un mensaje de error', async function () {
  const text = await this.loginPage.error.textContent();
  assert(text.includes('Epic sadface'));
});

Then('valida acceso al portal', async function () {
  await this.page.waitForURL('**/inventory.html');
});