# Typstで作る技術書デザインブック

![Typst Design Book](00-01-at-first/cover.jpeg)

Typstを使用して、美しく読みやすい技術書を作成するためのテンプレートとガイドブックです。このリポジトリは、四谷ラボが技術書典向けに作成した「Typstで作る技術書デザインブック」のソースコードです。

## 概要

このプロジェクトは以下の2つの目的を持っています：

1. Typstを使った技術書作成の方法を解説した書籍を提供する
2. 実際に技術書を作成するための再利用可能なテンプレートを提供する

このリポジトリをテンプレートとして使用することで、Typstの知識がなくても美しい技術書を作成することができます。また、このリポジトリ自体をビルドすることで、テンプレートの使い方を解説した書籍のPDFを生成できます。

## 特徴

- 日本語組版に最適化されたデザイン
- 技術書に必要な要素（コードブロック、図表、目次など）のスタイル設定
- 再利用可能なテンプレートとコンポーネント
- 印刷版と電子版の両方に対応
- GitHubとの連携を前提とした構成

## 必要環境

- [Typst](https://typst.app/) 0.10.0以上
- [pdftk](https://www.pdflabs.com/tools/pdftk-the-pdf-toolkit/)（電子版ビルド時のみ）

## インストール方法

### Typstのインストール

#### Windows

```bash
winget install --id Typst.Typst
```

#### macOS

```bash
brew install typst
```

#### Linux

```bash
curl -sSL https://get.typst.app/ | sh
```

### pdftkのインストール（電子版ビルド時のみ必要）

#### Windows

[PDFtk Free](https://www.pdflabs.com/tools/pdftk-the-pdf-toolkit/) からダウンロードしてインストール

#### macOS

```bash
brew install pdftk-java
```

#### Linux (Ubuntu/Debian)

```bash
sudo apt-get install pdftk
```

## 使い方

### テンプレートとして使用する場合

1. このリポジトリをテンプレートとして使用して新しいリポジトリを作成
2. `book.yaml` ファイルを編集して書籍の基本情報を設定
3. `main.typ` ファイルを編集して章構成を設定
4. 各章のコンテンツを作成（`xx-xx-chapter-name/chapter-name.typ` 形式で）
5. 必要に応じて `template.typ` を編集してスタイルをカスタマイズ

### 執筆中のプレビュー

次のコマンドで執筆中にリアルタイムプレビューが可能です：

```bash
typst watch main.typ
```

- Linux環境ではPDFビューワー内でホットリロードします
- Adobe Acrobatで開いた場合、プロセスがPDFをロックするため更新できないことがあります
- Google Chromeでプレビューするとリロードで表示を更新できます

### ビルド方法

#### 印刷用データのビルド

```bash
typst compile main.typ
```

#### 電子版データのビルド

```bash
typst compile main.typ --input EBOOK=true ebook-body.pdf
pdftk A=covers/front-cover.pdf B=ebook-body.pdf C=covers/back-cover.pdf cat A B C output ebook.pdf
```

## ディレクトリ構成

```
.
├── main.typ                  # メインファイル
├── template.typ              # テンプレート定義
├── book.yaml                 # 書籍の基本情報
├── contributors.yaml         # 執筆者情報
├── contributors.typ          # 執筆者一覧ページの定義
├── colophon.typ              # 奥付の定義
├── emo.typ                   # 絵文字サポート
├── xx-xx-chapter-name/       # 各章のディレクトリ
│   └── chapter-name.typ      # 章のコンテンツ
├── covers/                   # 表紙関連
│   ├── front-cover.typ       # 表紙
│   └── back-cover.typ        # 裏表紙
├── contributor-avatars/      # 執筆者のアバター画像
├── emojis/                   # 絵文字ファイル
└── illusts/                  # イラスト
```

## ライセンス

このリポジトリはコピーレフトに則り使用可能です。テンプレートとして使用する場合は、以下の条件を遵守してください：

- **オリジナルリポジトリの明示**：このリポジトリ（四谷ラボ所属）が元であることを明記してください。
- **著作権表示の継承**：元の著作権表示をそのまま維持し、ドキュメント内に記載してください。
- **ライセンスの明示**：オリジナルと同じライセンスで派生物を公開してください。
- **オリジナルへの帰属表示**：リポジトリやドキュメント内で、オリジナルの作者および四谷ラボへの帰属を明確に示してください。
- **ソースコードの公開**：派生物のソースコードを公開し、他者がアクセス・利用できるようにしてください。

## 貢献

バグ報告や機能リクエストは、GitHubのIssueで受け付けています。プルリクエストも歓迎します。

## 連絡先

四谷ラボ: https://428lab.net
