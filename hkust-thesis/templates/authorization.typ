#import "@preview/t4t:0.3.2": is

#import "../utils/utils.typ": SignatureLine, doRepeat
#import "../utils/constants.typ": linespacing, pagemargin

#let authorization(
  config: (:),
  info: (:),
) = {
  info = info


  set align(center)
  [
  #pagebreak(weak: true, to: if config.twoside { "odd" })

  #set par(first-line-indent: 2em)

  = #text(size: 12pt)[#underline([Authorization])]

  #doRepeat([#linebreak()], 2)

  #align(left)[
  I hereby declare that I am the sole author of the thesis.

  #doRepeat([#linebreak()], 1)

  I authorize the Hong Kong University of Science and Technology to lend this thesis to other institutions or individuals for the purpose of scholarly research.

  #doRepeat([#linebreak()], 1)

  I further authorize the Hong Kong University of Science and Technology to reproduce the thesis by photocopying or by other means, in total or in part, at the request of other institutions or individuals for the purpose of scholarly research.
  ]

  #doRepeat([#linebreak()], 5)

  #SignatureLine()

  [type under signature line your name as found in official HKUST records,\
  excluding any titles]

  #doRepeat([#linebreak()], 1)

  [Date, e.g. 31 August 2015]
  ]

}
