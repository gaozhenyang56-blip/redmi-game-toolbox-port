import { createWidget, widget, align, text_style, prop } from '@zos/ui'
import { launchApp, getAppIdByName, SYSTEM_APP_HR, SYSTEM_APP_STOPWATCH } from '@zos/router'

const TEST_TARGET_APP_ID = 20096102
const TEST_TARGET_PAGE = 'page/bip6/index.page'

Page({
  build() {
    createWidget(widget.TEXT, {
      x: 20, y: 62, w: 350, h: 38,
      text: '隐藏应用启动测试', text_size: 27,
      color: 0xffffff, align_h: align.CENTER_H, align_v: align.CENTER_V
    })
    const status = createWidget(widget.TEXT, {
      x: 20, y: 400, w: 350, h: 40,
      text: '先测试可见，再测试隐藏', text_size: 18,
      color: 0x9aa8ba, align_h: align.CENTER_H,
      align_v: align.CENTER_V, text_style: text_style.WRAP
    })
    const say = (msg) => {
      status.setProperty(prop.MORE, { text: msg })
      console.log('[HiddenManager] ' + msg)
    }
    const button = (y, title, handler) => {
      createWidget(widget.BUTTON, {
        x: 28, y, w: 334, h: 61,
        radius: 16, color: 0xffffff, text_size: 24,
        normal_color: 0x243447, press_color: 0x345c86,
        text: title,
        click_func: () => {
          try { handler() }
          catch (e) { console.log('[HiddenManager] ERROR: ' + e); say('调用异常，请查看日志') }
        }
      })
    }
    button(112, '系统心率', () => {
      say('请求启动系统心率')
      launchApp({ appId: SYSTEM_APP_HR, native: true })
    })
    button(184, '系统秒表', () => {
      say('请求启动系统秒表')
      launchApp({ appId: SYSTEM_APP_STOPWATCH, native: true })
    })
    button(256, '目标：名称查找', () => {
      const id = getAppIdByName('Hidden Target')
      say('名称匹配ID: ' + id)
      if (typeof id === 'number' && id > 0) launchApp({ appId: id, url: TEST_TARGET_PAGE })
    })
    button(328, '目标：固定ID', () => {
      say('固定ID: ' + TEST_TARGET_APP_ID)
      launchApp({ appId: TEST_TARGET_APP_ID, url: TEST_TARGET_PAGE })
    })
  }
})
