//**************** IMPORTS ****************//
#import "/template/imports.typ": *
#import "/template/page-style.typ": *
#import "/template/template-pages.typ": *


//**************** TEMPLATE PAGES ****************//
#show: global-style
#title-page()
#abstract-page()[#include "/chapters/abstract-text.typ"]
#authorization-page()
#signature-page()
#toc-page()
#lof-page(target-kind: image, toc-title: "List of Figures")
#lof-page(target-kind: table, toc-title: "List of Tables")


//**************** MAIN TEXT ****************//
#show: main-text-style
#include "/chapters/maintext.typ"

//**************** APPENDIX ****************//
#show: appendix-style
#include "/template/lop-page.typ"

#include "chapters/appendix-another.typ"  //if any
