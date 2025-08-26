#import "/template/imports.typ": *
#import "/template/page-style.typ": *

#let toc-page(ust-setup: ust-setup) = {
  [#show: global-style
    #set heading(numbering: none)

    #set page(
      numbering: "i",
    )

    #set align(center)
    // Main text

    #pagebreak(weak: true, to: if ust-setup.config.blankpage { "odd" })

    #invisible-heading("Table of Contents")

    #heading(outlined: false)[#text(size: font-sizes.title)[TABLE OF CONTENTS]]

    #outline(title: none)
  ]
}
