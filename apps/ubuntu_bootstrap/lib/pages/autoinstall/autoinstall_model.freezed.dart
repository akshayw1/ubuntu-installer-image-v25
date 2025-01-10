// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'autoinstall_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AutoinstallState {
  AutoinstallType get type => throw _privateConstructorUsedError;

  /// Create a copy of AutoinstallState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AutoinstallStateCopyWith<AutoinstallState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AutoinstallStateCopyWith<$Res> {
  factory $AutoinstallStateCopyWith(
          AutoinstallState value, $Res Function(AutoinstallState) then) =
      _$AutoinstallStateCopyWithImpl<$Res, AutoinstallState>;
  @useResult
  $Res call({AutoinstallType type});
}

/// @nodoc
class _$AutoinstallStateCopyWithImpl<$Res, $Val extends AutoinstallState>
    implements $AutoinstallStateCopyWith<$Res> {
  _$AutoinstallStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AutoinstallState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as AutoinstallType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AutoinstallStateImplCopyWith<$Res>
    implements $AutoinstallStateCopyWith<$Res> {
  factory _$$AutoinstallStateImplCopyWith(_$AutoinstallStateImpl value,
          $Res Function(_$AutoinstallStateImpl) then) =
      __$$AutoinstallStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AutoinstallType type});
}

/// @nodoc
class __$$AutoinstallStateImplCopyWithImpl<$Res>
    extends _$AutoinstallStateCopyWithImpl<$Res, _$AutoinstallStateImpl>
    implements _$$AutoinstallStateImplCopyWith<$Res> {
  __$$AutoinstallStateImplCopyWithImpl(_$AutoinstallStateImpl _value,
      $Res Function(_$AutoinstallStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AutoinstallState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
  }) {
    return _then(_$AutoinstallStateImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as AutoinstallType,
    ));
  }
}

/// @nodoc

class _$AutoinstallStateImpl
    with DiagnosticableTreeMixin
    implements _AutoinstallState {
  _$AutoinstallStateImpl({required this.type});

  @override
  final AutoinstallType type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AutoinstallState(type: $type)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AutoinstallState'))
      ..add(DiagnosticsProperty('type', type));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AutoinstallStateImpl &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type);

  /// Create a copy of AutoinstallState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AutoinstallStateImplCopyWith<_$AutoinstallStateImpl> get copyWith =>
      __$$AutoinstallStateImplCopyWithImpl<_$AutoinstallStateImpl>(
          this, _$identity);
}

abstract class _AutoinstallState implements AutoinstallState {
  factory _AutoinstallState({required final AutoinstallType type}) =
      _$AutoinstallStateImpl;

  @override
  AutoinstallType get type;

  /// Create a copy of AutoinstallState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AutoinstallStateImplCopyWith<_$AutoinstallStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AutoinstallDirectState {
  String get url => throw _privateConstructorUsedError;
  Uri? get localPath => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  Object? get error => throw _privateConstructorUsedError;

  /// Create a copy of AutoinstallDirectState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AutoinstallDirectStateCopyWith<AutoinstallDirectState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AutoinstallDirectStateCopyWith<$Res> {
  factory $AutoinstallDirectStateCopyWith(AutoinstallDirectState value,
          $Res Function(AutoinstallDirectState) then) =
      _$AutoinstallDirectStateCopyWithImpl<$Res, AutoinstallDirectState>;
  @useResult
  $Res call({String url, Uri? localPath, bool isLoading, Object? error});
}

/// @nodoc
class _$AutoinstallDirectStateCopyWithImpl<$Res,
        $Val extends AutoinstallDirectState>
    implements $AutoinstallDirectStateCopyWith<$Res> {
  _$AutoinstallDirectStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AutoinstallDirectState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? localPath = freezed,
    Object? isLoading = null,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      localPath: freezed == localPath
          ? _value.localPath
          : localPath // ignore: cast_nullable_to_non_nullable
              as Uri?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error ? _value.error : error,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AutoinstallDirectStateImplCopyWith<$Res>
    implements $AutoinstallDirectStateCopyWith<$Res> {
  factory _$$AutoinstallDirectStateImplCopyWith(
          _$AutoinstallDirectStateImpl value,
          $Res Function(_$AutoinstallDirectStateImpl) then) =
      __$$AutoinstallDirectStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String url, Uri? localPath, bool isLoading, Object? error});
}

/// @nodoc
class __$$AutoinstallDirectStateImplCopyWithImpl<$Res>
    extends _$AutoinstallDirectStateCopyWithImpl<$Res,
        _$AutoinstallDirectStateImpl>
    implements _$$AutoinstallDirectStateImplCopyWith<$Res> {
  __$$AutoinstallDirectStateImplCopyWithImpl(
      _$AutoinstallDirectStateImpl _value,
      $Res Function(_$AutoinstallDirectStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AutoinstallDirectState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? localPath = freezed,
    Object? isLoading = null,
    Object? error = freezed,
  }) {
    return _then(_$AutoinstallDirectStateImpl(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      localPath: freezed == localPath
          ? _value.localPath
          : localPath // ignore: cast_nullable_to_non_nullable
              as Uri?,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      error: freezed == error ? _value.error : error,
    ));
  }
}

/// @nodoc

class _$AutoinstallDirectStateImpl
    with DiagnosticableTreeMixin
    implements _AutoinstallDirectState {
  _$AutoinstallDirectStateImpl(
      {this.url = '', this.localPath, this.isLoading = false, this.error});

  @override
  @JsonKey()
  final String url;
  @override
  final Uri? localPath;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  final Object? error;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AutoinstallDirectState(url: $url, localPath: $localPath, isLoading: $isLoading, error: $error)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AutoinstallDirectState'))
      ..add(DiagnosticsProperty('url', url))
      ..add(DiagnosticsProperty('localPath', localPath))
      ..add(DiagnosticsProperty('isLoading', isLoading))
      ..add(DiagnosticsProperty('error', error));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AutoinstallDirectStateImpl &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.localPath, localPath) ||
                other.localPath == localPath) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, url, localPath, isLoading,
      const DeepCollectionEquality().hash(error));

  /// Create a copy of AutoinstallDirectState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AutoinstallDirectStateImplCopyWith<_$AutoinstallDirectStateImpl>
      get copyWith => __$$AutoinstallDirectStateImplCopyWithImpl<
          _$AutoinstallDirectStateImpl>(this, _$identity);
}

abstract class _AutoinstallDirectState implements AutoinstallDirectState {
  factory _AutoinstallDirectState(
      {final String url,
      final Uri? localPath,
      final bool isLoading,
      final Object? error}) = _$AutoinstallDirectStateImpl;

  @override
  String get url;
  @override
  Uri? get localPath;
  @override
  bool get isLoading;
  @override
  Object? get error;

  /// Create a copy of AutoinstallDirectState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AutoinstallDirectStateImplCopyWith<_$AutoinstallDirectStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
