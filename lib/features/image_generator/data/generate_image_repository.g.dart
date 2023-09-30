// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'generate_image_repository.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers

class _GenerateImageRepository implements GenerateImageRepository {
  _GenerateImageRepository(
    this._dio, {
    this.baseUrl,
  }) {
    baseUrl ??= 'https://asia-northeast1-ore-chans-app.cloudfunctions.net';
  }

  final Dio _dio;

  String? baseUrl;

  @override
  Future<ResponseData> generateGirlAvatar() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final Map<String, dynamic>? _data = null;
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<ResponseData>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/generateImageFromText',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    final value = ResponseData.fromJson(_result.data!);
    return value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }

  String _combineBaseUrls(
    String dioBaseUrl,
    String? baseUrl,
  ) {
    if (baseUrl == null || baseUrl.trim().isEmpty) {
      return dioBaseUrl;
    }

    final url = Uri.parse(baseUrl);

    if (url.isAbsolute) {
      return url.toString();
    }

    return Uri.parse(dioBaseUrl).resolveUri(url).toString();
  }
}

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$generateImageRepositoryHash() =>
    r'cfd383eb70d986fa8112c43cd2dc9eb78c5f54da';

/// See also [generateImageRepository].
@ProviderFor(generateImageRepository)
final generateImageRepositoryProvider =
    Provider<GenerateImageRepository>.internal(
  generateImageRepository,
  name: r'generateImageRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$generateImageRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef GenerateImageRepositoryRef = ProviderRef<GenerateImageRepository>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
