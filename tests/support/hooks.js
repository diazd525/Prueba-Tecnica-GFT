
const { Before, After } = require('@cucumber/cucumber');
const fs = require('fs');

Before(async function () {
  await this.init();
});

After(async function (scenario) {

  if (scenario.result.status === 'FAILED') {

    const fileName = scenario.pickle.name
      .replace(/[^a-zA-Z0-9]/g, "_");
    const path = `reports/screenshots/${fileName}.png`;
    await this.page.screenshot({ path, fullPage: true });
  }

  await this.close();
});