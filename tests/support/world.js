
const { setWorldConstructor, setDefaultTimeout } = require('@cucumber/cucumber');
const { chromium } = require('playwright');

class CustomWorld {
  async init() {
    this.browser = await chromium.launch();

    this.context = await this.browser.newContext({
      recordVideo: {
        dir: 'reports/videos/'
      }
    });
    this.page = await this.context.newPage();
    this.page.setDefaultNavigationTimeout(30000);
  }

  async close() {
    await this.browser.close();
  }
}

setDefaultTimeout(60 * 1000);
setWorldConstructor(CustomWorld);