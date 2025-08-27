#import "/template/imports.typ": *
#import "/template/page-style.typ": *

#let signature-page(ust-setup: ust-setup) = {
  [#show: global-style
    #set heading(numbering: none)

    #set page(
      numbering: "i",
    )

    #let title-str = ust-setup.info.title.join(" ")

    #let (degreeFull, degreeShort) = set-degree(ust-setup.info.degree)

    #set align(center)
    // Main text

    #pagebreak(weak: true, to: if ust-setup.config.blankpage { "odd" })

    #invisible-heading("Signature Page")

    #heading(outlined: false)[#text(size: font-sizes.title)[#ust-setup.info.title.join("\n")]]

    #do-repeat([#linebreak()], 5)

    by

    #do-repeat([#linebreak()], 1)

    #ust-setup.info.author

    #do-repeat([#linebreak()], 2)

    This is to certify that I have examined the above #degreeShort thesis\
    and have found that it is complete and satisfactory in all respects,\
    and that any and all revisions required by\
    the thesis examination committee have been made.

    #do-repeat([#linebreak()], 4)

    #for (person, content) in ust-setup.info.supervisors {
      signature-line()
      [#content.name, #content.role]
      do-repeat([#linebreak()], 3)
    }

    #signature-line()
    #ust-setup.info.department-head.name, #ust-setup.info.department-head.position

    #do-repeat([#linebreak()], 1)

    #ust-setup.info.department

    #ust-setup.info.submit-date.date #ust-setup.info.submit-date.month #ust-setup.info.submit-date.year
  ]
}
