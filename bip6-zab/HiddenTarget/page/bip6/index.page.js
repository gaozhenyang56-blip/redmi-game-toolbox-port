import { createWidget, widget, align } from '@zos/ui'

Page({
  build() {
    createWidget(widget.TEXT, {
      x: 20, y: 128, w: 350, h: 75,
      text: '目标应用启动成功', color: 0x67dca7,
      text_size: 29, align_h: align.CENTER_H,
      align_v: align.CENTER_V
    })
    createWidget(widget.TEXT, {
      x: 30, y: 224, w: 330, h: 105,
      text: '从管理器跳转到这里，说明启动接口生效。请分别在隐藏前和隐藏后测试。',
      color: 0xffffff, text_size: 21,
      align_h: align.CENTER_H,
      align_v: align.CENTER_V
    })
  }
})
