#import "imports.typ": *

#let global-style(it) = {
  set page(
    paper: "a4",
    margin: 25mm,//(left: 25mm, right: 25mm, top: 25mm, bottom: 25mm),
    number-align: center,
  )
  set par(
    leading: linespacing,
    justify: true,
  )
  set text(
    font: font-names.main,
    size: font-sizes.main,
  )
  it
}
