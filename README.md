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
猫の里親サイトの利用者層を増やすためです。  
既存の里親募集のサイトでは、猫を飼いたい層しか閲覧しませんが、猫投稿用のサイトを作成することで基本は猫を見て癒されるサイトとして運用し、いつも見ているこの猫かわいいなと思ってもらったらそこから里親になってもらうことが目的です。  

## DEMO

![kaboompics_cosy workplace](https://gyazo.com/93318dbec745d1bcd2797879dc2915e2)

## 実装予定の内容
投稿ごとにタグ機能をつけてタグ検索をできるようにしていこうと思っています

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