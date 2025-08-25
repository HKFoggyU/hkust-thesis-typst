#import "/template/imports.typ": *
#import "/template/page-style.typ": *

#let title-cover(ust-setup: ust-setup) = {
  [#show: global-style
    #set heading(numbering: none)

    #set page(
      numbering: "i",
    )

    #let (degreeFull, degreeShort) = set-degree(ust-setup.info.degree)

    #set align(center)

    #pagebreak(weak: true, to: if ust-setup.config.blankpage { "odd" })

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
    the Degree of #degreeFull of Philosophy\
    in #ust-setup.info.program

    #do-repeat([#linebreak()], 3)

    #ust-setup.info.submit-date.month #ust-setup.info.submit-date.year, #ust-setup.info.city]
}
