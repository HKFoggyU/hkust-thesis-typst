/******** IMPORTS ********/
#import "@preview/physica:0.9.5": *
#import "@preview/i-figured:0.2.4"
#import "@preview/numblex:0.2.0": numblex
#import "@preview/numbly:0.1.0": numbly
// #import "@preview/alexandria:0.2.1": *

/******** CONSTANTS ********/
#let linespacing = (
  main: 1.07em,
  abstract: 0.49em,
)
#let pagemargin = 25mm


// fonts
#let font-names = (
  main: "Times New Roman",
  toc: "Times New Roman",
  title: "Times New Roman",
  math: "XITS",
)
#let font-sizes = (
  main: 12pt,
  title: 16pt,
  sec-title: 16pt,
  toc: 12pt,
)

// thesis information
#import "/mythesis-info.typ": ust-setup

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
  pagebreak(weak: true, to: "odd")
)

#let set-degree(degree) = {
  let degreeFull = ""
  let degreeShort = ""

  if (lower(degree) == "phd") {
    degreeFull = "Doctor"
    degreeShort = "PhD"
  } else if (lower(degree) == "mphil") {
    degreeFull = "Master"
    degreeShort = "MPhil"
  } else {
    degreeFull = "UNKNOWN"
    degreeShort = "UNKNOWN"
  }

  return (degreeFull, degreeShort)
}

// For lof and lot, ulgy hacking method
// Need optimization in future releases!
#let indent-entry(pre, sep, post) = context {
  let size = measure([#pre #sep])
  set par(
    leading: constants.abstract-linespacing,
    hanging-indent: size.width,
  )
  [#pre#sep#post#v(-2em)]
}


/******** USER-DEFINED FUNCTIONS ********/

#let TeX = context {
  let e = measure(text(1em, "E"))
  let T = "T"
  let E = text(1em, baseline: e.height / 4, "E")
  let X = "X"
  box(T + h(-0.1em) + E + h(-0.125em) + X)
}

#let LaTeX = context {
  let l = measure(text(1em, "L"))
  let a = measure(text(0.7em, "A"), styles)
  let L = "L"
  let A = text(0.7em, baseline: a.height - l.height, "A")
  box(L + h(-0.3em) + A + h(-0.1em) + TeX)
}
