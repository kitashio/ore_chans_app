# domainフォルダ
そもそもドメインとは何か?

短く説明すると: アプリ内で使用するオブジェクトをまとめたもの

テニスサークルの情報をまとめてモデルクラスにするとこんなイメージです。
```dart
@freezed
class TennisCircle with _$TennisCircle {
  const factory TennisCircle({
    @Default(0) int memberCount,// メンバーの人数
    @Default('') String rule,// ルール
  }) = _TennisCircle;

  factory TennisCircle.fromJson(Map<String, dynamic> json) =>
      _$TennisCircleFromJson(json);
}
```