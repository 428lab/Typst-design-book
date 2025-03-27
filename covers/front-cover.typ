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
    #v(2em)
    #text(fill: white, weight: 900, 4em)[Typstで作る\n技術書デザインブック]
    #v(1em)
    #text(fill: white, style: "italic", 1.5em)[Design Book for Technical Publications with Typst]
  ]
  
  #align(center + horizon)[
    #block(
      width: 80%,
      height: auto,
      fill: rgb("#e2e8f0").lighten(30%),
      radius: 1em,
      inset: 2em
    )[
      #align(center)[
        #text(fill: rgb("#2a4365"), weight: 700, 1.5em)[
          美しい技術書を\nプログラミング的に作成する\n新しいアプローチ
        ]
      ]
      
      #v(1em)
      
      #columns(2, gutter: 1em)[
        - LaTeXより簡単な文法
        - 強力なテンプレート機能
        - 美しい組版と表現力
        - 効率的なワークフロー
        
        #colbreak()
        
        - 日本語組版対応
        - プログラミング的アプローチ
        - 再利用可能なコンポーネント
        - GitHubとの連携
      ]
    ]
  ]
  
  #align(right + bottom)[
    #v(3em)
    #text(fill: white, weight: 700, 2em)[四谷ラボ]
    #v(1em)
  ]
]
