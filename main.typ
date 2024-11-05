#import "template.typ": techbook, article, chapter-title-page, chapter-number-counter
#import "emo.typ": setup-emo
#show: setup-emo
#let ebook = sys.inputs.at("EBOOK", default: none) == "true"

// 奥付用の関数
#let db = yaml("contributors.yaml")
#let of-role = (role) => {
  db.filter(it => it.roles.contains(role)).map(it => it.name).dedup().join(" ／ ")
}

#show: techbook.with(
  ebook: ebook,
  title: [タイトル],
  author: "四谷ラボ",
  date: datetime(year: 2024, month: 11, day: 3),
  colophon: [
    #text(weight: 700, "ライター") \
    Shino3（しのさん） ／ darashi
    #v(0.3em)
    #text(weight: 700, "イラストレーター") \
    #of-role("イラストレーター") \
    #v(0.3em)
    #text(weight: 700, "デザイン") \
    よそいち \
    #v(0.3em)
    #text(weight: 700, "DTP") \
    #of-role("DTP") \
    #v(0.3em)
    #text(weight: 700, "発行") \
    四谷ラボ https://428lab.net \
    #v(0.3em)
    #text(weight: 700, "印刷") \
    有限会社ねこのしっぽ \
  ]
)

= はじめに
#article(include("00-01-at-first/at-first.typ")) // == はじめに

#chapter-title-page("Hello Nostr!", "illusts/krdrailway/nb-2.png")

#pagebreak()
= あとがき
#article(include("other/article2.typ")) // あとがき


#pagebreak()
#article(include("other/article3.typ")) // 過去作紹介
#article(include("other/article1.typ")) // 四谷ラボについて

#include("contributors.typ")
