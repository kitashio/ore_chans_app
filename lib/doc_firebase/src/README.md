## 📁featureフォルダの使い方
機能ごとに、フォルダはわけていく。
認証はauthでアプリの操作する機能はappで分ける。
機能が2個しかないので、今だとディレクトリ構造はこんな感じになる。

```
- feature
  - app
    - application
    - domain
    - presentation
    - data

  auth
    - application
    - domain
    - presentation
    - data
```