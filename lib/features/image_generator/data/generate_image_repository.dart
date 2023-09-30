import 'package:dio/dio.dart';
import 'package:ore_chans_app/features/image_generator/data/dtos/response_data.dart';
import 'package:retrofit/retrofit.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'generate_image_repository.g.dart';

@Riverpod(keepAlive: true)
GenerateImageRepository generateImageRepository(
        GenerateImageRepositoryRef ref) =>
    GenerateImageRepository(Dio());

@RestApi(
    baseUrl: 'https://asia-northeast1-meditation-life-pj.cloudfunctions.net')
abstract class GenerateImageRepository {
  factory GenerateImageRepository(Dio dio, {String baseUrl}) =
      _GenerateImageRepository;
// TODO(taisei) 眠すぎ。気力が戻ったらリファクタ
  @GET('/generateImageFromText')
  Future<ResponseData> generateGirlAvatar();
}
