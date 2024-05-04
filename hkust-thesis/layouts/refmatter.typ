#import "../imports.typ": *


#let refmatter(
  // i-figured settings
  show-equation: i-figured.show-equation,
  show-figure: i-figured.show-figure,
  reset-counters: i-figured.reset-counters,
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

  // 4.  处理标题
  // 4.2 设置字体字号并加入假段落模拟首行缩进
  set heading(numbering: none, supplement: "")
  // show heading: reset-counters(equations: true)
  show heading: it => {
    set text(
      font: constants.font-names.title,
      size: constants.font-sizes.title,
    )
    v(array-at(heading-top-vspace, it.level))
    [#upper(it.body)]
    do-repeat([#linebreak()], 2)
    // v(array-at(heading-bottom-vspace, it.level))
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

  // ref matter page numbering
  set page(numbering: "1")
  it
}