#import "/template/imports.typ": *
#import "/template/page-style.typ": *

#let signature(ust-setup: ust-setup) = {
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

    #v(2em)

    #ust-setup.info.author

    #v(5em)

    A Thesis Submitted to\
    The Hong Kong University of Science and Technology\
    in Partial Fulfillment of the Requirements for\
    the Degree of #degreeFull of Philosophy\
    in #ust-setup.info.program

    #do-repeat([#linebreak()], 3)

    #ust-setup.info.submit-date.month #ust-setup.info.submit-date.year, #ust-setup.info.city]
}
