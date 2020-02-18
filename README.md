# README

This README would normally document whatever steps are necessary to get the
application up and running.

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



## Userテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|email|string|null: false|
|image_name|string|null: false|
|created_at|datetime|null: false|
|updated_at|datetime|null: false|
|password|string|null: false|
|remember_digest|string|null: false|
|admin|boolean|null: false|
|reset_digest|string|null: false|
|reset_sent_at|datetime|null: false|
### Association
- has_many :micropost
- has_many :favorite
- has_many :information


## Micropostテーブル
|Column|Type|Options|
|------|----|-------|
|content|text|null: false|
|user_id|lnteger|null: false|
|created_at|datetime|null: false|
|updated_at|datetime|null: false|
|picture|string|null: false|
### Association
- belongs_to :user


##Favoriteテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|lnteger|null: false|
|micropost_id|lnteger|null: false|
|created_at|datetime|null: false|
|updated_at|datetime|null: false|
### Association
- belongs_to :user


##Informationテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|lnteger|null: false|
|created_at|datetime|null: false|
|updated_at|datetime|null: false|
|picture|string|null: false|
|Number|Integer|null: false|
### Association
- belong_to :user