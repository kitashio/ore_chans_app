import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ore_chans_app/features/image_generator/domain/girl_avatar.dart';

part 'response_data.freezed.dart';
part 'response_data.g.dart';

@freezed
class ResponseData with _$ResponseData {
  const factory ResponseData({
    required String status,
    required double generationTime,
    required int id,
    required List<String> output,
  }) = _ResponseData;
  const ResponseData._();

  factory ResponseData.fromJson(Map<String, dynamic> json) =>
      _$ResponseDataFromJson(json);

  GirlAvatar toGirlAvatar() {
    return GirlAvatar(imagePath: output.first);
  }
}
