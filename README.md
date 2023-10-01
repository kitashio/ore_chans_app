# 恋愛偏差値テスト「らぶこれくしょん」

<img src="./assets/images/readme/0-0519424f-b51b-49e7-9804-96c443403da5.png" width=300>
<img src="./assets/images/readme/0-1896851f-425c-4163-87c2-b1f0a3d7acfb.png" width=300>
<img src="./assets/images/readme/0-48e14f0f-1a1d-4300-a326-a80d7dd421dc.png" width=300>
<img src="./assets/images/readme/0-54428100-a2d3-4663-a830-4995aed46e1f.png" width=300>
<img src="./assets/images/readme/0-64dc52ab-4cd6-4635-a058-7f131b5c7cb3.png" width=300>

## 概要
「恋愛偏差値テスト」は、ユーザーの恋愛に関する回答を基に、恋愛偏差値を計算するアプリケーションです。ユーザーは性別を選択し、画像生成AIによって生成されたキャラクターからの質問に答えることでスコアを獲得します。高得点を獲得すると、キャラクターの画像をコレクションとして保存することができます。楽しみながら恋愛が学べる画期的なアプリです！

## 主要機能
<br>・`性別選択`: アプリ起動時にユーザーは男性を選択します。将来的には女性向けの選択も追加される予定です。
<br>・`画像生成`: 画像生成AIを使用してキャラクターの画像が生成されます。
<br>・`質問画面`: 生成されたキャラクターが表示され、恋愛に関する質問が行われます。質問はキャラクターの声（ずんだもん）で読み上げられます（予定）。
<br>・`スコアリング`: ユーザーの回答に基づいて得点が計算されます。一定の得点を獲得すると、キャラクターの画像をコレクションとして保存できます。
<br>・`コレクション`: ユーザーが保存したキャラクターの画像は、コレクション画面で確認できます。

## 使用技術
### プラットフォーム & 言語
- Flutter: クロスプラットフォームのモバイルアプリ開発フレームワーク。
- Dart: Flutterアプリの開発に使用されるプログラミング言語。
- Node.js: サーバーサイドのJavaScript実行環境。

### 主要なライブラリ & パッケージ
- Firebase Cloud Functions: サーバーレスの関数実行環境で、Node.jsを使用してAPIやバックエンドロジックを開発・デプロイ。
- Stable Diffusion: 画像生成API。Firebase Cloud Functionsを通じて、ユーザーの入力やアプリのデータを基に画像を動的に生成。
- flutter_riverpod: ステート管理のためのフック。
- dio: HTTPクライアント。
- firebase_auth & firebase_core & cloud_firestore: Firebaseの認証、コア、およびデータベース機能。
- freezed_annotation & json_annotation: Dartのデータクラスの生成とJSONのシリアル化/デシリアル化。
- flutter_launcher_icons & flutter_native_splash: アイコンとスプラッシュスクリーンのカスタマイズ。
- retrofit: DartのHTTPクライアントジェネレータ。
- flutter_spinkit: ローディングインジケータのコレクション。
- smooth_page_indicator: ページインジケータ。
- flutter_gen_runner: Flutterのリソースジェネレータ。
- flutter_tts: テキストから音声への変換。

### その他の技術
- Stable Diffusion: 画像生成API。


## メンバー
- Jboy
- yui
- taisei
- satoru
- minn

5人で頑張ります！🔥


## ライセンス
