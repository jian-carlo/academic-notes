#let template(doc) = {
  set par(justify: true)
  show heading.where(level: 1): set heading(numbering: "1.")
  show heading.where(level: 2): set heading(numbering: "1.")
  show heading.where(level: 3): set heading(numbering: "1.")
  set page(margin: (left: 10em, right: 10em))
  set math.equation(numbering: "(1)")
  doc
}

#let title-page(
  TITLE,
) = [
  #set page(margin: (left: 10em, right: 10em))
  #align(center + horizon,
    [
      #text(TITLE, size: 16pt, weight: "bold")
      #v(10em)
    ]
  )
  #show heading: set heading(numbering: none)
  #outline(title: "Table of Contents")
  #pagebreak()
]

#let where(CONTENT) = [
  Where:
  #move(CONTENT, dx: 1em)
]
