#import "setup.typ": *
#import "@preview/cades:0.3.0": qr-code

#set text(font: "PT Sans")

#main(
  [
    #profile(
      name: "FALCOZ Alban",
    )

    #profile_section("Contact ")
    #show_contacts(
      (
        (
          icon: "user", 
          text: "21 ans",
        ),
        (
          icon: "envelope",
          solid: true,
          text: "alban.falcoz@orange.fr",
        ),
        (
          icon: "phone",
          solid: true,
          text: link("tel:+33 7 85 27 11 40")[+33 7 85 27 11 40],
        ),
        (
          icon: "github",
          text: link("https://github.com/AlbanFALCOZ")[Alban FALCOZ],
        ),
        (
          icon: "home",
          solid: true,
          text: "22 rue du château \n06510 Gattières, France",
        ),
        (
          icon: "car",
          text: "Permis B"
        ),
      )
    )

    #profile_section("Langues ")
    #show_langues(
      (
      (
        flag: "images/France.png",
        text: text(top-edge: 5mm,"Langue maternelle"),
      ),
      (
        flag: "images/England.png",
        text: text("Bonne compréhension écrite et oral (Niveau TOEIC C1)"),
      ),
      
      (
        flag: "images/Japan.png",
        text: text(top-edge: 5mm,"Notions"),
      ),
      
    )
    )

    #profile_section("Langages ")
    #v(1mm)
    
      - HTML / CSS / Javascript (Angular)
      - Java 
      - Rust 
      - Python (numpy, tensorflow, pygame) 
      - C
      - SQL (PostgreSQL)

    #profile_section("CV numérique ")
    #text(size: 11pt,"Pour accéder à mon CV crée avec Typst en version numérique :")
    #align(center,qr-code("https://github.com/AlbanFALCOZ/CV", width: 3cm))
  ],
  [
    
    #align(center,text(size: 19pt, style: "italic",  "Recherche d'un stage en informatique de \n4 mois à l'étranger de mai 2024 à août 2024"))

    #align(left,text(size: 11pt,"Étudiant en ingénierie informatique, j'aime créer durant mon temps libre des projets informatiques afin de toujours apprendre de nouvelles choses et faire des randonnées avec ma famille pour profiter de la nature."))

    #body_section("Formation")
    #school_period(
      period: [
        #text("Sept 2023 - Aujourd'hui")
      ],
      title: "Ingénieur informatique",
      school_name: "Polytech Nice Sophia  : "+text(style: "italic", "Les Templiers"),
      addtional_note: "2ème année",
    )
    #school_period(
      period: [
        #text("Sept 2021 - \nJuin 2023")
      ],
      title: "Cycle préparatoire PeiP",
      school_name: "Polytech Nice Sophia : "+text(style: "italic", "Les Lucioles"),
      addtional_note: "Classé 67 sur 1750",
    )

    #school_period(
      period: [
        #text("Sept 2018 - Juillet 2021")
      ],
      title: "Baccalauréat général : ",
      description: "Mention très bien",
      school_name: "Lycée Henri Matisse",
      addtional_note: "Spécialité Mathématiques et Informatique",
    )
    #body_section("Expérience professionnelle")
    #period_item(
      period: [
        Juillet 2022 -
      ],
      title: "Stage d'un mois à l'Institut de Physique de Nice",
      adress: "Institut de Physique de Nice",
      body: "Lors de ce stage, j'ai aidé à la création et à la mise en place d'un réseau de neurones afin d'analyser le déplacement d'un signal."
    )
    
    #period_item(
      period: [
        Juin 2019 -
      ],
      title: "Stage de 2 semaines chez les pompiers",
      adress: "Caserne des pompiers",
      body: "Ce stage m'a permit de comprendre l'importance du travail d'équipe lors des situations critiques."
    )
    #body_section("Projets informatiques")
    #school_project(
      period: [
        Mars 2024 - \
        Juin 2024
      ],
      title: "Le site web Harmonikids",
      lien: "https://github.com/AlbanFALCOZ/Harmonikids",
      body: "Harmonikids est un site de quiz destinés aux enfants atteints d'autisme. Le site est accueillant et bienveillant envers eux, et a été réalisé grâce au framework Angular, ce qui m'a permis de me familiariser avec le front-end et de découvrir comment le back-end fonctionne."
    )
    #school_project(
      period: [
        Mai 2024 - \
        Juin 2024
      ],
      title: "Compilateur réalisé en Python ",
      lien: "https://github.com/AlbanFALCOZ/Compiler-flo",
      body: "Ce projet compile le langage Flo, un langage que nous avons créé, en utilisant la bibliothèque Sly de Python pour convertir le code en instructions ARMv7. Il m'a permis de comprendre comment un compilateur effectue l'analyse lexicale et syntaxique pour générer des instructions d'assemblage."
    )
    #school_project(
      period: [
        Dec 2023 - \
        Fev 2024
      ],
      title: "Le jeu de société Citadelles",
      lien: "https://github.com/AlbanFALCOZ/Citadelles",
      body: "Le projet implémente en Java le jeu de société Citadelle, où les joueurs incarnent des personnages afin d'accumuler des richesses dans leur cité en construisant des quartiers. Il y a différents bots qui adoptent des stratégies différentes pour gagner."
    )
  ]
)