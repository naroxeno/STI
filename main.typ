#import "@preview/hydra:0.6.1": hydra
#import "@preview/in-dexter:0.7.0": *

#set document(
  author: ("F.W.J. Schelling", "Peter Heath"),
  title: "System of Transcendental Idealism",
  keywords: ("Philosophy", "English", "Schelling"),
)

// Comptime varibles
#let isForPrint = true

// Style
#let gfsize = 15pt
#let normalFont = "EB Garamond"

#set page(paper: "a4", numbering: "1", header: context {
  set text(11pt)
  if calc.odd(here().page()) {
    align(left, emph(hydra(1)))
  } else {
    align(right, emph(if hydra(1) != none { hydra(1) } else { hydra(2) }))
  }
})

#set text(font: normalFont, lang: "en", region: "us", gfsize, tracking: 0.3pt)

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
#context {
  set page(footer: [#align(
      center,
    )[University Press of Virginia Charlottesville]])
  align(top + center)[
    \ \ \
    #image(
      "Nb_pinacoteca_stieler_friedrich_wilhelm_joseph_von_schelling.jpg",
      height: 200pt,
    )
  ]
  text(27pt)[
    #set align(center)
    #set text(font: "Playfair Display")
    *_System of Transcendental Idealism_* \
    #text(17pt)[_System des transzendentalen Idealismus_] \
    #text(font: normalFont)[(1800)]
  ]
  text(20pt)[

    _by F.W.J. Schelling_ #h(1em)|#h(1em)Translated by PETER HEATH
  ]
}

#context {
  text(font: "Iosevka Extended", 10pt)[
    #set page(
      footer: [#text(
          8pt,
        )[FOR INTERNET DISTRIBUTION, YOU MUST RETAIN THIS PAGE.]],
      margin: 7em,
    )

    #set align(horizon + center)

    *LibreGeist Press Project*

    This is the English version of \ _System des transzendentalen Idealismus_ \
    #text(font: "Noto Sans CJK SC")[《先验观念论体系》]

    This version won't include: \
    The introduction by MICHAEL VATER

    Re-edited by Naro-Xeno

    Github repo: #link("github", "https://github.com/naroxeno/STI")

    Email: naroxeno\@gmail.com

    *Acknowledgement*

    Thanks to who OCRed and uploaded the DJVU version of this book.

    *Important Notice:*

    This digital version is an unofficial rendition of a published work, intended solely for personal study, research, and educational exchange.

    The creation of this digital version aims to foster academic discourse and knowledge sharing, and is not intended for any commercial purposes.

    *Copyright Notice:*

    The original copyright of this book belongs to the original author and publisher. We respect and acknowledge all rights held by the original author and publisher.

    Please support the official release. If you appreciate this work, we encourage you to purchase the authentic published book.

    *Disclaimer:*

    The creator of this digital version is not responsible for any use of this file by others. The creator shall not be held liable for any loss, damage, or legal consequences that may arise from the use of or reliance on the content within this digital version, including but not limited to data loss, financial loss, or legal actions.

    Users assume all risks associated with the use of this digital version. In all circumstances, users are expected to comply with applicable copyright laws and regulations.

    *Fonts:*

    EB Garamond | Iosevka | Noto Sans | Playfair Display | New Computer Modern
    #if isForPrint {
      page(footer: none)[]
    }
  ]
}

#context {
  set page(footer: { })
  set par(first-line-indent: 0em)
  set text(11pt)
  align(horizon + center)[
    THE UNIVERSITY PRESS OF VIRGINIA

    © 1978 by the Rector and Visitors

    of the University of Virginia

    All rights reserved

    Printed in the United States of America

    _Fifth printing 2001_

    Library of Congress Cataloging in Publication Data

    Schelling, Friedrich Wilhelm Joseph von, 1775-1854.

    System of transcendental idealism (1800)

    Translation of System des transcendentalen Idealismus.

    Includes index.   \
    \1. Idealism. 2. Transcendentalism.

    I. Heath, Peter Lauchlan, 1922-

    II. Title.
    B2883.E5H4 14T.3 78-6638
    ISBN 0-8139-0780-2]
  if isForPrint {
    page(footer: none)[]
  }
}

#counter(page).update(1)

#context {
  set page(numbering: "i")
  show outline.entry.where(level: 1): set block(above: 1.2em)
  set outline.entry(fill: none)
  outline(title: [#text(font: "New Computer Modern")[CONTENTS]])
  if isForPrint {
    page([], header: none, footer: none)
  }
}

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
#align(center)[
    = *PART ONE\ On the Principle of Transcendental Idealism*
]

#include "Part-1.typ"


