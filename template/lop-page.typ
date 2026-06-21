#import "/template/imports.typ": *
#import "/template/page-style.typ": *

/**************** List of Publications (LoP) ****************/
// No heading is required for LoP because it comes with one already.

= List of Publications <appx-ch-lop>

#set par(leading: linespacing.bibliography, spacing: linespacing.bibliography)

/**************** Journal Publications ****************/
#heading(level: 2, numbering: none)[Journal Publications]
#bibliography(
  ust-setup.info.bib-list-of-pub,
  title: none,
  style: "ieee",
  full: true,
  group: none
)

/**************** Conference Publications ****************/
#heading(level: 2, numbering: none)[Conference Publications]
#bibliography(
  ust-setup.info.bib-list-of-pub, // Please change to another bib file
  title: none,
  style: "ieee",
  full: true,
  group: none
)