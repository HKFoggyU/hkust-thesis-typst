#import "/template/imports.typ": *
#import "/template/page-style.typ": *
#show: alexandria(prefix: "bib-", read: path => read(path))

//**************** USER FUNCTIONS (if any) ****************//


//**************** MAIN TEXT ****************//
= User Manual <ch-manual>

*中文版见@ch-manual-cn*


== Introduction to Typst <sec-intro-typst>

You can learn Typst easily from the Official tutorial: #link("https://typst.app/docs/tutorial/", text(fill: blue, "https://typst.app/docs/tutorial/"))

If you are familiar with #LaTeX, you can further read the migration guides: #link("https://typst.app/docs/guides/for-latex-users/", text(fill: blue, "https://typst.app/docs/guides/for-latex-users/"))

If you never used Typst or #LaTeX, then congratulations, you will learn Typst even faster because you don't have to battle with #LaTeX habitats.

== Introduction to this template <sec-intro-thesis>

Generally, there is nothing special with this template, and you can write the thesis immediately.

However, I will introduce a few highlights in this thesis template that might be essential.

=== How to start using this template?

I strongly recommend you use Visual Studio Code with its `Tinymist Typst` extension as the editor. It requires less (actually, #sym.arrow.r 0) effort of configuration.

+ Download and install #link("https://code.visualstudio.com/", text(fill: blue, "Visual Studio Code")), and install the extension #link("https://marketplace.visualstudio.com/items?itemName=myriad-dreamin.tinymist", text(fill: blue, "Tinymist Typst")).
+ Download this thesis template from #link("https://github.com/HKFoggyU/hkust-thesis-typst/releases/latest", text(fill: blue, "GitHub Release zip file")), unzip it.
+ Open the unzipped folder with Visual Studio Code.
+ Open the file `mythesis.typ`, click the "Preview" on top.
+ Read the example chapters and write.

=== Basic information for thesis

You can change the thesis information in the file `mythesis-info.typ`, such as thesis title, degree, author, supervisors, etc:
```typst
  #let ust-setup = (
  config: (blankpage: false,),
  info: (
    degree: "PhD",
    title: ("Goodbye", "All of Evangelion"),
    ......
```

=== Links and references <sec-links>

- Refer to labels in text (links): As discussed in @ch-manual, @sec-links, @appx-ch-lop.

- Links to display equation: @eq-ParPhy tells the mass-energy relationship.
$ E^2 = p^2 + m^2 $ <eq-ParPhy>
where a space exists between `$$` and equation body: `$ E^2 = p^2 + m^2 $`.

- Links to external URLs: hkust-thesis-typst is prepared according to #link("https://fytgs.hkust.edu.hk/academics/Academic-Regulations-and-Requirements/Handbook-for-Research-Postgraduate-Studies/guidelines-thesis-preparation")[#text(fill: blue, "RPG handbook")].

- Links to references (bibliography): Cite some papers: @bib-dong_Programmableheating_2022@bib-andren_Microscopicmetavehicles_2021. Or, explicitly call the `cite` command: #cite(<bib-ZhuAdv.Mater.2025>)

 *Attention*: Currently Typst does not support multiple bibliographies. However, in a thesis, at least two bibliographies are required: the "*References*" and the "*List of Publications*".

 Therefore, this template uses a third-party package called `alexandria` to implement dual-bibliography function. When inserting a cite key from the `bib` file, for example:
 ```bib
   @article{ZhuAdv.Mater.2025,
     title = {Mesoporous Nanogel Sprays as Universal Evaporation Interface Modifiers for Boosting Water-Cluster Evaporation},
     author = {Zhu, Haiyun and Yang, Junsheng and Li, Chengcheng and Zhong, Yajie and Tian, Xinlong and Zhang, Mingxin and Huang, Wei},
     date = {2025-03-11},
     journaltitle = {Advanced Materials},
     volume = {n/a},
     number = {n/a},
     pages = {2419243},
     doi = {10.1002/adma.202419243},
   }
 ```

you need to add "`bib-`" to the cite key as the prefix: "`@bib-ZhuAdv.Mater.2025`" to let the package successfully recognize the instered citation.

=== Figures and Tables

@fig-blue-square is a figure with very long caption.

#figure(
  rect(width: 20pt, height: 20pt, fill: blue),
  caption: [A blue square. #lorem(20)],
) <fig-blue-square>

@table-exp is an example three-line-table:

#figure(
  table(
    columns: 2,
    stroke: none,
    align: (left, center),

    toprule,
    table.header([Name], [Made public]),
    midrule,

    [Typst], [2023],
    [LaTeX], [1984],
    [TeX], [1978],

    bottomrule,
  ),
  caption: figure.caption(
    position: top,
    [An example table.],
  ),
) <table-exp>

Noted that `table` is also wrapped in a `figure` environment. So it is the same for `algorithms`, if any.


= 用户手册 <ch-manual-cn>

== 介绍Typst <sec-intro-typst-cn>

