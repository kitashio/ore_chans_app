# AspectRatioの使い方
AspectRatioは、子要素のアスペクト比を維持するウィジェットです。
参考になったサイト

https://note-tmk.hatenablog.com/entry/2022/11/17/224750

aspectRatio: 1.618 / 1 // は黄金比だそうです。

黄金比とは、人が最も美しいと感じるバランスの比率のことであり、
世界で共通する美しさの指標といわれています。 
黄金比のバランス配分比率は「1：1.618」であり、
世界的な大企業の象徴的なロゴマークも黄金比で構成されているほどです。

**注意点**
Containerでラップしてないと使えないみたい。
```dart
Container(
            color: Colors.blue,
            alignment: Alignment.center,
            width: 100.0,
            height: 100.0,
            child: AspectRatio(
              aspectRatio: 1.618 / 1,
              child: Container(
                child: Image.asset(
                  'images/cat33.png',
                ),
              ),
            ),
          ),
```