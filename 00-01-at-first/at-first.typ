数ある書籍の中からこの本を見つけていただいてありがとうございます！

#grid(
  columns: (1fr, auto),
  align(left)[

この本の目的はTypstを使用して、なるべくドキュメントらしさをなくし、書籍としての技術書を完成させるための技術スタック本です。

四谷ラボが刊行している分散型SNSに関する本「Hello Nostr, Yo Bluesky 3 - 未来を担う分散型SNS」において、DTP作業も今までよそいちさんにすべてお任せしていたところ、今回は私達エンジニアが自ら実施しています。

今回、一冊の本が出来上がるまでに集めた情報と、組版完了までの内容も含めテンプレートとしてGitHubのリポジトリにオープンソースで公開しながら書籍化しようという方向になりました。

  ],
  align(right)[
    #pad(
      left: 1em,
      box(
        stroke: 2pt,
        image("./cover.jpeg", width: 16em)
      )
    )
  ]
)

この本の内容はオープンソースで公開すること自体とても悩みましたが、もっと広まることも望みます。なので以下の規約は絶対です。

- このリポジトリは予告なくアップデートされる可能性があります。
- テンプレートとして使用する場合は、コピーレフトに則り使用する事が可能です。
- 四谷ラボの理念に基づき、参照元としてこの書籍またはリポジトリへのリンクを記載してください。
- リポジトリのコードは参照できますが、それをPDFの頒布・物理本の頒布は四谷ラボの許可が必須です。

// ## リポジトリの実行手順

// まずローカルPCにTypst実行環境を整備します。必要に応じてpdftkのパッケージも導入してください。OSや環境により導入手順が異なります。

// ## 執筆中

// 次のコマンドで執筆中にビルドすることが可能です。

// ```bash
// typst watch main.typ
// ```

// - Linux 環境の場合はPDFビューワー内でホットリロードします
// - Adobe で開いた場合、プロセスがPDFをロックするため更新できないことがあります
// - Google Chromeでプレビューするとリロードで表示を更新することが可能です。

// ## ビルド方法

// 入稿用データのビルド手順

// ```bash
// typst compile main.typ
// ```

// 電子版データのビルド手順

// ```bash
// typst compile main.typ --input EBOOK=true ebook-body.pdf
// pdftk A=covers/front-cover.pdf B=ebook-body.pdf C=covers/back-cover.pdf cat A B C output ebook.pdf
// ```
