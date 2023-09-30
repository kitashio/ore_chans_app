// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'response_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ResponseData _$ResponseDataFromJson(Map<String, dynamic> json) {
  return _ResponseData.fromJson(json);
}

/// @nodoc
mixin _$ResponseData {
  String get status => throw _privateConstructorUsedError;
  double get generationTime => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  List<String> get output => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResponseDataCopyWith<ResponseData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseDataCopyWith<$Res> {
  factory $ResponseDataCopyWith(
          ResponseData value, $Res Function(ResponseData) then) =
      _$ResponseDataCopyWithImpl<$Res, ResponseData>;
  @useResult
  $Res call(
      {String status, double generationTime, int id, List<String> output});
}

/// @nodoc
class _$ResponseDataCopyWithImpl<$Res, $Val extends ResponseData>
    implements $ResponseDataCopyWith<$Res> {
  _$ResponseDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? generationTime = null,
    Object? id = null,
    Object? output = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      generationTime: null == generationTime
          ? _value.generationTime
          : generationTime // ignore: cast_nullable_to_non_nullable
              as double,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      output: null == output
          ? _value.output
          : output // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ResponseDataCopyWith<$Res>
    implements $ResponseDataCopyWith<$Res> {
  factory _$$_ResponseDataCopyWith(
          _$_ResponseData value, $Res Function(_$_ResponseData) then) =
      __$$_ResponseDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String status, double generationTime, int id, List<String> output});
}

/// @nodoc
class __$$_ResponseDataCopyWithImpl<$Res>
    extends _$ResponseDataCopyWithImpl<$Res, _$_ResponseData>
    implements _$$_ResponseDataCopyWith<$Res> {
  __$$_ResponseDataCopyWithImpl(
      _$_ResponseData _value, $Res Function(_$_ResponseData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? generationTime = null,
    Object? id = null,
    Object? output = null,
  }) {
    return _then(_$_ResponseData(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      generationTime: null == generationTime
          ? _value.generationTime
          : generationTime // ignore: cast_nullable_to_non_nullable
              as double,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      output: null == output
          ? _value._output
          : output // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ResponseData extends _ResponseData {
  const _$_ResponseData(
      {required this.status,
      required this.generationTime,
      required this.id,
      required final List<String> output})
      : _output = output,
        super._();

  factory _$_ResponseData.fromJson(Map<String, dynamic> json) =>
      _$$_ResponseDataFromJson(json);

  @override
  final String status;
  @override
  final double generationTime;
  @override
  final int id;
  final List<String> _output;
  @override
  List<String> get output {
    if (_output is EqualUnmodifiableListView) return _output;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_output);
  }

  @override
  String toString() {
    return 'ResponseData(status: $status, generationTime: $generationTime, id: $id, output: $output)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ResponseData &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.generationTime, generationTime) ||
                other.generationTime == generationTime) &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._output, _output));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, generationTime, id,
      const DeepCollectionEquality().hash(_output));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ResponseDataCopyWith<_$_ResponseData> get copyWith =>
      __$$_ResponseDataCopyWithImpl<_$_ResponseData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ResponseDataToJson(
      this,
    );
  }
}

abstract class _ResponseData extends ResponseData {
  const factory _ResponseData(
      {required final String status,
      required final double generationTime,
      required final int id,
      required final List<String> output}) = _$_ResponseData;
  const _ResponseData._() : super._();

  factory _ResponseData.fromJson(Map<String, dynamic> json) =
      _$_ResponseData.fromJson;

  @override
  String get status;
  @override
  double get generationTime;
  @override
  int get id;
  @override
  List<String> get output;
  @override
  @JsonKey(ignore: true)
  _$$_ResponseDataCopyWith<_$_ResponseData> get copyWith =>
      throw _privateConstructorUsedError;
}
