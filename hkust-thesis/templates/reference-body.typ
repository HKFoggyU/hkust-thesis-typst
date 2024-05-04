#import "../imports.typ": *

#import "../utils/invisible-heading.typ": invisible-heading


// 目录生成
#let reference-body(
  // documentclass 传入参数
  config: (:),
  info: (:),
  bib-filename: "mypublications.bib",
  style: "institute-of-electrical-and-electronics-engineers",
  full: false,
  page-title: "References",
  // 其他参数
  ..args,
) = {
  let bib-path = "../../" + bib-filename
  set text(
    font: constants.font-names.toc,
    size: constants.font-sizes.toc,
  )

  // page setting
  // set page(numbering: "1")

  // page rendering
  // pagebreak(weak: true, to: if config.twoside { "odd" })

  // set par(leading: linespacing)

  // 显示References
  // {
  //   set align(center)
  //   let ref-page-title = page-title
  //   invisible-heading(ref-page-title)
  //   heading(outlined: false)[#text(size: constants.font-sizes.title)[#upper(ref-page-title)]]
  //   do-repeat([#linebreak()], 1)
  // }

  {
    bibliography(
      bib-path,
      title: none,
      style: style,
      full: full,
    )
  }
}