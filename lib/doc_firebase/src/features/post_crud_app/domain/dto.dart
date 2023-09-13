import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ore_chans_app/doc_firebase/src/features/post_crud_app/domain/post/post.dart';

/// [PostDTO]は、Firestoreから取得したデータを格納するためのクラス
class PostDTO {
  final String? id;
  final String body;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  PostDTO({
    this.id,
    required this.body,
    this.createdAt,
    this.updatedAt,
  });

  // Firestoreから取得したデータをDTOに変換する
  factory PostDTO.fromFirestore(Map<String, dynamic> data, String documentId) {
    return PostDTO(
      id: documentId,
      body: data['body'] ?? '',
      createdAt: (data['createdAt'] as Timestamp?)?.toDate(),
      updatedAt: (data['updatedAt'] as Timestamp?)?.toDate(),
    );
  }

  // DTOをドメインモデルのPostに変換する
  Post toDomain() {
    return Post(
      id: id,
      body: body,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }
}
