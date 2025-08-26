#import "hkust-thesis/imports.typ": *

#import "hkust-thesis/template.typ": documentclass

#show: alexandria(prefix: "x-", read: path => read(path))


#let (
  doc,
  cover-page,
  authorization,
  signature-page,
  abstract-page,
  toc-page,
  lof-page,
  lot-page,
  mainmatter,
  refmatter,
  reference-body,
  postmatter,
  appendix,
) = documentclass(
  config: (
    twoside: false,
  ),
  info: (
    degree: "PhD",
    title: ("Triggering", "the Forth Impact"),
    keywords: ("Neon", "Genesis", "Evangelion"),
    author: "Cruel Angel",
    program: "Human Instrumentality Project",
    department: "Department of NERV",
    school: "School of SEELE",
    supervisors: (
      main: (
        name: "Prof. Adams",
        role: "Thesis Supervisor",
      ),
      co: (
        name: "Prof. Lilith",
        role: "Thesis Co-supervisor",
      ),
    ),
    department-head: (
      name: "Prof. Ikari Yui",
      position: "Head of Department",
    ),
    committee: (
      (
        name: "Prof. AAA (Chairperson)",
        department: "Department of Electronic and Computer Engineering",
      ),
      (
        name: "Prof. BBB (Supervisor)",
        department: "Department of ECE",
      ),
      (
        name: "Prof. CCC (Co-Supervisor)",
        department: "Department of ISD",
      ),
      (
        name: "Prof. DDD",
        department: "Division of LIFS",
      ),
      (
        name: "Prof. EEE",
        department: "Department of Physics",
      ),
      (
        name: "Prof. FFF (External Examiner)",
        department: "Department of EE, University of UU",
      ),
    ),
    submit-date: (
      date: "13",
      month: "August",
      year: "2021",
    ),
    defend-date: (
      date: "8",
      month: "March",
      year: "2021",
    ),
    city: "Geo Front",
    bib-filename: "mythesis.bib",
  ),
)

/* ============================================================ */

#show: doc

#cover-page()

// Abstract
#[
  #show: abstract-page
  // Please write your abstract text *after* this line.

  #lorem(300)

  // Please write your abstract text *before* this line.
]

#authorization()

#signature-page()

#toc-page()

#lof-page()

#lot-page()

/* ============================================================ */

/* ============================================================ */

