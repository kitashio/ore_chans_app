import 'package:freezed_annotation/freezed_annotation.dart';

part 'girl_avatar.freezed.dart';

@freezed
class GirlAvatar with _$GirlAvatar {
  const factory GirlAvatar({
    required String imagePath,
  }) = _GirlAvatar;
}
