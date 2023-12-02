#import "@preview/t4t:0.3.2": is

#import "../utils/utils.typ": do-repeat, set-degree
#import "../utils/constants.typ" as constants
#import "../utils/invisible-heading.typ": invisible-heading

#let cover-page(
  config: (:),
  info: (:),
) = {

  let (degreeFull, degreeShort) = set-degree(info.degree)

  set align(center)
  // Main text

  [
  #pagebreak(weak: true, to: if config.twoside { "odd" })

  #invisible-heading("Title Page")
  
  #heading(outlined: false)[#text(size: constants.font-sizes.title)[#info.title.join("\n")]]

  #do-repeat([#linebreak()], 5)

  by

  #do-repeat([#linebreak()], 1)

  #info.author

  #do-repeat([#linebreak()], 5)

  A Thesis Submitted to\
  The Hong Kong University of Science and Technology\
  in Partial Fulfillment of the Requirements for\
  the Degree of #degreeFull of Philosophy\
  in #info.program

  #do-repeat([#linebreak()], 3)

  #info.submit-date.month #info.submit-date.year, #info.city
  ]

}
