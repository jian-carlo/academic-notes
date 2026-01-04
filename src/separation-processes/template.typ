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
  #outline(title: "Table of Contents")
  #pagebreak()
]

#let solution(CONTENT) = [
  #align(center, block(
    align(
      left,
      [
        #text(weight: "bold", "Solution") \
        #v(0.2em)
        #set math.equation(numbering: none)
        #CONTENT
      ]
    ),
    width: 120%,
    stroke: none,
    fill: gray.transparentize(80%),
    radius: 5pt,
    inset: 1em,
  ))
]
