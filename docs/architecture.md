# App Architecture

## 1. 導入

### 目的
このドキュメントは、チームメンバーや審査員の方々に、アプリのアーキテクチャとその選択の背後にある理由を明確に伝えることを目的としています。チームメンバーには開発の参考に、審査員の方々にはアプリの設計と実装の品質を評価する際に参考にしていただければ幸いです。

### アーキテクチャの選択
本アプリでは、メンバーからの「学習したい！」という要望を基に、[CODE WITH ANDREA](https://codewithandrea.com/)の記事を参考に、「`feature-first`」のアプローチと`ドメイン駆動設計（DDD）`を採用しています。このアーキテクチャの選択により、アプリの機能面を中心に設計を行い、疎結合高凝集なアプリを目指します。著者自身も経験が浅いので誤っている部分がありましたら指摘をいただけると嬉しいです。<br><br>
また、ハッカソンの規模感的に少し冗長な部分もあるかもしれませんが、`チームメンバーの知識・技術力向上を目的に設計`を行っている点をご留意いただけますと幸いです。

### 参考記事
・[Flutter Project Structure: Feature-first or Layer-first?](https://codewithandrea.com/articles/flutter-project-structure/)

・[Flutter App Architecture with Riverpod: An Introduction](https://codewithandrea.com/articles/flutter-app-architecture-riverpod-introduction/)

## 2. アーキテクチャの概要

### 機能優先のアプローチ（Feature First）
「機能優先」のアプローチは、各機能を独立したモジュールとしてfeatures配下に整理する設計方法です。<br><br>この方法の主な利点は以下の通りです：

1. 独立性：各機能が独立したディレクトリに整理されているため、特定の機能に関連するすべてのコードが一箇所に集約されます。これにより、`機能ごとの開発、テスト、デバッグが容易になります`。また、新しい機能を追加する場合、新しい機能フォルダを追加するだけで良いので、`既存のコードに与える影響を抑えることができます。`

2. 開発効率の向上：Feature Firstのアプローチは、チーム開発の際の利点があります。各機能が独立しているため、一つの機能に関する変更が他の機能に影響を与えるリスクが低くなり、チームメンバーが同時に異なる機能に取り組む際の`コンフリクトを最小限に抑えることができます。`ハッカソンのように短い時間で頻繁に変更が加えられるプロジェクトにおいて、この恩恵を受けやすいと思います。

<br>

```
‣ lib
  ‣ src
    ‣ common_widgets
    ‣ constants
    ‣ exceptions
    ‣ features
      ‣ auth
      ‣ todo
    ‣ localization
    ‣ routing
    ‣ utils
```

### 注意点
Feature Firstのアプローチを採用する上で注意する点は下記の通りです。

1. 共通コードの取り扱い：複数の機能で共通して使用されるコードやコンポーネントの配置場所について、重複コードが散在するリスクがあるため、なるべく`common_widgets`や`utils`に含めるべきです。ただ、過剰にコンポーネント化しすぎても保守が大変になるので、適切な共通コードの作成が重要です。

2. 機能の定義の曖昧さ：どこまでを一つの機能かどうか定義することは難しく、また、すべての機能を完全に独立させることは現実的に難しい場合が多いので、各機能間の依存を最小限に抑え、明確に管理することが必要です。`「この粒度で問題ないか？」と悩んだらチームで相談して決めていきましょう。`

また、[Feature-first or Layer-first?](https://codewithandrea.com/articles/flutter-project-structure/)にも記載がありますが、ユーザが何をアプリで見るか（画面単位）ではなく`ユーザが何をするか（機能単位）`で細分化していくことが重要です。

```
// good
   ‣ features
      ‣ auth
      ‣ todo

// bad
   ‣ features
      ‣ sign_in_screen
      ‣ sign_up_screen
      ‣ todo_screen
      ‣ todo_detail_screen
```

### 参考記事
・[そのファイル、本当に hooks/・utils/ に入れるんですか？ ―― React プロジェクトを蝕む「見かけ駆動パッケージング」](https://qiita.com/honey32/items/dbf3c5a5a71636374567)
