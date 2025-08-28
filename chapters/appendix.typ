#import "/template/imports.typ": *
#import "/template/page-style.typ": *

#show: appendix-style
= List of Publications

#lorem(20)

#context {counter(heading).get()}

= Circuits Design

#context {counter(heading).get()}

#lorem(20)

#figure(
  rect(width: 20pt, height: 20pt, fill: red),
  caption: [A red square. #lorem(20)],
)

== some words
#lorem(20)

#context {counter(heading).get()}

=== other words
#lorem(50)

$ Delta E = m c^2 $ <AppEq>

==== one detail
#lorem(50)

#context {counter(heading).get()}

==== another detail
#lorem(50)