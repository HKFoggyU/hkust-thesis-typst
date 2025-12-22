#import "/template/imports.typ": *
#import "/template/page-style.typ": *

#let title-page(ust-setup: ust-setup) = {
  [#show: global-style
    #set heading(numbering: none)

    #set page(
      numbering: "i",
    )

    #let (degreeFull, degreeShort, degreeType) = set-degree(ust-setup.info.degree)

    #set align(center)

    #invisible-heading("Title Page")

    #heading(outlined: false)[#text(size: font-sizes.title)[#ust-setup.info.title.join("\n")]]

    #do-repeat([#linebreak()], 5)

    by

    #do-repeat([#linebreak()], 1)

    #ust-setup.info.author

    #do-repeat([#linebreak()], 5)

    A Thesis Submitted to\
    The Hong Kong University of Science and Technology\
    in Partial Fulfillment of the Requirements for\
    the Degree of #degreeFull of #degreeType\
    in #ust-setup.info.program

    #do-repeat([#linebreak()], 3)

    #ust-setup.info.submit-date.month #ust-setup.info.submit-date.year, #ust-setup.info.city]
}

#let abstract-page(ust-setup: ust-setup, it) = {
  [#show: global-style
    #set heading(numbering: none)

    #set page(
      numbering: "i",
    )

    #let (degreeFull, degreeShort, degreeType) = set-degree(ust-setup.info.degree)

    #set align(center)

    #pagebreak(weak: true, to: if ust-setup.config.blankpage { "odd" })

    #invisible-heading("Abstract")

    #heading(outlined: false)[#text(size: font-sizes.title)[#ust-setup.info.title.join("\n")]]

    #do-repeat([#linebreak()], 1)

    by #ust-setup.info.author

    #do-repeat([#linebreak()], 2)

    #ust-setup.info.department

    #do-repeat([#linebreak()], 1)

    The Hong Kong University of Science and Technology

    #do-repeat([#linebreak()], 2)

    Abstract

    #do-repeat([#linebreak()], 1)

    // abstract text
    #set align(left)
    #set par(
      leading: linespacing.abstract,
    )
    #it
  ]
}

#let authorization-page(ust-setup: ust-setup) = {
  [#show: global-style
    #set heading(numbering: none)

    #set page(
      numbering: "i",
    )

    #let (degreeFull, degreeShort, degreeType) = set-degree(ust-setup.info.degree)

    #set align(center)

    #pagebreak(weak: true, to: if ust-setup.config.blankpage { "odd" })

    #invisible-heading("Authorization Page")

    #heading(outlined: false)[
      #text(
        size: font-sizes.title,
        underline[Authorization],
      )
    ]

    #set par(first-line-indent: 2em)

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

    #ust-setup.info.author

    #do-repeat([#linebreak()], 1)

    #ust-setup.info.submit-date.date #ust-setup.info.submit-date.month #ust-setup.info.submit-date.year
  ]
}

#let signature-page(ust-setup: ust-setup) = {
  [#show: global-style
    #set heading(numbering: none)

    #set page(
      numbering: "i",
    )

    #let title-str = ust-setup.info.title.join(" ")

    #let (degreeFull, degreeShort, degreeType) = set-degree(ust-setup.info.degree)

    #set align(center)

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

#let acknowledgment-page(ust-setup: ust-setup, it) = {
  [#show: global-style
    #set heading(numbering: none)

    #set page(
      numbering: "i",
    )

    #let (degreeFull, degreeShort, degreeType) = set-degree(ust-setup.info.degree)

    #set align(center)

    #pagebreak(weak: true, to: if ust-setup.config.blankpage { "odd" })

    #invisible-heading("Acknowledgments")

    #heading(outlined: false)[Acknowledgments]

    #do-repeat([#linebreak()], 1)

    // acknowledgments text
    #set align(left)
    #it
  ]
}

#let toc-page() = {
  [#show: global-style
    #set heading(numbering: none)

    #set page(
      numbering: "i",
    )

    #set align(center)

    #pagebreak(weak: true, to: blank-page-to)

    #invisible-heading("Table of Contents")

    #heading(outlined: false)[#text(size: font-sizes.title)[TABLE OF CONTENTS]]

    #set align(left)
    #outline(title: none, depth: 3)
  ]
}

#let lof-page(target-kind: image, toc-title: "List of Figures") = {
  [#show: global-style
    #set heading(numbering: none)

    #set page(
      numbering: "i",
    )

    #set align(center)

    #pagebreak(weak: true, to: blank-page-to)

    #invisible-heading(toc-title)

    #heading(outlined: false)[#text(size: font-sizes.title)[#upper(toc-title)]]

    #set align(left)
    #outline(title: none, target: figure.where(kind: target-kind))
  ]
}
