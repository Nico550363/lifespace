# README

## 概要
アプリケーション名: lifespace  
* 生活についての情報を共有するアプリケーション  

アドレス: http://3.113.231.107/


## 使用言語
haml, sass, javascript, ruby, ruby on rails


## 使い方
1. ヘッダーの右上に新規登録のボタンでアカウント登録する。  
<img width="1440" alt="スクリーンショット 2020-03-26 13 14 11" src="https://user-images.githubusercontent.com/56423832/77609666-ec973780-6f63-11ea-8347-8bb09037789e.png">  
<img width="1439" alt="スクリーンショット 2020-03-26 12 25 14" src="https://user-images.githubusercontent.com/56423832/77607259-16992b80-6f5d-11ea-8119-72b17f7f1a88.png">


2. ヘッダーの右上の投稿ボタンをクリックする。

3. 投稿ページに名前,ジャンル,説明,画像を入力し、投稿ボタンをクリックする。
<img width="1440" alt="スクリーンショット 2020-03-26 13 24 00" src="https://user-images.githubusercontent.com/56423832/77610120-2f0d4400-6f65-11ea-81eb-ec81f8a77dfa.png">

4. トップページに投稿作品が拝見できます。  

* その他: マイページ、編集機能、コメント機能がついています。


<!-- This README would normally document whatever steps are necessary to get the
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

* ... -->



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