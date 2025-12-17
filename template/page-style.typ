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
  show raw: set text(font: font-names.mono)

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
  set heading(numbering: numblex("{Chapter [1]:d==1;[1]}{.[1]}{.[1]}{.[1]}{.[1]}"))
  show heading.where(level: 1): set heading(supplement: none)
  show heading.where(level: 1): it => {
    counter(figure.where(kind: image)).update(0)
    counter(figure.where(kind: table)).update(0)
    counter(math.equation).update(0)
    set align(center)
    clear-double-page()

    upper(counter(heading).display(it.numbering))
    parbreak()
    upper(it.body)
  }

  counter(page).update(1)
  it
}

#let ref-page-style(it) = {
  set page(numbering: "1")
  set heading(numbering: none, supplement: none)
  show heading.where(level: 1): it => {
    counter(figure.where(kind: image)).update(0)
    counter(figure.where(kind: table)).update(0)
    counter(math.equation).update(0)
    set align(center)
    clear-double-page()
    
    upper(it.body)
  }
  it
}

#let appendix-style(content) = {
  set heading(numbering: numblex("{Appendix [A]:d==1;[A]}{.[1]}{.[1]}{.[1]}{.[1]}"))
  show heading.where(level: 1): it => {
    counter(figure.where(kind: image)).update(0)
    counter(figure.where(kind: table)).update(0)
    counter(math.equation).update(0)
    set align(center)
    clear-double-page()

    upper(counter(heading).display(it.numbering))
    parbreak()
    upper(it.body)
  }
  counter(heading).update(0)
  state("backmatter").update(true)
  set page(numbering: "i")
  counter(page).update(1)
  content
}
