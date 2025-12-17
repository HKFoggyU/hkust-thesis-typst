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

  // https://forum.typst.app/t/how-can-i-number-equations-within-sections/1936/7
  set math.equation(numbering: it => {
    let appx = state("backmatter", false).get()
    let alph = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
    let hdr = counter(heading).get().at(0)
    let count = counter(heading.where(level: 1)).at(here()).first()
    if appx { [(#alph.at(hdr - 1).#it)] } else { numbering("(1.1)", count, it) }
  })

  // https://forum.typst.app/t/how-to-change-numbering-in-appendix/1716/2
  set figure(numbering: it => {
    //workaround...
    let appx = state("backmatter", false).get()
    let alph = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
    let hdr = counter(heading).get().at(0)
    if appx [#alph.at(hdr - 1).#it] else [#hdr.#it]
  })

  show heading.where(level: 1): it => {
    counter(figure.where(kind: image)).update(0)
    counter(figure.where(kind: table)).update(0)
    counter(math.equation).update(0)
    it
  }

  it
}

#let main-text-style(it) = {
  set page(numbering: "1")
  set heading(numbering: numblex("{Chapter [1]:d==1;[1]}{.[1]}{.[1]}{}{.[1]}"))
  show heading.where(level: 1): it => {
    counter(figure.where(kind: image)).update(0)
    counter(figure.where(kind: table)).update(0)
    counter(math.equation).update(0)
    set align(center)
    pagebreak(weak: true)

    upper(counter(heading).display(it.numbering))
    parbreak()
    upper(it.body)
  }

  counter(page).update(1)
  it
}

#let appendix-style(content) = {
  set heading(numbering: "A.1")
  set heading(numbering: numbly(
    "Appendix {1:A}", // {level:format}
    "{1:A}.{2}", // empty format defaults to arabic numbers
    "{1:A}.{2}.{3}",
    "Paragraph {4}", // only one level
  ))
  counter(heading).update(0)
  state("backmatter").update(true)
  set page(numbering: "i")
  counter(page).update(1)
  content
}
