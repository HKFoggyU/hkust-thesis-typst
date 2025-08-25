#import "/template/imports.typ": *
#import "/template/page-style.typ": *

#let abstract(ust-setup: ust-setup, it) = {
  [#show: global-style
    #set heading(numbering: none)

    #set page(
      numbering: "i",
    )

    #let (degreeFull, degreeShort) = set-degree(ust-setup.info.degree)

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
      leading: abstract-linespacing,
    )
    #it
  ]
}
