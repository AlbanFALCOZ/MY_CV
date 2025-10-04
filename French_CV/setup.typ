#import "@preview/fontawesome:0.2.1": *

#let headercolor = gray
#let pblue = rgb("#0395DE")
#let gray80 = rgb("#333333") // \color{black!80}
#let sidecolor = rgb("#E7E7E7")
#let mainblue = rgb("#0E5484")
#let maingray = rgb("#B9B9B9")

#let fontSize = (
  tiny: 5pt,
  scriptsize: 7pt,
  footnotesize: 8pt,
  small: 9pt,
  normalsize: 10pt,
  large: 13pt,
  Large: 14pt,
  LARGE: 17pt,
  huge: 20pt,
  Huge: 25pt,
)

#let row_pourcent = 7.5%

#let main(
  pages: 1,
  top,
  left,
  right,
) = {
  set page(
    margin: (
        left: 0cm,
        right: 0cm,
        top: 0cm,
        bottom: 0cm,
    )
  )
  grid(
    columns: (35%, 65%),
    rows: (row_pourcent,auto),
    // column-gutter: 1em,
    grid.cell(y : 0, colspan: 2,fill: rgb("#2F3C7E"))[
      #top
    ],
      grid.cell(x: 0,y: 1)[#block(
      fill: sidecolor,
      height: pages * (100%-row_pourcent),
      pad(
        top: 0.4cm,
        rest: 0.3cm,
        left
      )
    )],
    grid.cell(x: 1, y: 1)[#block(
      height: auto,
      pad(
        top: 0.4cm,
        rest: 0.5cm,
        right,
      ),
    )]
  )
}

#let profile(
  name: "",
  internship: "",
) = {
  text(fill: pblue, size: 20pt, name) //
  align(center, image("images/profile_picture.png", width: 55%))

   
}

#let profile_section(title) = {

  align(left)[
    #text(size:19pt, fill: gray80)[#title]
    #box(width: 1fr, baseline: -0.5em, line(length: 100%, stroke: gray80))
  ]
}

#let progress(score) = {
  box(rect(
    height: 1em,
    width: score * 100%,
    fill: mainblue,
  ))
  box(rect(
    height: 1em,
    width: (1 - score) * 100%,
    fill: maingray,
  ))
}

/*
  interest item is dictionary
  (
    interest: "AI",
    score: 0.6 // 1.0 based percentage
  )
*/
#let show_interests(interests) = {
  set text(size: fontSize.large, fill: gray80)
  for interest in interests {
    text(interest.interest)
    linebreak()
    progress(interest.score)
  }
}


#let show_contacts(contacts) = {
  let c = ()
  for contact in contacts {
    c.push(fa-icon(contact.icon, solid: contact.at("solid", default: false), fill: pblue))
    c.push(contact.text)
  }

  grid(
    columns: (auto, auto),
    column-gutter: 1em,
    row-gutter: 1em,
    ..c
  )
}

#let show_langues(langues) = {
  let c = ()
  for langue in langues {
    c.push(align(center, image(langue.flag, width: 100%)))
    c.push(text(langue.text))
  }

  grid(
    columns: (12%, 78%),
    column-gutter: 1em,
    row-gutter: 1em,
    ..c
  )
}

#let body_section(slice:0, title) = {

  set text(size: fontSize.LARGE)
  block[
    #strong()[
      #text(top-edge: 4mm,fill: gradient.linear(rgb("#5B86E5"),rgb("#36D1DC")), title)
    ]
  ]
}

/*
#1 period, like From - To
#2 title
#3 note, basic note
#4 addtional_note
#5 body: the main body
*/
#let period_item(
  period: "",
  title: "",
  adress: "",
  alignment: left,
  body: "",
  images: "",
  image_width:  60%,
) = {
  grid(
    columns: (20%, 80%),
    align(alignment,block([
      #period
      #if images != "" {
      align(center,image(images, width: image_width))}
    #if adress.len() > 0 {
        text("\n")
        fa-icon("map-marker")
        text(size: 9pt, style: "italic"," " +adress+"\n")
      }])),
    par([
      #block()[
        #strong(text(size: 13pt,title))
      ]
      
      #text(size: 10pt,body)
    ])
  )
}

#let school_period(
  period: "",
  title: "",
  description: "",
  school_name: "",
  addtional_note: "",
  
) = {
  grid(
    columns: (20%, 80%),
    block([
    #align(center,text(period))
  
    ]),
    par([
      #strong(title)#text(description)
      #text(top-edge: 3mm,"\n"+school_name)
      #text("\n"+addtional_note, style: "italic")
    ]),
  )
}


#let school_project(
  period: "",
  title: "",
  lien: "",
  body: "",
  lien_nom: "",
) = {
  grid(
    columns: (20%, 80%),
    block([
      #align(center,text(top-edge: 3mm,period))
        #text("\n")
        
      ]),
    par([
      #block()[
        #strong(text(size: 13pt,title))
      ]
    
      #text(size: 10pt,body+"\n")
      #link(lien)[
          #fa-icon(size: 17pt, fill: blue,"github")
          #text(size: 10pt,lien.slice(19))
        ]
    ])
  )
}