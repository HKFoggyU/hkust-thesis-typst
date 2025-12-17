#import "/template/imports.typ": *
#import "/template/page-style.typ": *


/**************** List of Publications (LoP) ****************/
// No heading is required for LoP because it comes with one already.
#show: alexandria(prefix: "LoP-", read: path => read(path))
= List of Publications <appx-ch-lop>
#bibliographyx(
  ust-setup.info.bib-maintext,
  prefix: "LoP-",
  title: none,
  style: "ieee",
  full: true,
)