#import "@preview/t4t:0.3.2": is

#import "../utils/constants.typ": linespacing, pagemargin

// 文稿设置，可以进行一些像页面边距这类的全局设置
#let doc(
  // documentclass 传入参数
  config: (:),
  info: (:),
  // 其他参数
  it,
) = {
  // 1.  默认参数
  config = (
    twoside: true,
  ) + config
  info = (
    title: ("基于 Typst 的", "香港科技大学学位论文"),
    author: "张三",
  ) + info

  // 2.  对参数进行处理
  // 2.1 如果是字符串，则使用换行符将标题分隔为列表
  if (is.str(info.title)) {
    info.title = info.title.split("\n")
  }

  // 3.  基本的样式设置
  set text(
      font: "Times New Roman",
      size: 12pt,
    )
  set page(
      paper: "a4",
      margin: pagemargin,
      number-align: center,
      numbering: "i",
    )

    // Spacing:
    // The official pdf is 1.73 line spacing
    // #set par(leading: 1.05em)
    // #set par(leading: 1.03em)
    set par(
      leading: linespacing,
      justify: true
    )

  // 4.  PDF 元信息
  set document(
    title: (("",)+ info.title).sum(),
    author: info.author,
  )

  it
}