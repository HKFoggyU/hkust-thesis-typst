#import "/template/imports.typ": *
#import "/template/page-style.typ": *

#let blank-page-to = if ust-setup.config.blankpage { "odd" }

#let lot-page() = {
  [#show: global-style
    #set heading(numbering: none)

    #set page(
      numbering: "i",
    )

    #set align(center)
    // Main text

    #pagebreak(weak: true, to: blank-page-to)

    #invisible-heading("Table of Contents")

    #heading(outlined: false)[#text(size: font-sizes.title)[LIST OF FIGURES]]

    #set align(left)
    #i-figured.outline(target-kind: image, title: none)
  ]
}
