#let conf(lecture: "", authors: "", doc) = {
  let line_skip = 0.4em
  let font_size = 6.5pt
  let level1_color = "#8c195f";
  let level2_color = "#a12b66"; 
  let level3_color = "#b63d6d"; 
  let level4_color = "#cb4f74"; 
  let level5_color = "#C63B65"; 

  show: set block(below: line_skip)
  show: set par(leading: line_skip, justify: true)

  set page(
    paper: "a4",
    flipped: true,
    margin: ("top": 8mm, "rest": 5mm),
    header-ascent: 1.5mm,
    header: align(center, text(
      1.1em,
      weight: "bold",
      context([#lecture / #authors / #counter(page).display()]),
    )),
  )
  set text(size: font_size, font: "Noto Sans")

  set terms(hanging-indent: 0mm)

  show outline.entry.where(level: 1): set text(weight: "bold")

  show heading: set text(white, size: font_size)
  show heading: set block(
    radius: 0.65mm,
    inset: 0.65mm,
    width: 100%,
    above: line_skip,
    below: line_skip,
  )
  show heading.where(level: 1): set block(fill: rgb(level1_color))
  show heading.where(level: 2): set block(fill: rgb(level2_color))
  show heading.where(level: 3): set block(fill: rgb(level3_color))
  show heading.where(level: 4): set block(fill: rgb(level4_color))
  show heading.where(level: 5): set block(fill: rgb(level5_color))
  set heading(numbering: "1.1")

  columns(4, gutter: 2mm, doc)
}
