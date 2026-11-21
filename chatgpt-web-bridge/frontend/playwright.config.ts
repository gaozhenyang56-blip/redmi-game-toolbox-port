import {defineConfig} from '@playwright/test';

export default defineConfig({
  testDir: './tests',
  workers: 1,
  timeout: 60_000,
  use: {
    baseURL: process.env.BRIDGE_TEST_URL,
    ignoreHTTPSErrors: true,
    launchOptions: {executablePath: process.env.BRIDGE_TEST_CLIENT || undefined},
  },
});
