#import "@preview/outrageous:0.1.0"
#import "../utils/invisible-heading.typ": invisible-heading

#let fontNames = (TNR: "Times New Roman")
#let fontSize = 12pt

// 目录生成
#let toc-page(
  // documentclass 传入参数
  config: (:),
  info: (:),
  // 其他参数
  depth: 3,
  title: "TABLE OF CONTENTS",
  outlined: true,
  title-vspace: 32pt,
  title-text-args: auto,
  // 引用页数的字体，这里用于显示 Times New Roman
  reference-font: auto,
  reference-size: fontSize,
  // 字体与字号
  font: auto,
  size: (fontSize, fontSize),
  // 垂直间距
  vspace: (25pt, 14pt),
  indent: (0pt, 18pt, 28pt),
  // 一级标题不显示点号
  fill: (none, auto),
  ..args,
) = {
  // 1.  默认参数
  let fonts = fontNames
  if (title-text-args == auto) {
    title-text-args = (font: fonts.TNR, size: fontSize, weight: "bold")
  }
  // 引用页数的字体，这里用于显示 Times New Roman
  if (reference-font == auto) {
    reference-font = fonts.TNR
  }
  // 字体与字号
  if (font == auto) {
    font = (fonts.TNR, fonts.TNR)
  }

  // 2.  正式渲染
  pagebreak(weak: true, to: if config.twoside { "odd" })

  // 默认显示的字体
  set text(font: reference-font, size: reference-size)

  {
    set align(center)
    text(..title-text-args, title)
    // 标记一个不可见的标题用于目录生成
    invisible-heading(level: 1, outlined: outlined, title)
  }

  v(title-vspace)

  show outline.entry: outrageous.show-entry.with(
    // 保留 Typst 基础样式
    ..outrageous.presets.typst,
    body-transform: (level, it) => {
      // 设置字体和字号
      set text(
        font: font.at(calc.min(level, font.len()) - 1),
        size: size.at(calc.min(level, size.len()) - 1),
      )
      // 计算缩进
      let indent-list = indent + range(level - indent.len()).map((it) => indent.last())
      let indent-length = indent-list.slice(0, count: level).sum()
      h(indent-length) + it
    },
    vspace: vspace,
    fill: fill,
    ..args,
  )

  // 显示目录
  outline(title: none, depth: depth)

}