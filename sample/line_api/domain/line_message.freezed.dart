// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'line_message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LinePushMessage _$LinePushMessageFromJson(Map<String, dynamic> json) {
  return _LinePushMessage.fromJson(json);
}

/// @nodoc
mixin _$LinePushMessage {
  String get to => throw _privateConstructorUsedError;
  List<LineMessageContent> get messages => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LinePushMessageCopyWith<LinePushMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LinePushMessageCopyWith<$Res> {
  factory $LinePushMessageCopyWith(
          LinePushMessage value, $Res Function(LinePushMessage) then) =
      _$LinePushMessageCopyWithImpl<$Res, LinePushMessage>;
  @useResult
  $Res call({String to, List<LineMessageContent> messages});
}

/// @nodoc
class _$LinePushMessageCopyWithImpl<$Res, $Val extends LinePushMessage>
    implements $LinePushMessageCopyWith<$Res> {
  _$LinePushMessageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? to = null,
    Object? messages = null,
  }) {
    return _then(_value.copyWith(
      to: null == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as String,
      messages: null == messages
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<LineMessageContent>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LinePushMessageCopyWith<$Res>
    implements $LinePushMessageCopyWith<$Res> {
  factory _$$_LinePushMessageCopyWith(
          _$_LinePushMessage value, $Res Function(_$_LinePushMessage) then) =
      __$$_LinePushMessageCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String to, List<LineMessageContent> messages});
}

/// @nodoc
class __$$_LinePushMessageCopyWithImpl<$Res>
    extends _$LinePushMessageCopyWithImpl<$Res, _$_LinePushMessage>
    implements _$$_LinePushMessageCopyWith<$Res> {
  __$$_LinePushMessageCopyWithImpl(
      _$_LinePushMessage _value, $Res Function(_$_LinePushMessage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? to = null,
    Object? messages = null,
  }) {
    return _then(_$_LinePushMessage(
      to: null == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as String,
      messages: null == messages
          ? _value._messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<LineMessageContent>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LinePushMessage implements _LinePushMessage {
  _$_LinePushMessage(
      {required this.to, required final List<LineMessageContent> messages})
      : _messages = messages;

  factory _$_LinePushMessage.fromJson(Map<String, dynamic> json) =>
      _$$_LinePushMessageFromJson(json);

  @override
  final String to;
  final List<LineMessageContent> _messages;
  @override
  List<LineMessageContent> get messages {
    if (_messages is EqualUnmodifiableListView) return _messages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_messages);
  }

  @override
  String toString() {
    return 'LinePushMessage(to: $to, messages: $messages)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LinePushMessage &&
            (identical(other.to, to) || other.to == to) &&
            const DeepCollectionEquality().equals(other._messages, _messages));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, to, const DeepCollectionEquality().hash(_messages));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LinePushMessageCopyWith<_$_LinePushMessage> get copyWith =>
      __$$_LinePushMessageCopyWithImpl<_$_LinePushMessage>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LinePushMessageToJson(
      this,
    );
  }
}

abstract class _LinePushMessage implements LinePushMessage {
  factory _LinePushMessage(
      {required final String to,
      required final List<LineMessageContent> messages}) = _$_LinePushMessage;

  factory _LinePushMessage.fromJson(Map<String, dynamic> json) =
      _$_LinePushMessage.fromJson;

  @override
  String get to;
  @override
  List<LineMessageContent> get messages;
  @override
  @JsonKey(ignore: true)
  _$$_LinePushMessageCopyWith<_$_LinePushMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

LineMessageContent _$LineMessageContentFromJson(Map<String, dynamic> json) {
  return _LineMessageContent.fromJson(json);
}

/// @nodoc
mixin _$LineMessageContent {
  String get type => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LineMessageContentCopyWith<LineMessageContent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LineMessageContentCopyWith<$Res> {
  factory $LineMessageContentCopyWith(
          LineMessageContent value, $Res Function(LineMessageContent) then) =
      _$LineMessageContentCopyWithImpl<$Res, LineMessageContent>;
  @useResult
  $Res call({String type, String text});
}

/// @nodoc
class _$LineMessageContentCopyWithImpl<$Res, $Val extends LineMessageContent>
    implements $LineMessageContentCopyWith<$Res> {
  _$LineMessageContentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? text = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LineMessageContentCopyWith<$Res>
    implements $LineMessageContentCopyWith<$Res> {
  factory _$$_LineMessageContentCopyWith(_$_LineMessageContent value,
          $Res Function(_$_LineMessageContent) then) =
      __$$_LineMessageContentCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String type, String text});
}

/// @nodoc
class __$$_LineMessageContentCopyWithImpl<$Res>
    extends _$LineMessageContentCopyWithImpl<$Res, _$_LineMessageContent>
    implements _$$_LineMessageContentCopyWith<$Res> {
  __$$_LineMessageContentCopyWithImpl(
      _$_LineMessageContent _value, $Res Function(_$_LineMessageContent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? text = null,
  }) {
    return _then(_$_LineMessageContent(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LineMessageContent implements _LineMessageContent {
  _$_LineMessageContent({required this.type, required this.text});

  factory _$_LineMessageContent.fromJson(Map<String, dynamic> json) =>
      _$$_LineMessageContentFromJson(json);

  @override
  final String type;
  @override
  final String text;

  @override
  String toString() {
    return 'LineMessageContent(type: $type, text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LineMessageContent &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.text, text) || other.text == text));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, type, text);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LineMessageContentCopyWith<_$_LineMessageContent> get copyWith =>
      __$$_LineMessageContentCopyWithImpl<_$_LineMessageContent>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LineMessageContentToJson(
      this,
    );
  }
}

abstract class _LineMessageContent implements LineMessageContent {
  factory _LineMessageContent(
      {required final String type,
      required final String text}) = _$_LineMessageContent;

  factory _LineMessageContent.fromJson(Map<String, dynamic> json) =
      _$_LineMessageContent.fromJson;

  @override
  String get type;
  @override
  String get text;
  @override
  @JsonKey(ignore: true)
  _$$_LineMessageContentCopyWith<_$_LineMessageContent> get copyWith =>
      throw _privateConstructorUsedError;
}
