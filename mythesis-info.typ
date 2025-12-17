// thesis information
#let ust-setup = (
  config: (
    blankpage: false, // set as <true> to add blank pages for printed version
  ),
  info: (
    degree: "PhD", // only "PhD" or "MPhil"
    title: ("Goodbye", "All of Evangelion"),
    keywords: ("Neon", "Genesis", "Evangelion"),
    author: "Cruel Angel",
    program: "Human Instrumentality Project",
    department: "Department of NERV", // Or "Division", check SIS
    school: "School of SEELE",
    supervisors: (
      main: (
        name: "Prof. Adams",
        role: "Thesis Supervisor",
      ),
      // co: (
      //   name: "Prof. Lilith",
      //   role: "Thesis Co-supervisor",
      // ),
    ),
    department-head: (
      name: "Prof. Ikari Yui",
      position: "Head of Department",
    ),
    submit-date: (
      date: "02",
      month: "November",
      year: "2025",
    ),
    defend-date: (
      date: "31",
      month: "October",
      year: "2025",
    ),
    city: "Geo Front",
    // bib-filename: "mythesis.bib",
    // committee: (
    //   (
    //     name: "Prof. AAA (Chairperson)",
    //     department: "Department of Electronic and Computer Engineering",
    //   ),
    //   (
    //     name: "Prof. BBB (Supervisor)",
    //     department: "Department of ECE",
    //   ),
    //   (
    //     name: "Prof. CCC (Co-Supervisor)",
    //     department: "Department of ISD",
    //   ),
    //   (
    //     name: "Prof. DDD",
    //     department: "Division of LIFS",
    //   ),
    //   (
    //     name: "Prof. EEE",
    //     department: "Department of Physics",
    //   ),
    //   (
    //     name: "Prof. FFF (External Examiner)",
    //     department: "Department of EE, University of UU",
    //   ),
    // ),
  ),
)