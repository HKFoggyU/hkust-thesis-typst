#import "../imports.typ": *

#import "../utils/invisible-heading.typ": invisible-heading

// 目录生成
#let toc-page(
  // documentclass 传入参数
  config: (:),
  info: (:),
  // 其他参数
  depth: 3,
  // 间距
  vspace: (constants.linespacing, constants.linespacing),
  indent: (0pt, 4.25em, 1.6em),
  // 不显示点号
  fill: (none, none),
  ..args,
) = {
  
  set text(
    font: constants.font-names.toc,
    size: constants.font-sizes.toc,
  )

  // page setting
  show outline.entry: outrageous.show-entry.with(
    // 保留 Typst 基础样式
    ..outrageous.presets.typst,
    body-transform: (level, it) => {
      // 设置字体和字号
      // 计算缩进
      let indent-list = indent + range(level - indent.len()).map((it) => indent.last())
      let indent-length = indent-list.slice(0, count: level).sum()
      h(indent-length) + it
    },
    vspace: vspace,
    fill: fill,
    ..args,
  )

  // page rendering
  pagebreak(weak: true, to: if config.twoside { "odd" })

  // set par(leading: linespacing)

  {
    set align(center)
    let toc-text = "Table of Contents"
    invisible-heading(toc-text)
    heading(outlined: false)[#text(size: constants.font-sizes.title)[#upper(toc-text)]]
    do-repeat([#linebreak()], 1)
  }

  // 显示目录
  outline(title: none, depth: depth)

}