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
  flipped: true,
  margin: (top: 25mm, bottom: 25mm, left: 25mm, right: 25mm),
  //top: 37mm, left: 28mm or top 34.58, bottom: 32.58mm

  numbering: "1",
)

#set text(
  font: (
    eng-font,
    default-font,
  ),
  size: 18pt,
)

#show strong: set text(weight: "bold")
#show table.cell.where(y: 0): strong
#set par(first-line-indent: (amount: 2em, all: true), leading: 15pt, spacing: 15pt, justify: true) // 29pt-16ptß



#table(
  columns: 10,
  inset: 10pt,
  align: horizon,
  table.header(
    [时间], [入场理由], [类型],[离场理由],[说明],[仓位],[方向],[开仓价],[平仓价],[盈亏]
  ),
  [2025-12-29 15:22],[#image("img/反转形态.png")]
)