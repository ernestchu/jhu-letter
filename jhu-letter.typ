#let watermark(img) = layout(bounds => {
  let img = image(img, width: 50%)
  let size = measure(img, ..bounds)
  img
  place(horizon + center, block(..size, fill: white.transparentize(15%)))
})

#let header(logo, info, below) = context {
  let logo = image(logo, width: 75mm)

  let logo-h = measure(logo).height
  let info-h = measure(info).height
  let diff = logo-h - info-h

  block(
    below: below,
    if diff < 0pt [
        #box(move(dy: diff, logo))
        #h(1fr)
        #box(info)
    ] else [
        #box(logo)
        #h(1fr)
        #box(move(dy: -diff, info))
    ]
  )
}

#let jhu-letter(
  watermark-img: none,
  logo: none,
  info: "",
  header-below: 1cm,
  date: datetime.today().display("[month repr:long] [day padding:none], [year]"),
  base-font-size: 12pt,
  content,
) = [
  #set page(
    background: watermark(watermark-img),
    margin: (x: 1.5cm, y: 1cm),
  )

  #header(logo, info, header-below)

  #set text(
    size: base-font-size,
  )

  
  #date
  
  #content
]
