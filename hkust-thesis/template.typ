// Repo: https://github.com/HKFoggyU/hkust-thesis-typst
// Author: HKFoggyU
// License: LPPL-1.3c

// Import

#import "layouts/doc.typ": doc
#import "layouts/mainmatter.typ": mainmatter

#import "templates/cover-page.typ": cover-page
#import "templates/authorization.typ": authorization
#import "templates/signature-page.typ": signature-page
#import "templates/toc-page.typ": toc-page

// Implement

#let documentclass(
  config: (:),
  info: (:),
) = {
  config = (
    twoside: true,
  ) + config
  info = ( // Default information
    degree: "PhD",
    title: ("Triggering", "the Forth Impact"),
    keywords: ("Neon", "Genesis", "Evangelion"),
    author: "Cruel Angel",
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
        name: "Prof. CCC (Co-supervisor)",
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
  ) + info

  (
    doc: (..args) => {
      doc(
        ..args,
        config: config + args.named().at("config", default: (:)),
        info: info + args.named().at("info", default: (:)),
      )
    },
    cover-page: (..args) => {
      cover-page(
        ..args,
        config: config + args.named().at("config", default: (:)),
        info: info + args.named().at("info", default: (:)),
      )
    },
    authorization: (..args) => {
      authorization(
        ..args,
        config: config + args.named().at("config", default: (:)),
        info: info + args.named().at("info", default: (:)),
      )
    },
    signature-page: (..args) => {
      signature-page(
        ..args,
        config: config + args.named().at("config", default: (:)),
        info: info + args.named().at("info", default: (:)),
      )
    },
    toc-page: (..args) => {
      toc-page(
        ..args,
        config: config + args.named().at("config", default: (:)),
        info: info + args.named().at("info", default: (:)),
      )
    },
    mainmatter: (..args) => {
      mainmatter(
        ..args,
        config: config + args.named().at("config", default: (:)),
      )
    },
  )
}