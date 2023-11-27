#import "@preview/t4t:0.3.2": is

#import "../utils/utils.typ": SignatureLine, doRepeat
#import "../utils/constants.typ": linespacing

#let signature-page(
  config: (:),
  info: (:),
) = {
  info = info

  set align(center)
  [
  #pagebreak(weak: true, to: if config.twoside { "odd" })
  = #text(size: 12pt)[SAMPLE SIGNATURE PAGE]

  #doRepeat([#linebreak()], 1)

  [Thesis Title with the first letter of all words capitalized, except for\
  prepositions, articles and coordinate conjunctions that do not appear as the first word]

  #doRepeat([#linebreak()], 5)

  by\

  #doRepeat([#linebreak()], 1)

  [Your name as found in official HKUST records, excluding any titles]

  #doRepeat([#linebreak()], 2)

  This is to certify that I have examined the above PhD thesis\
  and have found that it is complete and satisfactory in all respects,\
  and that any and all revisions required by\
  the thesis examination committee have been made.

  #doRepeat([#linebreak()], 5)

  #SignatureLine()

  [name of your thesis supervisor beneath signature line]

  #doRepeat([#linebreak()], 3)

  #SignatureLine()
  [name of your Department/Division/Program Office Head\
  beneath signature line]

  #doRepeat([#linebreak()], 1)

  [Name of Department/Division/Program Office]


  [Date, e.g. 31 August 2015]
  ]

}
