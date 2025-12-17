//******** IMPORTS ********//
#import "/template/imports.typ": *
#import "/template/page-style.typ": *


#import "/template/title-page.typ": title-page
#import "/template/abstract-page.typ": abstract-page
#import "/template/authorization-page.typ": authorization-page
#import "/template/signature-page.typ": signature-page
#import "/template/toc-page.typ": toc-page
#import "/template/lof-page.typ": lof-page


//******** CUSTOM FUNCTIONS (if any) ********//
#let EC = [_E. coli_]


//******** SOME TEMPLATE PAGES ********//
#show: global-style
#title-page()
#abstract-page()[
  // Write your abstract text within the square brackets
  You can change the thesis information in the file `mythesis-info.typ`, such as thesis title, degree, author, supervisors, etc:
  ```typst
    #let ust-setup = (
    config: (blankpage: false,),
    info: (
      degree: "PhD",
      title: ("Goodbye", "All of Evangelion"),
      ......
  ```

  The order of these four pages are not supposed to be changed:
  ```typst
    #title-page()
    #abstract-page()[Write your abstract text here.]
    #authorization-page()
    #signature-page()
  ```
  according to the requirements from FYTGS. See:
  #link("https://fytgs.hkust.edu.hk/academics/Academic-Regulations-and-Requirements/Handbook-for-Research-Postgraduate-Studies/guidelines-thesis-preparation")[#text(fill: blue, "RPG handbook website")].
]
#authorization-page()
#signature-page()

#toc-page()
#lof-page(target-kind: image, toc-title: "List of Figures")
#lof-page(target-kind: table, toc-title: "List of Tables")


//******** MAIN TEXT ********//
#show: main-text-style
#include "chapters/chapters.typ"

#EC is a bacteria.


//******** APPENDIX ********//
#show: appendix-style
#include "chapters/appendix.typ"
