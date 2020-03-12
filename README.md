# NAME
## NO MOVIE NO LIFE

# 使用言語
## Ruby on Rails 5.2.4.1

## 主な機能
- ログイン機能
- ログアウト機能
- 新規投稿機能
- 投稿編集機能
- 投稿削除機能
- 投稿詳細表示機能
- コメント機能
- いいね機能
- 閲覧数表示機能
- ページネーション機能
- 検索機能

# サービス内容
## twitterのように、身近に、気楽にをモットーとした映画共有アプリで、  画像やコメントを投稿できます

# DB設計
## likes table
|Column|Type|Options|
|------|----|-------|
|tweet_id|integer|null: false, foreign_key: true|
|user_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :tweet
- belongs_to :user

## tweets table
|Column|Type|Options|
|------|----|-------|
|name|string||
|text|string||
|image|text||
### Association
- belongs_to :user
- has_many :comments

## comments table
|Column|Type|Options|
|------|----|-------|
|user_id|integer||
|tweet_id|integer||
|text|text||
### Association
- belongs_to :tweet 
- belongs_to :user 

## users table
|Column|Type|Options|
|------|----|-------|
|email|string|null: false|
|password|string|null: false|
|nickname|string|null: false|
### Association
- has_many :tweets
- has_many :comments 
- has_many :items