#import "setup.typ": *
#import "@preview/cades:0.3.0": qr-code

#set text(font: "PT Sans")

#show link: it => {
  underline(offset: 1mm,it)
}

#main(
  [#pad(top: 4mm,align(center,text(size: 19pt,fill: white, style: "italic",  "Recherche d'un stage en informatique de \n6 mois de Mars à Août 2026")))
],
  [
    #profile(
      name: align(center,"FALCOZ Alban"),
    )

    #align(center,text(size: 11pt,"Étudiant ingénieur en sciences informatiques toujours curieux d'apprendre de nouvelles choses"))
    

    #profile_section("Contact ")
    #show_contacts(
      (
        (
          icon: "user", 
          text: "22 ans",
        ),
        (
          icon: "envelope",
          solid: true,
          text: link("mailto:alban.falcoz@orange.fr")[alban.falcoz\@orange.fr],
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
        text: text("Bonne compréhension écrite et orale (Niveau TOEIC B2)"),
      ),
      
      (
        flag: "images/Japan.png",
        text: text(top-edge: 5mm,"Notions (en apprentissage)"),
      ),
      
    )
    )

    #profile_section("Langages ")
    
      - HTML / CSS / JavaScript (Angular)
      - Java 
      - Rust 
      - Python (numpy, tensorflow, pygame) 
      - C / C++

    #profile_section("CV numérique ")
    #text(size: 11pt,"Pour accéder à mon CV en version numérique :")
    #align(center,qr-code("https://github.com/AlbanFALCOZ/MY_CV", width: 3cm))
  ],
  [
    #body_section("Formation")
    #school_period(
      period: [
        #text("Sept 2023 - Aujourd'hui")
      ],
      title: "Ingénieur informatique",
      school_name: "Polytech Nice Sophia : "+text(style: "italic", "Les Templiers"),
      addtional_note: "Troisième année. Spécialité Intelligence Artificielle et Ingénierie des Données",
    )
    #school_period(
      period: [
        #text("Sept 2021 - \nJuin 2023")
      ],
      title: "Cycle préparatoire PeiP",
      school_name: "Polytech Nice Sophia : "+text(style: "italic", "Les Lucioles"),
      addtional_note: "Classé 67ème sur 1750",
    )

    #school_period(
      period: [
        #text("Sept 2018 - \nJuillet 2021")
      ],
      title: "Baccalauréat général : ",
      description: " Mention Très bien",
      school_name: "Lycée Henri Matisse",
      addtional_note: "Spécialité Mathématiques et Informatique",
    )
    #body_section("Certificats")
    #period_item(
      period: text(size: 12pt,[2024]),
      images: "images/Polytech.png",
      image_width: 80%,
      alignment: center,
      title: "1er prix concours Full-Stack",
      body: "Mon site de quiz " + link("https://github.com/AlbanFALCOZ/Harmonikids")[Harmonikids] +" a été élu meilleur projet Full-Stack par une dizaine d'entreprises venues évaluer les réalisations des étudiants de ma promotion."
    )
    
    #body_section("Expérience professionnelle")
    #period_item(
      period: [
        Mai 2025 - Août 2025
      ],
      title: "Stage de 4 mois au Vietnam",
      adress: "Da Nang -
    Vietnam",
      body: "Création de Greenbot, un assistant conversationnel alimenté par l’intelligence artificielle, conçu pour faciliter la classification des déchets et l’éducation à l’environnement au Vietnam. "
    )
    
    #period_item(
      period: [
        Juillet 2022 -
      ],
      title: "Stage d'un mois à l'Institut de Physique de Nice",
      adress: "Institut de Physique de Nice",
      body: "Lors de ce stage, j'ai aidé à la création et à la mise en place d'un réseau de neurones afin d'analyser le déplacement d'un signal."
    )
    

    #body_section("Projets informatiques")
    #school_project(
      period: [
        Mars 2024\ - \
        Juin 2024
      ],
      title: "Le site web Harmonikids",
      lien: "https://github.com/AlbanFALCOZ/Harmonikids",
      body: "Harmonikids est un site de quiz destinés aux enfants atteints d'autisme. Ce projet réalisé avec le framework Angular a consolidé mes connaissances en développement web."
    )
    #school_project(
      period: [
        Jan 2025 \ - \
        May 2025
      ],
      title: "Un compilateur réalisé en Python",
      lien: "https://github.com/AlbanFALCOZ/TronTheSuccessor",
      body: "Tron the Successor est une adaptation web et mobile inspirée de l’univers du film Tron : L’Héritage. Ce jeu multijoueur propose aux utilisateurs de s’affronter pour grimper dans le classement, tout en offrant des fonctionnalités sociales telles que le chat entre amis et le suivi des statistiques personnelles afin de comparer ses performances avec celles des meilleurs joueurs."
    )
    #school_project(
      period: [
        Dec 2023 \ - \
        Fev 2024
      ],
      title: "Le jeu de société Citadelles",
      lien: "https://github.com/AlbanFALCOZ/Citadelles",
      body: "Le projet est une implémentation en Java du jeu de société Citadelle, où les joueurs incarnent des personnages et accumulent des richesses dans leur cité en construisant des quartiers."
    )
  ]
)