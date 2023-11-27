#import "@preview/t4t:0.3.2": is

#import "../utils/utils.typ": doRepeat

#let cover-page(
  config: (:),
  info: (:),
) = {
  config = config
  info = info

  set align(center)
  // Main text

  [
  #pagebreak(weak: true, to: if config.twoside { "odd" })
  = #text(size: 12pt)[#info.title.join(" ")]

  #doRepeat([#linebreak()], 2)

  Thesis Title with the first letter of all words capitalized, except for

  prepositions, articles and coordinate conjunctions that do not appear as the first word

  #doRepeat([#linebreak()], 5)

  by

  #doRepeat([#linebreak()], 1)

  Your name as found in official HKUST records, excluding any titles

  #doRepeat([#linebreak()], 5)

  A Thesis Submitted to\
  The Hong Kong University of Science and Technology\
  in Partial Fulfillment of the Requirements for\
  the Degree of Doctor of Philosophy\
  in [Name of Program]

  #doRepeat([#linebreak()], 3)

  month and year, Hong Kong
  ]

}
