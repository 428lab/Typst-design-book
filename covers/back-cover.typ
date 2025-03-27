#set text(
  lang: "ja",
  font: ("Source Han Sans", "Noto Sans CJK JP"),
  size: 11pt,
)

#set page(
  margin: 0pt,
  fill: rgb("#1a365d")
)

#block(
  width: 100%,
  height: 100%,
  fill: none,
  inset: 3em
)[
  #align(center + top)[
    #v(3em)
    #text(fill: white, weight: 700, 1.2em)[四谷ラボ BOOKS]
  ]
  
  #align(center + horizon)[
    #block(
      width: 80%,
      height: auto,
      fill: rgb("#e2e8f0").lighten(30%),
      radius: 1em,
      inset: 2em
    )[
      #align(left)[
        #text(fill: rgb("#2a4365"), weight: 700, 1.5em)[
          Typstで技術書を作る新しい方法
        ]
      ]
      
      #v(1em)
      
      #text(fill: rgb("#2a4365"), 1em)[
        本書は、Typstを使って技術書を作成するためのガイドブックです。Typstは、LaTeXの複雑さを避けつつも、同様の美しい組版を実現できる新しいマークアップ言語です。
        
        四谷ラボのメンバーが実際に使用している技術やノウハウをまとめ、Typstを使った技術書作成の全工程を解説しています。テンプレートの作成から、レイアウト設計、図表の挿入、索引の作成まで、技術書に必要な要素を網羅しています。
        
        本書で紹介するテンプレートとテクニックを活用することで、美しく読みやすい技術書を効率的に作成することができます。
      ]
      
      #v(1em)
      
      #align(center)[
        #text(fill: rgb("#2a4365"), weight: 700, 1.2em)[
          四谷ラボ公式サイト
        ]
        #v(0.5em)
        #text(fill: rgb("#2a4365"), weight: 700, 1em)[
          https://428lab.net
        ]
      ]
    ]
  ]
  
  #align(right + bottom)[
    #grid(
      columns: (auto, 1fr),
      gutter: 1em,
      [
        #box(
          stroke: white,
          radius: 4pt,
          inset: 0.5em,
          [
            #text(fill: white)[ISBN: 978-4-XXXX-XXXX-X]
          ]
        )
      ],
      [
        #align(right)[
          #text(fill: white, weight: 700, 1.5em)[四谷ラボ]
        ]
      ]
    )
    #v(1em)
  ]
]
