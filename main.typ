#import "@preview/hydra:0.6.1": hydra

// Style

#let gfsize = 15pt

#set page(paper: "a4", numbering: "1", header: context {
  set text(11pt)
  if calc.odd(here().page()) {
    align(left, emph(hydra(1)))
  } else {
    align(right, emph(if hydra(1) != none { hydra(1) } else { hydra(2) }))
  }
})

#set text(
  font: "EB Garamond",
  lang: "en",
  region: "us",
  gfsize,
  tracking: 0.3pt,
)

#set par(justify: true, first-line-indent: (
  all: false,
  amount: 1em,
))

#show heading.where(level: 2): it => {
  set align(center)
  set text(gfsize + 2pt)
  emph(it)
}

#show heading.where(level: 1): it => {
  set align(center + horizon)
  set text(gfsize + 4pt)
  it
  h(0pt)
}

// Title page
#context [
  #set page(footer: { }, numbering: none)
  #align(top + center)[
    #image(
      "Nb_pinacoteca_stieler_friedrich_wilhelm_joseph_von_schelling.jpg",
      height: 200pt,
    )
  ]
  #text(30pt)[
    #set align(center)
    *System of Transcendental Idealism*
    (1800)
  ]
  #text(20pt)[

    _by F.W.J. Schelling_

    Translated by PETER HEATH

    University Press of Virginia Charlottesville
    #pagebreak()
    #text(font: "Iosevka Extended", 15pt)[ #h(1em)Re-edited by Naro-Xeno

    #link("github","https://github.com/naroxeno/STI")

    Email: naroxeno\@gmail.com

    Bilibili: https://space.bilibili.com/532817989

    *Acknowledgement*

    Thanks to who OCRed and uploaded the DJVU version of this book.
    ]
  ]
]

#context [
  #set page(numbering: "i")
  #show outline.entry.where(level: 1): set block(above: 1.2em)
  #set outline.entry(fill: none)
  #outline(title: [#text(font: "New Computer Modern")[CONTENTS]])
]

#pagebreak()

#counter(page).update(1)

= *FOREWORD*

#include "Foreword.typ"
#pagebreak()

#set page(header: context {
  set text(11pt)
  if calc.odd(here().page()) {
    align(left, emph(hydra(2)))
  } else {
    align(right, emph(if hydra(1) != none { hydra(1) } else { hydra(2) }))
  }
})
= *INTRODUCTION*

#include "Introduction.typ"
#pagebreak()
#text(gfsize+4pt)[#align(center)[= *PART ONE*]]
= On the Principle of Transcendental Idealism

#include "part1.typ"
