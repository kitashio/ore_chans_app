# FractionallySizedBoxとは?
指定した割合で子Widgetのサイズを決めるWidget

以下は、FractionallySizedBoxの使用例のいくつかです。

背景の部分的な色付け:
親コンテナの一部だけを異なる色で表示する場合などに使用できます。

```dart
Container(
  color: Colors.blue,
  child: FractionallySizedBox(
    widthFactor: 0.5,
    heightFactor: 0.5,
    child: Container(
      color: Colors.red,
    ),
  ),
);
```

画像の部分的な表示:
大きな画像を持っていて、その一部だけを表示する場合にも使えます。
使用するときは、Flexibleでラップしないと画面いっぱいに画像が広がってしまうので注意が必要です。

```dart
Container(
  color: Colors.blue,
  child: FractionallySizedBox(
    widthFactor: 0.5,
    heightFactor: 0.5,
    child: Image.asset(
      'images/cat33.png',
    ),
  ),
);
```