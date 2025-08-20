#import "../imports.typ": *

#import "../utils/invisible-heading.typ": invisible-heading


// 目录生成
#let lof-page(
  // documentclass 传入参数
  config: (:),
  info: (:),
  // 其他参数
  depth: 3,
  // 间距
  vspace: (25pt, 14pt),
  above: 14pt,
  below: 14pt,
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
  show outline.entry: set block(
    above: above,
    below: below,
    ..args,
  )

  // page rendering
  pagebreak(weak: true, to: if config.twoside { "odd" })

  {
    set align(center)
    let toc-text = "List of Figures"
    invisible-heading(toc-text)
    heading(outlined: false)[#text(size: constants.font-sizes.title)[#upper(toc-text)]]
    do-repeat([#linebreak()], 1)
  }

  {
    // 显示目录
    i-figured.outline(target-kind: image, title: none, depth: depth)
  }
}
