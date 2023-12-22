#import "@preview/t4t:0.3.2": is

#import "../utils/utils.typ": do-repeat, set-degree
#import "../utils/constants.typ" as constants
#import "../utils/invisible-heading.typ": invisible-heading

#let abstract-page(
  config: (:),
  info: (:),
  it,
) = {

  let (degreeFull, degreeShort) = set-degree(info.degree)

  [
  #set align(center)
  #pagebreak(weak: true, to: if config.twoside { "odd" })

  #invisible-heading("Abstract")
  
  #heading(outlined: false)[#text(size: constants.font-sizes.title)[#info.title.join("\n")]]

  #do-repeat([#linebreak()], 1)

  by #info.author

  #do-repeat([#linebreak()], 2)

  #info.department

  #do-repeat([#linebreak()], 1)

  The Hong Kong University of Science and Technology
  
  #do-repeat([#linebreak()], 2)
  
  Abstract

  #do-repeat([#linebreak()], 1)
  ]
  
  // abstract text

  set align(left)
  set par(
    leading: constants.abstract-linespacing,
  )
  it


}
