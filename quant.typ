// 中文公文模板
// 符合《党政机关公文格式》GB/T 9704-2012
// #import "@preview/drafting:0.2.2": *
// #set-page-properties(margin-left: 3cm)
// #import "@preview/polylux:0.4.0": *
// #set page(paper: "presentation-16-9")
// #set text(size: 25pt, font: "Lato")
// #slide[]
// #import "@preview/touying:0.6.1": *
// #import themes.simple: *
// #show: simple-theme.with(aspect-ratio: "16-9")
// #import "@preview/pinit:0.2.2": *

#let default-font = "Source Han Serif SC"
#let hei-font = "Source Han Sans SC"
#let eng-font = "Times New Roman"

#set page(
  paper: "a3",
  // flipped: true,
  margin: (top: 25mm, bottom: 25mm, left: 25mm, right: 25mm),
  //top: 37mm, left: 28mm or top 34.58, bottom: 32.58mm
  numbering: "1"
)

#set text(
  font: (
    eng-font,
    default-font
  ),
  size: 18pt
)

#show strong: set text(weight: "bold")
#show table.cell.where(y: 0): strong
#set par(first-line-indent: (amount: 1.5em, all: true,), leading: 15pt, spacing:15pt, justify:true) // 29pt-16ptß

#show ref.where(form: "normal"): set ref(supplement: it => context{
  // counter(heading).at(<main>)
  ""
})

#show figure: set block(breakable: true)

#let title(title) = {
  set text(font: hei-font, weight: "bold", size: 22pt)
  align(center)[#title #v(30pt) #parbreak()]
}
#set heading(numbering: "1.1.1.1.1")
#show heading: set text(font: hei-font)
#let fimage(file, caption, size: 100%, align_: center) = {
  figure(
    align(align_)[
      #image(file, width: size)
    ],
    caption: caption,
    
  )
}

#let signature(issuer, date) = {
  // 定义距右边的空白宽度（3 个汉字宽）
  // 用一个右浮动的盒子来控制位置
  box(width: 100%-3em, align(right)[#box(align(center)[
      #issuer \
      #date])
  ])
}

#show figure.where(kind: image): set figure(
  supplement: [图],
)
#show figure.where(kind: table): set figure(
  supplement: [表],
)


#outline(title: [目录])
#v(5em)
#signature("672", [#datetime.today().display("[year].[month].[day]") - v0.0.1])
#pagebreak()

= 交易系统

= 价格行为（PA）

= 其他参考系统
== SMC/ICT
== 超短线
== 缠论
== N
== 开盘突破


= 复盘
== MES
== XAUUSD
// == EURUSD




// #fimage("mes.png","122222222222223",size: 100%)
// #title("关于XXXX工作的通知")
// #document-number("XX发〔2024〕XX号")


// #strong[为进一步加强XXXX工作]，根据《XXXX管理办法》有关规定，现将有关事项通知如下：
// #quote(attribution: [Plato])[
//   ... ἔοικα γοῦν τούτου γε σμικρῷ τινι αὐτῷ τούτῳ σοφώτερος εἶναι, ὅτι
//   ἃ μὴ οἶδα οὐδὲ οἴομαι εἰδέναι.
// ]

// = 总体要求<main>
// 坚持以习近平新时代中国特色社会主义思想为指导//#margin-note(side: left)[Hello, world!]
// #figure(align(center)[#image("map.png", width: 90%)],caption: "习近平新时代中国特色社会主义思想")

// = 主要任务

// #h1("二、主要任务")
// == 加强组织领导
// 各单位要高度重视XXXX工作，主要负责同志要亲自部署、亲自协调，确保各项工作落到实处。第@main 章，脚注#footnote[这是一个脚注]，第
// @second
// #figure(align(left)[#image("map.png", width: 10%)],caption: "习近平新时代中国特色社会主义思想")

// #figure(align(center)[#image("mes.png", width: 100%)],caption: "习近平新时代中国特色社会主义思想")


// == 明确责任分工<second>
// #figure(align(center)[#table(
//   columns: 4,
//   [], [Exam 1], [Exam 2], [Exam 3],
//   [John], [], "a1235", [],
//   [Mary], [], "a", "a",
//   [Robert], "b", "a", "b",
// )],caption: "XXXX责任分工表")
// #appendix("asdfasdfasdfasdf")
#pagebreak()
= 术语表
#let term = csv("term.csv")
// #term.
#set table(
  fill: (_, y) => if calc.odd(y) { rgb("#ececec") },
)
#figure(align(center)[

  #table(
  
  align: center + horizon,
  columns: (0.3fr,1fr,0.3fr,1fr),
  row-gutter: 0.3em,
  stroke: none,
  table.hline(y: 1,stroke: black+0.5mm),
  table.vline(x: 2, start: 0),
  ..for (abbr1, exp1, abbr2, exp2) in term {
    (abbr1, par(leading: 0.3em)[#exp1], abbr2, par(leading: 0.3em)[#exp2])
  }
)],caption: "术语表")


// #datetime.now().display("[year]-[month]-[day] [hour]:[minute]:[second]")



#pagebreak()
#outline(title: [图索引],target: figure.where(kind: image))
#pagebreak()
// #line(length: 100%)
#outline(title: [表索引],target: figure.where(kind: table))