#text(fill: gray)[不同于#LaTeX\需要`xelatex`引擎和字体配置宏包，在Typst中，我们可以很方便地使用中文，就像在Microsoft Word中一样，只需要指定CJK字体即可。]

你可以从官方教程轻松入门Typst：#link("https://
typst.app/docs/tutorial/", text(fill: blue, "https://typst.app/docs/tutorial/"))

如果你熟悉#LaTeX，你可以继续阅读官方的迁移指南：#link("https://typst.app/docs/guides/for-latex-users/", text(fill: blue, "https://typst.app/docs/guides/for-latex-users/"))

如果你从未通过Typst或#LaTeX\，那么恭喜你，你会学习得更快，因为你不用考虑之前的#LaTeX\习惯。

== 介绍本模板 <sec-intro-thesis-cn>

一般地，本模板并无任何特殊之处，你可以立即开始写作毕业论文。

但是，我会介绍一些可能比较重要的亮点。

=== 如何开始使用本模板？

我强烈建议使用Visual Studio Code配合它的插件`Tinymist Typst`作为编辑器。它需要非常少(实际上, #sym.arrow.r 0)精力去配置。

+ 下载安装#link("https://code.visualstudio.com/", text(fill: blue, "Visual Studio Code"))，并安装#link("https://marketplace.visualstudio.com/items?itemName=myriad-dreamin.tinymist", text(fill: blue, "Tinymist Typst"))插件
+ 下载本模板的#link("https://github.com/HKFoggyU/hkust-thesis-typst/releases/latest", text(fill: blue, "GitHub Release zip压缩包"))，解压
+ 用Visual Studio Code打开解压后的文件夹
+ 打开文件`mythesis.typ`，点击上方的“预览”
+ 读示例章节，然后开始写作

=== 毕业论文的基本信息

你可以在这个文件`mythesis-info.typ`中修改毕业论文的关键信息，比如标题、学位、作者、导师等等：
```typst
  #let ust-setup = (
  config: (blankpage: false,),
  info: (
    degree: "PhD",
    title: ("Goodbye", "All of Evangelion"),
    ......
```

=== 链接和引文 <sec-links-cn>

- 指向文本中的标签(链接): As discussed in @ch-manual-cn, @sec-links-cn, @appx-ch-lop.

- 指向行间公式: @eq-ParPhy-cn tells the mass-energy relationship.
$ E^2 = p^2 + m^2 $ <eq-ParPhy-cn>
行间公式的`$$`和公式主体有一个空格：`$ E^2 = p^2 + m^2 $`

- 指向外部URLs: hkust-thesis-typst是按照#link("https://fytgs.hkust.edu.hk/academics/Academic-Regulations-and-Requirements/Handbook-for-Research-Postgraduate-Studies/guidelines-thesis-preparation")[#text(fill: blue, "RPG handbook")]准备的.

- 指向引文(参考文献): 引用一些文献: @bib-dong_Programmableheating_2022@bib-andren_Microscopicmetavehicles_2021。或者，显式调用`cite`命令: #cite(<bib-ZhuAdv.Mater.2025>)

 *注意*: 目前Typst不支持多重引文。然而，在毕业论文中至少需要出现两次引文: "*References*"和"*List of Publications*"。
 因此，本模板使用了一个第三方包`alexandria`以实现双重引文功能。当从`bib`文件插入一个引文条目时，例如:
 ```bib
   @article{ZhuAdv.Mater.2025,
     title = {Mesoporous Nanogel Sprays as Universal Evaporation Interface Modifiers for Boosting Water-Cluster Evaporation},
     author = {Zhu, Haiyun and Yang, Junsheng and Li, Chengcheng and Zhong, Yajie and Tian, Xinlong and Zhang, Mingxin and Huang, Wei},
     date = {2025-03-11},
     journaltitle = {Advanced Materials},
     volume = {n/a},
     number = {n/a},
     pages = {2419243},
     doi = {10.1002/adma.202419243},
   }
 ```

你需要在引文条目前面添加"`bib-`"作为前缀: "`@bib-ZhuAdv.Mater.2025`"才能使得这个包正确识别插入的引文内容。

=== 图表

@fig-blue-square-cn 是一个有很长图注的图。

#figure(
  rect(width: 20pt, height: 20pt, fill: blue),
  caption: [A blue square. #lorem(20)],
) <fig-blue-square-cn>

@table-exp-cn 是一个三线表。

#figure(
  table(
    columns: 2,
    stroke: none,
    align: (left, center),

    toprule,
    table.header([Name], [Made public]),
    midrule,

    [Typst], [2023],
    [LaTeX], [1984],
    [TeX], [1978],

    bottomrule,
  ),
  caption: figure.caption(
    position: top,
    [An example table.],
  ),
) <table-exp-cn>

注意到表格(`table`)也是被包裹在图片(`figure`)环境中。算法(`algorithms`)也是如此。

= Conclusion

In this thesis, ......

/**************** REFERENCES ****************/
#show: ref-page-style

#bibliographyx(
  "/mythesis.bib",
  prefix: "bib-",
  title: "References",
)
