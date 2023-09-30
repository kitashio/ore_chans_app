// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'girl_avatar.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GirlAvatar {
  String get imagePath => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GirlAvatarCopyWith<GirlAvatar> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GirlAvatarCopyWith<$Res> {
  factory $GirlAvatarCopyWith(
          GirlAvatar value, $Res Function(GirlAvatar) then) =
      _$GirlAvatarCopyWithImpl<$Res, GirlAvatar>;
  @useResult
  $Res call({String imagePath});
}

/// @nodoc
class _$GirlAvatarCopyWithImpl<$Res, $Val extends GirlAvatar>
    implements $GirlAvatarCopyWith<$Res> {
  _$GirlAvatarCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imagePath = null,
  }) {
    return _then(_value.copyWith(
      imagePath: null == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GirlAvatarCopyWith<$Res>
    implements $GirlAvatarCopyWith<$Res> {
  factory _$$_GirlAvatarCopyWith(
          _$_GirlAvatar value, $Res Function(_$_GirlAvatar) then) =
      __$$_GirlAvatarCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String imagePath});
}

/// @nodoc
class __$$_GirlAvatarCopyWithImpl<$Res>
    extends _$GirlAvatarCopyWithImpl<$Res, _$_GirlAvatar>
    implements _$$_GirlAvatarCopyWith<$Res> {
  __$$_GirlAvatarCopyWithImpl(
      _$_GirlAvatar _value, $Res Function(_$_GirlAvatar) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imagePath = null,
  }) {
    return _then(_$_GirlAvatar(
      imagePath: null == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GirlAvatar implements _GirlAvatar {
  const _$_GirlAvatar({required this.imagePath});

  @override
  final String imagePath;

  @override
  String toString() {
    return 'GirlAvatar(imagePath: $imagePath)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GirlAvatar &&
            (identical(other.imagePath, imagePath) ||
                other.imagePath == imagePath));
  }

  @override
  int get hashCode => Object.hash(runtimeType, imagePath);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GirlAvatarCopyWith<_$_GirlAvatar> get copyWith =>
      __$$_GirlAvatarCopyWithImpl<_$_GirlAvatar>(this, _$identity);
}

abstract class _GirlAvatar implements GirlAvatar {
  const factory _GirlAvatar({required final String imagePath}) = _$_GirlAvatar;

  @override
  String get imagePath;
  @override
  @JsonKey(ignore: true)
  _$$_GirlAvatarCopyWith<_$_GirlAvatar> get copyWith =>
      throw _privateConstructorUsedError;
}
