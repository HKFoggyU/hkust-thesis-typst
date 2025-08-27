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
  set math.equation(numbering: "1.")
  set heading(numbering: "1.")
  it
}

#let main-text-style(it) = {
  show: global-style
  set page(numbering: "1")
  set heading(numbering: numblex("{Chapter [1]:d==1;[1]}{.[1]}{.[1]}{}{.[1]}"))
  counter(page).update(1)
  it
}

#let appendix-style(it) = {
  show: global-style
  counter(heading).update(0)
  // set heading(numbering: numblex("{Appendix [A]:d==1;[A]}{.[1]}{.[1]}{.[1]}"))
  set heading(numbering: numbly(
    "Appendix {1:A}", // {level:format}
    "{1:A}.{2}", // empty format defaults to arabic numbers
    "{1:A}.{2}.{3}",
    "Paragraph {4}", // only one level
  ))
  set page(numbering: "i")
  counter(page).update(1)
  it
}
