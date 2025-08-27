#import "/template/imports.typ": *
#import "/template/page-style.typ": *


#import "/template/title-page.typ": title-page
#import "/template/abstract-page.typ": abstract-page
#import "/template/authorization-page.typ": authorization-page
#import "/template/signature-page.typ": signature-page
#import "/template/toc-page.typ": toc-page

#show: global-style

#title-page()
#abstract-page()[
  #lorem(300)
]
#authorization-page()
#signature-page()

#toc-page()

/******** MAIN TEXT ********/

#show: main-text-style
#include "chapters/chapters.typ"


/******** APPENDIX ********/
#include "chapters/appendix.typ"