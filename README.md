## アプリ
http://13.112.192.43/
## アプリ名
Cats
## 概要
猫の里親募集アプリです

実装機能は下記のとおりです

・記事一覧表示機能  
・記事詳細表示機能  
・記事投稿機能  
・記事編集機能  
・記事削除機能  
・記事検索機能  
・管理ユーザー登録機能  
・管理ユーザーログイン機能  
・画像アップロード機能  
・DBテーブルのリレーション管理  

使用言語

・Ruby  
・Ruby on rails  
・HAML  
・SCSS  

## 制作背景

猫の里親を増やすためです。  
現在、ストレス社会と言われるほど日々働いている方々は、多くのストレスに晒されています。  
猫には人のストレスレベルを下げる研究結果が出ており、その効果は猫の画像を見ることでも得ることができます。  
ストレス過多のこの世を生き抜くために必要なものは猫だと感じ、基本仕様は猫の画像を見て癒されて、さらにはそこからお気に入りの猫ちゃんを里親として迎えることができるアプリができれば皆が幸せになれると思いました。  
既存の里親募集のサイトでは、猫を飼いたい層しか閲覧しませんが、猫投稿用のサイトを作成することで基本は猫を見て癒されるサイトとして運用し、いつも見ているこの子（猫）かわいいな、と思ってもらったらそこから里親になってもらうことが目的です。  

## DEMO

https://gyazo.com/93318dbec745d1bcd2797879dc2915e2

## 実装予定の内容
投稿ごとにタグ機能をつけてタグ検索をできるようにしていこうと思っています。  
既存の里親募集サイトの画像を集めて画像からサイトへリンクで飛べるようになればいいと思っています。

## DB設計
## usersテーブル
|Column|Type|Options|
|------|----|-------|
|email|string|null: false|
|encrypted_password|string|null: false|
|name|string|null: false|
### Association
- has_many :tweets

## tweetsテーブル
|Column|Type|Options|
|------|----|-------|
|back|string|null: false|
|personal|string|null: false|
|health|string|null: false|
|method|string|null: false|
|image|string|null: false|
|user_id|integer|null: false|

### Association
- belongs_to :user