#import "../imports.typ": *

#import "../utils/invisible-heading.typ": invisible-heading

#let signature-page(
  config: (:),
  info: (:),
) = {
  info = info

  let (degreeFull, degreeShort) = set-degree(info.degree)

  set align(center)
  [
  #pagebreak(weak: true, to: if config.twoside { "odd" })

  #invisible-heading("Signature Page")
  #heading(outlined: false)[#text(size: constants.font-sizes.title)[#info.title.join("\n")]]

  #do-repeat([#linebreak()], 5)

  by\

  #do-repeat([#linebreak()], 1)

  #info.author

  #do-repeat([#linebreak()], 2)

  This is to certify that I have examined the above #degreeShort thesis\
  and have found that it is complete and satisfactory in all respects,\
  and that any and all revisions required by\
  the thesis examination committee have been made.

  #do-repeat([#linebreak()], 4)

  #for (person, content) in info.supervisors {
    signature-line()
    [#content.name, #content.role]
    do-repeat([#linebreak()], 3)
  }

  #signature-line()
  #info.department-head.name, #info.department-head.position

  #do-repeat([#linebreak()], 1)

  #info.department

  #info.submit-date.date #info.submit-date.month #info.submit-date.year
  ]

}
