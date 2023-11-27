#import "@preview/i-figured:0.2.1": show-equation, show-figure, reset-counters

#let mainmatter(
  // i-figured settings
  show-equation: show-equation,
  show-figure: show-figure,
  reset-counters: reset-counters,
  // 标题字体与字号
  heading-font: "Times New Roman",
  heading-size: (12pt,),
  heading-weight: ("regular",),
  heading-top-vspace: (20pt, 4pt),
  heading-bottom-vspace: (20pt, 8pt),
  heading-pagebreak: (true, false),
  heading-align: (center, auto),
  config: (:),
  ..args,
  it,
) = {

  // 1.2 处理 heading- 开头的其他参数
  let heading-text-args-lists = args.named().pairs()
    .filter((pair) => pair.at(0).starts-with("heading-"))
    .map((pair) => (pair.at(0).slice("heading-".len()), pair.at(1)))

  // 2.  辅助函数
  let array-at(arr, pos) = {
    arr.at(calc.min(pos, arr.len()) - 1)
  }

  // Deal with math equation numbering
  
  // i-figured settings
  show math.equation.where(block: true): it => {show-equation(it, prefix: "eqn:")}
  show figure: show-figure

  // set math.equation(numbering: "(1.1)")
  // set math.equation(numbering: (..nums) => {
  //  locate(loc => {
  //     "(" + str(counter(heading).at(loc).at(0)) + "." + str(nums.pos().first()) + ")"
  //   })
  // },)

  
  // 4.  处理标题
  // 4.1 设置标题的 Numbering

  // set heading(numbering: numbering)
  // 4.2 设置字体字号并加入假段落模拟首行缩进
  // set heading(numbering: "1.1", supplement: "")
  set heading(numbering: "1.1", supplement: (elem) => {
    if elem.level == 1 {
      [Chapter]
    } else {
      [Section]
    }
  })
  // show heading: reset-counters(equations: true)
  show heading: it => {
    set text(
      font: "Times New Roman",
      size: 18pt,
    )
    v(array-at(heading-top-vspace, it.level))
    if (it.level == 1) {
      [CHAPTER #counter(heading).display() \ #it.body]
      // it
    } else {
      it
    }
    v(array-at(heading-bottom-vspace, it.level))
  }

  // 4.3 标题居中与自动换页
  show heading: it => {
    if (array-at(heading-pagebreak, it.level)) {
      // 如果打上了 no-auto-pagebreak 标签，则不自动换页
      if ("label" not in it.fields() or str(it.label) != "no-auto-pagebreak") {
        pagebreak(weak: true, to: if config.twoside { "odd" })
      }
    }
    if (array-at(heading-align, it.level) != auto) {
      set align(array-at(heading-align, it.level))
      it
    } else {
      it
    }
  }

  show heading: it => {reset-counters(it, equations: true)}

  // Main matter page numbering
  set page(numbering: "1")
  counter(page).update(1)
  it
}