// Main matter
#[
  #show: mainmatter
  // Please write your main text *after* this line.

  = Introduction <ch-introduction>

  == Background <sec-background>

  #lorem(100)

  $ Delta E = m c^2 $ <EinsteinEM>

  #lorem(40)

  $
    i hbar pdv(, t) ket(Psi(hat(r), t)) = [-hbar^2/(2m) nabla^2 + V] ket(Psi(hat(r), t)) = hat(H) ket(Psi(hat(r), t))
  $ <Schrodinger>

  #lorem(40)

  @eqn-EinsteinEM and @eqn-ParPhy are both the energy and mass relation.

  @eqn-Schrodinger is the Schrödinger equation.

  #lorem(100)

  == Recent Advancement

  #lorem(100)

  #figure(
    rect(width: 20pt, height: 20pt, fill: blue),
    caption: [A blue square. #lorem(40)],
  ) <blueSquare>

  #lorem(20)

  @fig-blueSquare is a blue square.

  #lorem(100)

  = Theory <ch-theory>

  #lorem(30)

  As discussed in @ch-introduction, @ch-theory, @sec-background, @sec-laser-intreaction-with-matter, @sec-LIFT, XXX.

  Some inline equation $E^2 = p^2 + m^2$ and $E^2 = p^2 + m^2$ show something.

  $ E^2 = p^2 + m^2 $ <ParPhy>

  == Laser intreaction with matter <sec-laser-intreaction-with-matter>

  #lorem(60)

  #lorem(50)

  === laser induced forward transfer (LIFT) <sec-LIFT>

  #lorem(50)

  #figure(
    rect(width: 20pt, height: 20pt, fill: red),
    caption: [A red square. #lorem(20)],
  ) <redSquare>

  #lorem(20)

  #figure(
    rect(width: 20pt, height: 20pt, fill: red),
    caption: [A red square. #lorem(20)],
  ) <redSquare2>

  #lorem(20)

  @fig-redSquare is a red square.

  === laser induced backward transfer (LIBT) <sec-LIBT>

  #lorem(50)

  ==== LIBT on Cu and glass

  #lorem(50)

  = Experiment

  #lorem(60)

  #figure(
    rect(width: 20pt, height: 20pt, fill: red),
    caption: [A red square. #lorem(20)],
  ) <redSquare3>

  #lorem(20)

  #lorem(50)

  == Laser induced graphene (LIG)

  #lorem(80)

  #figure(
    rect(width: 20pt, height: 20pt, fill: red),
    caption: [A red square. #lorem(20)],
  ) <redSquare4>

  #lorem(20)

  #figure(
    rect(width: 20pt, height: 20pt, fill: red),
    caption: [A red square. #lorem(20)],
  )

  #lorem(20)

  #figure(
    rect(width: 20pt, height: 20pt, fill: red),
    caption: [A red square. #lorem(20)],
  )

  #lorem(20)

  #figure(
    rect(width: 20pt, height: 20pt, fill: red),
    caption: [A red square. #lorem(20)],
  )

  #lorem(20)

  #figure(
    rect(width: 20pt, height: 20pt, fill: red),
    caption: [A red square. #lorem(20)],
  )

  #lorem(20)

  #figure(
    rect(width: 20pt, height: 20pt, fill: red),
    caption: [A red square. #lorem(20)],
  )

  #lorem(20)

  #figure(
    rect(width: 20pt, height: 20pt, fill: red),
    caption: [A red square. #lorem(20)],
  )

  #lorem(20)

  #figure(
    rect(width: 20pt, height: 20pt, fill: red),
    caption: [A red square. #lorem(20)],
  )

  #lorem(20)

  #figure(
    rect(width: 20pt, height: 20pt, fill: red),
    caption: [A red square. #lorem(20)],
  )

  #lorem(20)

  #figure(
    rect(width: 20pt, height: 20pt, fill: red),
    caption: [A red square. #lorem(20)],
  )

  #lorem(20)

  #lorem(50)

  = Conclusion

  #lorem(50)

  // I cite some papers@andren_Microscopicmetavehicles_2021 @dong_Programmableheating_2022 @duy_Laserinducedgraphene_2018.

  #lorem(100)

  // Please write your main text *before* this line.
]

/* ============================================================ */

// Ref matter: Bibliography settings
#[
  #show: refmatter
  = References
  // #reference-body(
  //   bib-filename: "mythesis.bib",
  //   style: "institute-of-electrical-and-electronics-engineers",
  //   full: true,
  // )

  @x-dong_Programmableheating_2022

  #bibliographyx(
    "mythesis.bib",
    title: "References",
    style: "institute-of-electrical-and-electronics-engineers",
  )

]

/* ============================================================ */

#[
  #show: alexandria(prefix: "y-", read: path => read(path))
  #show: appendix
  // = List of Publications

  #bibliographyx(
    "mypublications.bib",
    prefix: "y-",
    title: "List of Publications",
    style: "institute-of-electrical-and-electronics-engineers",
    full: true,
  )

  // #reference-body(
  //   bib-filename: "mypublications.bib",
  //   style: "institute-of-electrical-and-electronics-engineers",
  //   full: true,
  // )


  // *Known issue*: Typst does not support multiple bib files currently. We cannot simply feed two bib files into typst and get two bibliography pages at once. Hope it will be solved in future releases of typst!

  = FYTGS requirements of thesis preparation

  == TEC
  == Writing
  == Formatting

  === font

  === page

  = Laser parameters

  = Electronic circuits

  #figure(
    rect(width: 20pt, height: 20pt, fill: red),
    caption: [A red square. #lorem(20)],
  )
]
