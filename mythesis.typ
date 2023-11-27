#import "@preview/physica:0.8.1": *

#import "hkust-thesis/template.typ": documentclass
#import "hkust-thesis/utils/utils.typ": clearDoublePage

#let (
  doc,cover-page,authorization,signature-page,toc-page,mainmatter,
) = documentclass(
  config: (
    twoside: true,
  ),
  info: (
    degree: "PhD",
    title: ("Triggering", "the Forth Impact"),
    keywords: ("Neon", "Genesis", "Evangelion"),
    author: ("Cruel", "Angel"),
    class-of: "2024",
    student-id: "12345678",
    major: "XXX Major",
    program: "Human Instrumentality Project",
    department: "Department of NERV",
    school: "School of SEELE",
    supervisors: (
      main: "Prof. Adams",
      co: "Prof. Lilith",
    ),
    department-head: (
      name: "Prof. Ikari Yui",
      position: "Head of Department",
    ),
    committee: (
      (
        name: "Prof. AAA (Chairperson)",
        department: "Department of Electronic and Computer Engineering"
      ),
      (
        name: "Prof. BBB (Supervisor)",
        department: "Department of ECE"
      ),
      (
        name: "Prof. CCC (Co-Supervisor)",
        department: "Department of ISD"
      ),
      (
        name: "Prof. DDD",
        department: "Division of LIFS"
      ),
      (
        name: "Prof. EEE",
        department: "Department of Physics"
      ),
      (
        name: "Prof. FFF (External Examiner)",
        department: "Department of EE, University of UU"
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
  ),
)

#show: doc

#cover-page()

#authorization()

#signature-page()

#toc-page()



// Main matter

#show: mainmatter

= INTRODUCTION <ch-introduction>

== Background <sec-background>

#lorem(100)

$ Delta E = m c^2 $ <EinsteinEM>

#lorem(40)

$ i hbar pdv(, t) ket(Psi(hat(r),t)) = [-hbar^2/(2m) nabla^2 + V] ket(Psi(hat(r),t)) = hat(H) ket(Psi(hat(r), t)) $ <Schrodinger>

#lorem(40)

#lorem(100)

== Recent Advancement

#lorem(100)

#figure(
  rect(width: 20pt, height: 20pt, fill: blue),
  caption: "A red square.",
) <blueSquare>

#lorem(20)

@fig:blueSquare is a blue square.

#lorem(100)

= THEORY

#lorem(30)

As discussed in 
@ch-introduction, @ch-introduction, XXX.

#lorem(50)

Some inline equation $E^2 = p^2 + m^2$ and $E^2 = p^2 + m^2$ show something.

#lorem(20)

$ E^2 = p^2 + m^2 $ <ParPhy>

#lorem(20)

@eqn:EinsteinEM and @eqn:ParPhy are both the energy and mass relation.

@eqn:Schrodinger is the Schrödinger equation.

== Laser intreaction with matter

#lorem(60)

#lorem(50)

=== laser induced forward transfer (LIFT)

#lorem(50)

#figure(
  rect(width: 20pt, height: 20pt, fill: red),
  caption: "A red square.",
) <redSquare>

#lorem(20)

@fig:redSquare is a red square.

=== laser induced backward transfer (LIBT)

#lorem(50)

==== LIBT on Cu and glass

#lorem(50)

= EXPERIMENT

#lorem(60)

#lorem(50)

== Laser induced graphene (LIG)

#lorem(80)

#lorem(50)

= CONCLUSION

#lorem(50)

#lorem(100)