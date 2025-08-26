#import "imports.typ": *

#let global-style(it) = {
  set page(
    paper: "a4",
    margin: 25mm,
    number-align: center,
  )
  set par(
    leading: linespacing.main,
    justify: true,
  )
  set text(
    font: font-names.main,
    size: font-sizes.main,
  )
  it
}

#let main-text-style(it) = {
  show: global-style
  set page(numbering: "1")
  counter(page).update(1)
  it
}

#let appendix-style(it) = {
  show: global-style
  set page(numbering: "i")
  counter(page).update(1)
  it
}