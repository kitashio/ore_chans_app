import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ore_chans_app/doc_firebase/src/features/post_crud_app/domain/converter/timestamp_converter.dart';

part 'post.freezed.dart';
part 'post.g.dart';

/// [コマンドを実行したら起動したままにするwatchがついたコマンド]
/// watchがあると、毎回コマンドを実行しなくて良くなる。
// flutter pub run build_runner watch --delete-conflicting-outputs

/// [postコレクションのドキュメントのモデルクラス]
/*Freezedを使うと何がうれしいのか?
toJson()やfromJson()を自動生成してくれるので、
モデルクラスを作るときに、
toJson()やfromJson()を書く手間が省ける。
copyWith()も自動生成してくれるので、
コンストラクターの引数を省略したいときに便利。
 */
@freezed
class Post with _$Post {
  const factory Post({
    String? id,// ドキュメントIDを指定するのに使う
    @Default('') String body,// 投稿の本文
    @TimestampConverter() DateTime? createdAt,// 投稿の作成日時
    @TimestampConverter() DateTime? updatedAt,// 投稿の更新日時
  }) = _Post;

  factory Post.fromJson(Map<String, dynamic> json) =>
      _$PostFromJson(json);
}