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
  above: (25pt, 14pt),
  below: (14pt, 14pt),
  indent: (0pt, 4.25em, 1.6em),
  // 不显示点号
  fill: (repeat([.], gap: 0.15em),),
  gap: .3em,
  ..args,
) = {
  set text(
    font: constants.font-names.toc,
    size: constants.font-sizes.toc,
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

// 目录样式
  set outline(indent: level => indent.slice(0, calc.min(level + 1, indent.len())).sum())
  show outline.entry: entry => block(
    above: above.at(entry.level - 1, default: above.last()),
    below: below.at(entry.level - 1, default: below.last()),
    link(
      entry.element.location(),
      entry.indented(
        none,
        {
          text(
            font: constants.font-names.toc,
            size: constants.font-sizes.toc,
            {
              if entry.prefix() not in (none, []) {
                entry.prefix()
                h(gap)
              }
              entry.body()
            },
          )
          box(width: 1fr, inset: (x: .25em), fill.at(entry.level - 1, default: fill.last()))
          entry.page()
        },
        gap: 0pt,
      ),
    ),
  )

  // 显示目录
  outline(title: none, depth: depth)
}
