import { execFileSync } from 'node:child_process';
import { expect, test, type Page } from '@playwright/test';

async function login(page: Page, path = '/') {
  await page.goto(path);
  await page.getByLabel('Web Bridge 访问密码').fill(process.env.BRIDGE_TEST_PASSWORD!);
  await page.getByRole('button', {name: '进入远程浏览器'}).click();
}

test('mobile login, private admin and official entry', async ({page}) => {
  await page.setViewportSize({width: 390, height: 844});
  await page.goto('/admin');
  await expect(page.getByRole('heading', {name: '管理后台'})).toBeHidden();
  await page.getByLabel('Web Bridge 访问密码').fill('incorrect fixture');
  await page.getByRole('button', {name: '进入远程浏览器'}).click();
  await expect(page.getByText('访问密码错误')).toBeVisible();
  await login(page, '/admin');
  await expect(page.getByRole('heading', {name: '管理后台'})).toBeVisible();
  await expect(page.getByRole('link', {name: '打开官方页面 · 登录 ChatGPT'})).toHaveAttribute('href', '/');
  for (const [width,height] of [[390,844], [844,390]]) {
    await page.setViewportSize({width,height});
    expect(await page.evaluate(() => document.documentElement.scrollWidth)).toBe(width);
  }
  await page.getByRole('button', {name: '退出', exact: true}).click();
  await expect(page.getByLabel('Web Bridge 访问密码')).toBeVisible();
});

test('file panel streams real uploads, presents errors and saves downloads', async ({page}) => {
  await login(page, '/admin');
  await page.getByRole('button', {name: '文件管理'}).click();
  await page.getByRole('button', {name: '开始 / 重试上传'}).click();
  await expect(page.getByText('请先选择文件')).toBeVisible();
  await page.locator('#local-files').setInputFiles({name: '中文.txt', mimeType: 'text/plain', buffer: Buffer.from('测试')});
  await page.getByRole('button', {name: '开始 / 重试上传'}).click();
  await expect(page.getByText('已上传 1 个文件。')).toBeVisible();
  const row = page.locator('#uploads li').filter({hasText: '中文.txt'});
  await expect(row).toBeVisible();
  const download = page.waitForEvent('download');
  await page.getByRole('link', {name: '保存到本机'}).first().click();
  expect((await download).suggestedFilename()).toBe('fixture.txt');
  await row.getByRole('button', {name: '删除'}).click();
  await expect(row).toHaveCount(0);
});

test('workspace connects or displays a clear unavailable state', async ({page}) => {
  await login(page);
  await page.getByRole('button', {name: '远程工具'}).click();
  await expect(page.getByRole('dialog', {name: '远程工具'})).toBeVisible();
  if (process.env.BRIDGE_LIVE_TEST !== '1') {
    await expect(page.locator('#connection')).toContainText('浏览器服务暂不可用');
  }
  await expect(page.getByRole('link', {name: '管理后台'})).toBeVisible();
  await page.getByRole('button', {name: '重新连接'}).click();
  await expect(page.getByRole('dialog', {name: '远程工具'})).toBeHidden();
});

test('real noVNC Chromium supports mouse, Unicode clipboard, downloads and profile persistence', async ({page}) => {
  test.skip(process.env.BRIDGE_LIVE_TEST !== '1', 'Requires the local sandboxed desktop services');
  await page.setViewportSize({width: 1000, height: 640});
  await login(page);
  await expect(page.locator('#connection')).toBeHidden({timeout: 25_000});
  const markerTop = () => page.locator('#screen canvas').evaluate((canvas: HTMLCanvasElement) => {
    const pixels = canvas.getContext('2d')!.getImageData(68, 160, 1, 160).data;
    for (let i = 0; i < pixels.length; i += 4) {
      if (pixels[i] === 186 && pixels[i + 1] === 86 && pixels[i + 2] === 86) return 160 + i / 4;
    }
    return -1;
  });
  await expect.poll(markerTop).toBeGreaterThanOrEqual(180);
  // Some Chromium builds add an informational banner above the fixture.
  const offset = (await markerTop()) - 180;
  const pixel = (target = 200) => page.locator('#screen canvas').evaluate((canvas: HTMLCanvasElement, y) => {
    const c = canvas.getContext('2d')!;
    return [...c.getImageData(68, y, 1, 1).data].slice(0, 3).join(',');
  }, target + offset);
  const clickRemote = async (x: number, y: number) => {
    const pos = await page.locator('#screen canvas').boundingBox();
    const dimensions = await page.locator('#screen canvas').evaluate((el: HTMLCanvasElement) => ({width: el.width,height: el.height}));
    await page.mouse.click(pos!.x + x * pos!.width / dimensions.width, pos!.y + (y + offset) * pos!.height / dimensions.height);
  };
  await clickRemote(80, 65);
  await page.keyboard.type('ASCII');
  await page.getByRole('button', {name: '远程工具'}).click();
  await page.getByRole('button', {name: '键盘与剪贴板'}).click();
  await page.getByLabel('本地文字').fill('你好，世界');
  await page.getByRole('button', {name: '输入到远程'}).click();
  await expect.poll(() => pixel()).toBe('34,120,83');
  await clickRemote(90, 130);
  await page.getByRole('button', {name: '远程工具'}).click();
  await page.getByRole('button', {name: '上传与下载'}).click();
  await expect(page.getByText('remote-fixture.txt')).toBeVisible({timeout: 15_000});
  await page.locator('#local-files').setInputFiles({name: 'remote-upload.txt', mimeType: 'text/plain', buffer: Buffer.from('remote file fixture')});
  await page.getByRole('button', {name: '开始 / 重试上传'}).click();
  await expect(page.getByText('已上传 1 个文件。')).toBeVisible();
  await page.getByRole('dialog', {name: '文件传输'}).getByRole('button', {name: '关闭'}).click();
  await clickRemote(80, 264);
  const remoteUpload = process.env.BRIDGE_TEST_DIR + '/files/uploads/remote-upload.txt';
  // Drive the actual GTK file chooser through its location keyboard shortcut.
  await expect.poll(() => execFileSync('xdotool', ['getactivewindow','getwindowname'], {encoding: 'utf8'}).trim()).not.toContain('Bridge browser integration fixture');
  execFileSync('xdotool', ['key', 'ctrl+l']);
  execFileSync('xdotool', ['type', remoteUpload]);
  execFileSync('xdotool', ['key', '--delay', '350', 'Return', 'Return']);
  await expect.poll(() => pixel(335), {timeout: 10_000}).toBe('34,120,83');
  await page.goto('/admin');
  page.once('dialog', d => d.accept());
  await page.getByRole('button', {name: '重启 Chromium'}).click();
  await expect(page.getByText('已请求重启 Chromium。')).toBeVisible();
  await page.getByRole('link', {name: '返回远程画面'}).click();
  await expect(page.locator('#connection')).toBeHidden({timeout: 30_000});
  await expect.poll(() => pixel()).toBe('34,120,83');
});
