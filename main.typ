#import "jhu-letter.typ": jhu-letter

#let jhu-blue = rgb(0, 45, 114)
#show: jhu-letter.with(
  // https://brand.jhu.edu/resources/download-library
  watermark-img: "jhu.logo/university.shield.rgb.blue.svg",
  logo: "jhu.logo/WSE.logo.rgb_horizontal.blue.svg",
  info: [
    #text(jhu-blue)[*Address:*]
    Hackerman 211
    #block(
      spacing: 0.6em,
      inset: (left: 1em),
    )[
      Department of Computer Science \
      Johns Hopkins University \
      Baltimore, MD 21218 \
      United States
    ]
    #text(jhu-blue)[*Email:*]
    schu23\@jhu.edu
  ],
)

To Whom It May Concern:

#lorem(100)

#lorem(200)

#lorem(50)

#block(above: 1fr, breakable: false)[
Sincerely,

#image("signature.svg", width: 5cm)

Ernie Chu,\
PhD Student,\
Department of Computer Science\
Johns Hopkins University
]