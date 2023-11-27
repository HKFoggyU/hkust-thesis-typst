#let SignatureLine(length: 70%) = (
  align(center)[#line(length: length, stroke: 0.5pt)]
)

#let doRepeat(content, count) = (
  for time in range(count) {
    [#(time+1) #content]
  }
)

#let clearDoublePage() = (
  pagebreak(weak: true, to: "odd")
)

#let TeX = style(styles => {
  let e = measure(text(1em, "E"), styles)
  let T = "T"
  let E = text(1em, baseline: e.height / 4, "E")
  let X = "X"
  box(T + h(-0.1em) + E + h(-0.125em) + X)
})

#let LaTeX = style(styles => {
  let l = measure(text(1em, "L"), styles)
  let a = measure(text(0.7em, "A"), styles)
  let L = "L"
  let A = text(0.7em, baseline: a.height - l.height, "A")
  box(L + h(-0.3em) + A + h(-0.1em) + TeX)
})