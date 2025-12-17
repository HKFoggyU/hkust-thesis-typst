#import "/template/imports.typ": *
#import "/template/page-style.typ": *

#let blank-page-to = if ust-setup.config.blankpage { "odd" }

#let lof-page(target-kind: image, toc-title: "List of Figures") = {
  [#show: global-style
    #set heading(numbering: none)

    #set page(
      numbering: "i",
    )

    #set align(center)
    // Main text

    #pagebreak(weak: true, to: blank-page-to)

    #invisible-heading(toc-title)

    #heading(outlined: false)[#text(size: font-sizes.title)[#upper(toc-title)]]

    #set align(left)
    // #i-figured.outline(target-kind: target-kind, title: none)
    #outline(title: none, target: figure.where(kind: target-kind))
  ]
}
