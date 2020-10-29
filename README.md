# README
<img width="968" alt="スクリーンショット 2020-10-09 22 03 19" src="https://user-images.githubusercontent.com/66157250/95586205-4fbd6700-0a7b-11eb-8c1a-e8231f461aae.png">

## アプリ名
## **simpree**
「simply」(簡単に) + 「freely」(自由に)を合わせて、シンプリーと呼びます。

## 概要
動画投稿機能を使用したメモアプリ。
ただし、使い方はユーザー次第でいろいろな使い方が出来る。<br>例 : 語学勉強、習い事、スポーツ、日記、何かの記録などなど自由な発想で利用していただきたい。

## 本番環境(デプロイ先　テストアカウント＆ID)

## 制作背景(意図)
英語の勉強のため字幕で映画を見ていた際に、あるワンシーンのみを切り取って残せれば、その部分だけをあとで繰り返し見て英語会話の練習(シュチュレーションごとの練習)になるのではないかと思ったのが制作するきっかけです。

## DEMO
マイページ（動画投稿一覧、例：スケートボードの技ごとに投稿）
<img width="1083" alt="スクリーンショット 2020-10-10 8 29 11" src="https://user-images.githubusercontent.com/66157250/95639255-ba4dc180-0ad2-11eb-8b61-0af96f64fa0e.png">

新規投稿ページ
<img width="1089" alt="スクリーンショット 2020-10-10 8 34 25" src="https://user-images.githubusercontent.com/66157250/95639449-70191000-0ad3-11eb-9163-89a4d18cb82d.png">

詳細ページ
<img width="1089" alt="スクリーンショット 2020-10-10 8 33 48" src="https://user-images.githubusercontent.com/66157250/95639430-5c6da980-0ad3-11eb-999c-688d67699452.png">


## 工夫したポイント
自由な発想でいろいろな使い方をしていただきたいので、出来る限り簡単な操作でアイコンを多用しViewもシンプルに致しました。<br>
またActive Storageという機能に興味があったので、動画投稿機能の実装にて使用致しました。<br>
詳しくは下記URLへ<br>
https://railsguides.jp/active_storage_overview.html

※ロゴはAdobe illustratorで自作しました。
## 使用技術(開発環境)<br>
・Ruby 2.6.6<br>
・Rails  5.2.3<br>
・Bundler 1.17.2<br>
・mysql 5.6.47

## 課題や今後実装したい機能<br>
・カテゴリー、またはジャンル分け出来るようにする。<br>
・グループ機能を追加(友達、会社、学校など)<br>
・グループ機能を追加<br>
・グループ内で動画投稿。<br>
・グループ機能を追加<br>
・グループ内にて、動画についてコメント出来るようにする。<br>
・投稿数が多くなった際にどのように投稿したものを管理するかが課題でもあります。

## DB設計
## postsテーブル

|Column|Type|Options|
|------|----|-------|
|title|string|null: false|
|text|text|null: false|
|user_id|integer|null: false|

### Association
- belongs_to :user
- has_one_attached :clip
## usersテーブル

|Column|Type|Options|
|------|----|-------|
|nickname|string|null: false|
|email|string|null: false|
|encrypted_password|string|null: false|

### Association
- has_many :posts


