/******** IMPORTS ********/
// #import "@preview/physica:0.9.7": *
// #import "@preview/unify:0.7.1": num,unit,qty,numrange,qtyrange
// #import "@preview/typsium:0.3.1":*
// #import "@preview/mitex:0.2.6": *
#import "@preview/numblex:0.2.0": numblex
#import "@preview/alexandria:0.2.2": *


/******** CONSTANTS ********/
#let linespacing = (
  main: 1.07em,
  abstract: 0.49em,
  bibliography: 0.49em,
  title-text: 0.8em,
)
#let pagemargin = 25mm


// fonts
#let font-names = (
  main: ("Times New Roman", "Source Han Sans SC"),
  toc: "Times New Roman",
  title: "Times New Roman",
  math: "XITS",
  mono: ("Source Code Pro", "Courier New"),
)
#let font-sizes = (
  main: 12pt,
  title: 20pt,
  chapter-title: 16pt,
  toc: 12pt,
)

// thesis information
#import "/mythesis-info.typ": ust-setup
#let blank-page-to = if ust-setup.config.blankpage { "odd" } else { none }

/******** UTILS ********/

// PDF 元信息
#set document(
  title: (("",) + ust-setup.info.title).sum(),
  author: ust-setup.info.author,
)

#let invisible-heading(..args) = {
  set text(size: 0pt, fill: white)
  heading(numbering: none, ..args)
}

#let signature-line(length: 70%) = (
  align(center)[#line(length: length, stroke: 0.5pt)]
)

#let do-repeat(content, count) = (
  for time in range(count) {
    // [#(time+1) #content]
    [#content]
  }
)

#let clear-double-page() = (
  pagebreak(weak: true, to: blank-page-to)
)

#let set-degree(degree) = {
  let degreeFull = ""
  let degreeShort = ""
  let degreeType = ""

  if (lower(degree) == "phd") {
    degreeFull = "Doctor"
    degreeShort = "PhD"
    degreeType = "Philosophy"
  } else if (lower(degree) == "mphil") {
    degreeFull = "Master"
    degreeShort = "MPhil"
    degreeType = "Philosophy"
  } else if (lower(degree) == "dba") {
    degreeFull = "Doctor"
    degreeShort = "DBA"
    degreeType = "Business Administration"
  } else {
    degreeFull = "UNKNOWN"
    degreeShort = "UNKNOWN"
    degreeType = "UNKNOWN"
  }

  return (degreeFull, degreeShort, degreeType)
}

// for three-line-table
#let toprule = table.hline(stroke: 0.08em)
#let bottomrule = toprule
#let midrule = table.hline(stroke: 0.05em)

#let TeX = context {
  let e = measure(text(1em, "E"))
  let T = "T"
  let E = text(1em, baseline: e.height / 4, "E")
  let X = "X"
  box(T + h(-0.1em) + E + h(-0.125em) + X)
}

#let LaTeX = context {
  let l = measure(text(1em, "L"))
  let a = measure(text(0.7em, "A"))
  let L = "L"
  let A = text(0.7em, baseline: a.height - l.height, "A")
  box(L + h(-0.3em) + A + h(-0.1em) + TeX)
}
