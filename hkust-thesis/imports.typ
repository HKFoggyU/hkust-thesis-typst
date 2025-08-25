#import "@preview/physica:0.8.1": *
#import "@preview/i-figured:0.2.4"
#import "@preview/anti-matter:0.0.2": anti-front-end
#import "@preview/alexandria:0.2.1": *

#import "utils/utils.typ": *
// #import "utils/constants.typ" as constants

#let ust-setup = (
  config: (
    blankpage: false,
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