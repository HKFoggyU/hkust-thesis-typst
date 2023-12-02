#import "@preview/t4t:0.3.2": is

#import "../utils/utils.typ": signature-line, do-repeat
#import "../utils/constants.typ" as constants
#import "../utils/invisible-heading.typ": invisible-heading

#let authorization(
  config: (:),
  info: (:),
) = {

  set align(center)
  [
  #pagebreak(weak: true, to: if config.twoside { "odd" })

  #set par(first-line-indent: 2em)

  #invisible-heading("Authorization Page")
  #heading(outlined: false)[#text(size: constants.font-sizes.title)[#underline([Authorization])]]

  #do-repeat([#linebreak()], 2)

  #align(left)[
  I hereby declare that I am the sole author of the thesis.

  #do-repeat([#linebreak()], 1)

  I authorize the Hong Kong University of Science and Technology to lend this thesis to other institutions or individuals for the purpose of scholarly research.

  #do-repeat([#linebreak()], 1)

  I further authorize the Hong Kong University of Science and Technology to reproduce the thesis by photocopying or by other means, in total or in part, at the request of other institutions or individuals for the purpose of scholarly research.
  ]

  #do-repeat([#linebreak()], 7)

  #signature-line()

  #info.author

  #do-repeat([#linebreak()], 1)

  #info.submit-date.date #info.submit-date.month #info.submit-date.year
  ]

}
