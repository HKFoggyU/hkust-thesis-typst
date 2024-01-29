#import "@preview/outrageous:0.1.0"
#import "@preview/i-figured:0.2.3"
#import "../utils/invisible-heading.typ": invisible-heading

#import "../utils/utils.typ": do-repeat
#import "../utils/constants.typ" as constants
// #import "../utils/constants.typ": linespacing

#let my-measure(body) = style(styles => {
  let size = measure(body, styles)
  return size.width
})

// 目录生成
#let lof-page(
  // documentclass 传入参数
  config: (:),
  info: (:),
  // 其他参数
  depth: 3,
  // 间距
  vspace: (25pt, 14pt),
  indent: (0pt, 4.25em, 1.6em),
  // 不显示点号
  fill: (none, none),
  ..args,
) = {

  // page setting
  show outline.entry: outrageous.show-entry.with(
    // 保留 Typst 基础样式
    ..outrageous.presets.typst,
    body-transform: (level, it) => {
      // 设置字体和字号
      set text(
        font: constants.font-names.toc,
        size: constants.font-sizes.toc,
      )
      // 计算缩进
      let indent-list = indent + range(level - indent.len()).map((it) => indent.last())
      let indent-length = indent-list.slice(0, count: level).sum()
      // h(indent-length) + h(-5em) + it
      it
    },
    // vspace: vspace,
    fill: fill,
    ..args,
  )

  // page rendering
  pagebreak(weak: true, to: if config.twoside { "odd" })

  // set par(leading: linespacing)

  {
    set align(center)
    let toc-text = "List of Figures"
    invisible-heading(toc-text)
    heading(outlined: false)[#text(size: constants.font-sizes.title)[#upper(toc-text)]]
    do-repeat([#linebreak()], 1)
  }

  {
  // 显示目录
  set par(
    // first-line-indent: 4.5em,
    // hanging-indent: 4.5em,
  )
  i-figured.outline(target-kind: image, title: none, depth: depth)
  }

}