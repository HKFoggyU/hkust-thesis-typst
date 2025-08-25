#import "/template/imports.typ": *
#import "/template/page-style.typ": *

#let authorization(ust-setup: ust-setup) = {
  [#show: global-style
    #set heading(numbering: none)

    #set page(
      numbering: "i",
    )

    #let (degreeFull, degreeShort) = set-degree(ust-setup.info.degree)

    #set align(center)
    // Main text

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
