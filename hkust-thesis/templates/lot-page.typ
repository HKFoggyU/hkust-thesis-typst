#import "../imports.typ": *

#import "../utils/invisible-heading.typ": invisible-heading


// 目录生成
#let lot-page(
  // documentclass 传入参数
  config: (:),
  info: (:),
  // 其他参数
  depth: 3,
  // 间距
  vspace: (25pt, 14pt),
  indent: (0pt, 4.25em, 1.6em),
  // 不显示点号
  fill: (auto, none),
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
      // 计算缩进
      if (it.has("children") and it.children.at(3, default: none) == [#": "]) {
        let pre = it.children.slice(0, 3).sum()
        let sep = it.children.slice(3, 4).sum()
        let post = it.children.slice(4).sum()
        indent-entry(pre, sep, post)
      } else {
        it
      }
    },
    // vspace: vspace,
    fill: fill,
    ..args,
  )

  // page rendering
  pagebreak(weak: true, to: if config.twoside { "odd" })

  {
    set align(center)
    let toc-text = "List of Tables"
    invisible-heading(toc-text)
    heading(outlined: false)[#text(size: constants.font-sizes.title)[#upper(toc-text)]]
    do-repeat([#linebreak()], 1)
  }

  {
  // 显示目录
  i-figured.outline(target-kind: table, title: none, depth: depth)
  }

}