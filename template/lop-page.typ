#import "/template/imports.typ": *
#import "/template/page-style.typ": *

/**************** List of Publications (LoP) ****************/
// No heading is required for LoP because it comes with one already.

= List of Publications <appx-ch-lop>

#set par(leading: linespacing.bibliography, spacing: linespacing.bibliography)

#show: alexandria(prefix: "LoP-", read: path => read(path))
#heading(level: 2, numbering: none)[Journal Publications]
#bibliographyx(
  ust-setup.info.bib-list-of-pub,
  prefix: "LoP-",
  title: none,
  style: "ieee",
  full: true,
)

// #show: alexandria(prefix: "ConfPub-", read: path => read(path))
// #heading(level: 2, numbering: none)[Conference Publications]
// #bibliographyx(
//   "XXX-conf-pub.bib",
//   prefix: "ConfPub-",
//   title: none,
//   style: "ieee",
//   full: true,
// )