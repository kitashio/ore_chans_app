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

## min SdkVersionを変更しない対応
defaultだと、19になっている。このまま、ビルドすると以下のエラーが発生する。
```
FAILURE: Build failed with an exception.

* What went wrong:
Execution failed for task ':app:mergeExtDexDebug'.


> A failure occurred while executing com.android.build.gradle.internal.tasks.DexMergingTaskDelegate
   > There was a failure while executing work items


      > A failure occurred while executing com.android.build.gradle.internal.tasks.DexMergingWorkAction


         > com.android.builder.dexing.DexArchiveMergerException: Error while merging dex archives: 
           The number of method references in a .dex file cannot exceed 64K.


           Learn how to resolve this issue at https://developer.android.com/tools/building/multidex.html

* Try:
> Run with --stacktrace option to get the stack trace.
> Run with --info or --debug option to get more log output.
> Run with --scan to get full insights.

* Get more help at https://help.gradle.org

BUILD FAILED in 51s


[!] App requires Multidex support


    Multidex support is required for your android app to build since the number of methods has exceeded 64k. See https://docs.flutter.dev/deployment/android#enabling-multidex-support for more information. You may pass the --no-multidex flag to skip Flutter's multidex support to use a manual solution.


    Flutter tool can add multidex support. The following file will be added by flutter:


        android/app/src/main/java/io/flutter/app/FlutterMultiDexApplication.java


cannot prompt without a terminal ui


Exception: Gradle task assembleDebug failed with exit code 1


Exited
```

## 対応方法
こちらのサイトに書いてあるように、minSdkVersionを20以下の対応をする。
https://developer.android.com/studio/build/multidex?hl=ja

```
android {
    defaultConfig {
        ...
        minSdkVersion 15
        targetSdkVersion 33
        multiDexEnabled true
    }
    ...
}

dependencies {
    implementation "androidx.multidex:multidex:2.0.1"
}
```