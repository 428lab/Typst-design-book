#import "template.typ": techbook, article, chapter-title-page, chapter-number-counter
#import "emo.typ": setup-emo
#show: setup-emo
#let ebook = sys.inputs.at("EBOOK", default: none) == "true"

// 奥付用の関数
#let date = datetime(year: 2024, month: 11, day: 3)

#show: techbook.with(
  ebook: ebook,
  title: [タイトル],
  author: "四谷ラボ",
  date: date
)

= はじめに
#article(include("00-01-at-first/at-first.typ")) // == はじめに

// #chapter-title-page("Hello Nostr!", "illusts/krdrailway/nb-2.png")

#pagebreak()
= あとがき
#article(include("other/article2.typ")) // あとがき


#pagebreak()
#article(include("other/article3.typ")) // 過去作紹介
#article(include("other/article1.typ")) // 四谷ラボについて

#include("contributors.typ")

#import "/colophon.typ": create_colophon
#create_colophon(ebook)
