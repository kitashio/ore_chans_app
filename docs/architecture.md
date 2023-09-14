# App Architecture

## 1.導入

### 目的
このドキュメントは、チームメンバーや審査員の方々に、アプリのアーキテクチャとその選択の背後にある理由を明確に伝えることを目的としています。チームメンバーには開発の参考に、審査員の方々にはアプリの設計と実装の品質を評価する際に参考にしていただければ幸いです。

### アーキテクチャの選択
本アプリでは、メンバーからの「学習したい！」という要望を基に、[CODE WITH ANDREA](https://codewithandrea.com/)の記事を参考に、「`feature-first`」のアプローチと`ドメイン駆動設計（DDD）`を採用しています。このアーキテクチャの選択により、アプリの機能面を中心に設計を行い、疎結合高凝集なアプリを目指します。著者自身も経験が浅いので誤っている部分がありましたら指摘をいただけると嬉しいです。<br><br>
また、ハッカソンの規模感的に少し冗長な部分もあるかもしれませんが、`チームメンバーの知識・技術力向上を目的に設計`を行っている点をご留意いただけますと幸いです。

### 参考記事
・[Flutter Project Structure: Feature-first or Layer-first?](https://codewithandrea.com/articles/flutter-project-structure/)

・[Flutter App Architecture with Riverpod: An Introduction](https://codewithandrea.com/articles/flutter-app-architecture-riverpod-introduction/)
