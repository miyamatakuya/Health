アプリケーション名

# Health


# 開発環境

・ フロントエンド：HTML&CSS / JavaScript 
・ バックエンド：Ruby / Ruby on Rails
・ 単体テスト・結合テスト：RSpec
・ インフラ：AWS（EC2 / S3）
・ テキストエディタ：Visual Studio Code


# ログイン方法




# アプリ概要

このアプリはダイエット中の人が短期間で目標の体型を目指すために日々の体重を
記録することによりより、日々の自分の体重の変動やBMIが確認できることが特徴となります。

# 1. 体重と身長の登録

ヘッダーの体重登録ボタンから体重と身長を登録する画面に移動します。
体重と身長が入力できれば投稿するを押します。
身長と体重を入力することで自動的にBMIを出すこともできます。

<img width="705" alt="スクリーンショット 2021-03-30 19 23 56" src="https://user-images.githubusercontent.com/73232006/112974688-b4858e80-918d-11eb-9e0a-b23f7b616005.png">





<img width="666" alt="スクリーンショット 2021-03-30 19 24 58" src="https://user-images.githubusercontent.com/73232006/112974709-b8b1ac00-918d-11eb-9fa8-6c211ff05de6.png">






# 2. 日々の体重をグラフで表示

登録した体重がグラフになって表示されます。

<img width="1376" alt="スクリーンショット 2021-03-30 19 29 06" src="https://user-images.githubusercontent.com/73232006/112975172-4d1c0e80-918e-11eb-997f-d4fb289a5220.png">





<img width="1377" alt="スクリーンショット 2021-03-30 19 29 31" src="https://user-images.githubusercontent.com/73232006/112975190-51482c00-918e-11eb-9416-8082d05de70a.png">













# 3. 日々のBMIをグラフで表示

トップ画面のヘッダーの部分のBMIを押すことにより、
登録したBMIがグラフになって表示されます。

<img width="1347" alt="スクリーンショット 2021-03-30 19 48 33" src="https://user-images.githubusercontent.com/73232006/112977558-2a3f2980-9191-11eb-98ac-8cc8edcb144b.png">









<img width="1366" alt="スクリーンショット 2021-03-30 19 49 27" src="https://user-images.githubusercontent.com/73232006/112977576-2f9c7400-9191-11eb-87ee-061f064d0c39.png">





# 4. BMIと体重の削除

自分が登録した体重を削除することができます。
もちろんBMIの方を削除すれば体重とグラフが削除されます。

<img width="1370" alt="スクリーンショット 2021-03-31 13 16 48" src="https://user-images.githubusercontent.com/73232006/113090131-0e389800-9224-11eb-81f6-bc9b551fd479.png">








<img width="1368" alt="スクリーンショット 2021-03-31 13 17 53" src="https://user-images.githubusercontent.com/73232006/113089919-99655e00-9223-11eb-9ba7-f25ebe8c19f9.png">






<img width="1370" alt="スクリーンショット 2021-03-31 13 23 35" src="https://user-images.githubusercontent.com/73232006/113090331-8010e180-9224-11eb-85ef-1b05e17ddeb4.png">






<img width="1368" alt="スクリーンショット 2021-03-31 13 24 33" src="https://user-images.githubusercontent.com/73232006/113090336-83a46880-9224-11eb-82d8-f924081a9253.png">


# 製作背景

私自身がダイエットをしていた際に毎日体重の記録をつけることでモチベーションの持続し、
目標の体重を達成できたからです。
その際に毎日の体重が目に見えることができればもっとダイエットへのモチベーションが続くと思い
実際にグラフで自分の体重やBMIを目で確認できるアプリを作りたいと思いました。



# 目的のターゲット層

ダイエットを成功させたい人


# どんなニーズ&課題に

・



#  実装機能一覧

ユーザー管理機能（新規登録・ログイン）/ 身長と体重投稿機能/ BMI表示機能/ 体重のグラフ表示機能/
BMIのグラフ表示機能/
体重・BMIの投稿削除機能/ゲストログイン機能


# DB設計

<img width="635" alt="スクリーンショット 2021-03-30 19 16 16" src="https://user-images.githubusercontent.com/73232006/112973859-b864e100-918c-11eb-8881-f738dded33b5.png">





# 工夫したポイント

・成果が目に見えてわかるということをコンセプトにしていたので、
  体重とBMIのグラフをしっかり表示させる点を工夫しました。





# 今後実装したい機能

・Dockerの導入
・SNSアカウントとの連携
