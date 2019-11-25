# meshi-blog DB設計

## usersテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|email|string|null: false, unique: true|
|password|string|null: false|
|area|string|null: false|
### Association
  has_many :comments

## commentsテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|references|null: false, foreign_key: true|
|meshi_id|references|null: false, foreign_key: true|
|text|text|
|image|string|
### Association
  belongs_to :meshi
  belongs_to :user

## meshisテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
<!-- |image|string|null: false| -->
<!-- |area|string|null: false| -->

### Association
  has_many :comments

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...