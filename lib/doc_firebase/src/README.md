## 📁featureフォルダの使い方
機能ごとに、フォルダはわけていく。
認証はauthでアプリの操作する機能はappで分ける。
機能が2個しかないので、今だとディレクトリ構造はこんな感じになる。

```
- feature
  - post_crud_app
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

## AndroidをFirebaseで使用する場合
最新のFlutter3では、以下のエラーが発生する
```
AILURE: Build failed with an exception.

* What went wrong:
Execution failed for task ':app:mapDebugSourceSetPaths'.
> Error while evaluating property 'extraGeneratedResDir' of task ':app:mapDebugSourceSetPaths'
   > Failed to calculate the value of task ':app:mapDebugSourceSetPaths' property 'extraGeneratedResDir'.
      > Querying the mapped value of provider(java.util.Set) before task ':app:processDebugGoogleServices' has completed is not supported

* Try:
> Run with --stacktrace option to get the stack trace.
> Run with --info or --debug option to get more log output.
> Run with --scan to get full insights.

* Get more help at https://help.gradle.org

BUILD FAILED in 38s
Exception: Gradle task assembleDebug failed with exit code 1
```

こちらのエラーを解消するには、以下の手順を踏む必要がある。
android/app/build.gradleのdependenciesに以下を追加する

```
dependencies {
        classpath 'com.android.tools.build:gradle:7.3.0'
        // START: FlutterFire Configuration
        classpath 'com.google.gms:google-services:4.3.14'// 4.3.10 -> 4.3.14に変更しないとエラーが出る
        // END: FlutterFire Configuration
        classpath "org.jetbrains.kotlin:kotlin-gradle-plugin:$kotlin_version"
    }
```

上記の設定をすると、build時に発生するエラーを解消できる。

**参考にした記事**
https://zenn.dev/welchi/articles/flutter-3101-firebase-error