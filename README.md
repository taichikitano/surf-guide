# README

# アプリケーション名
  SURF GUIDE

# アプリケーション概要
  サーフィンのガイドの検索や予約ができる。  
  また、一般の方がサーフガイドとして登録ができる。
# URL
  https://surf-guide.onrender.com
# テスト用アカウント  
  <Basic認証>  
  パスワード：2222  
  ID：admin  
  <テスト用ユーザー>  
  メールアドレス：test＠test  
  パスワード：111111  
  <テスト用ユーザー(ガイド)>  
  メールアドレス：test@testtest  
  パスワード：111111

# 利用方法
## ＜サーフガイドの検索・予約＞
  1.トップページのヘッダーから新規登録を行う。  
  2.ガイドを探すボタンから、希望のサーフポイントを選択する。(未実装)  
  3.希望のガイド及び日時を選択し、予約をする。(未実装)
## ＜サーフガイドとして登録＞
  1.トップページのヘッダーのガイド用ボタンから新規登録を行う。  
  2.ガイド可能なサーフポイント及び日時を選択し、登録する。(予約日時登録機能未実装)

# アプリケーションを作成した背景
  サーフィンの課題として、地元のローカルサーファーが優先的に波に乗る権利を主張し、  
  訪問者のビジターサーファーに対して排他的な態度を取る「ローカル問題」というものがあります。  
  基本的にサーフィンでは一つの波に一人しか乗ることが出来ないというルールがある為、  
  特に人気のあるサーフポイントでは、ローカルサーファーとビジターサーファーの間で、対立が起こりやすく、  
  ビジターサーファーは良い波になかなか乗れない状況となってしまいます。  
  この問題は双方のコミュニケーション不足と、ビジターが増えてもローカルへのメリットが無い点が原因だと仮定しました。  
  そこで、少しでもこの問題を解決する為に、ローカルがサーフガイドとして登録でき、  
  ローカルとビジターが簡単に繋がることが出来るガイド予約アプリを開発することにしました。  

# 実装予定の機能
  ・予約機能(日時選択)  
  ・ガイド検索機能、一覧表示機能  
  ・クレジットカード決済機能  

# データベース設計
  [![Image from Gyazo](https://i.gyazo.com/92eb81a7a5275b02c638f262c6d90607.png)](https://gyazo.com/92eb81a7a5275b02c638f262c6d90607)

# 画面遷移図
  [![Image from Gyazo](https://i.gyazo.com/0f1253e389093ada3354c1a63cde8812.png)](https://gyazo.com/0f1253e389093ada3354c1a63cde8812)

# 開発環境
  HTML/CSS/JavaScript/Ruby/Ruby on Rails/MySQL/PostgreSQL/Github/Visual Studio Code

# ローカルでの動作方法
  以下のコマンドを順に実行。  
  % git clone https://github.com/taichikitano/surf-guide.git  
  % cd surf-guide  
  % bundle install  
  % yarn install  
