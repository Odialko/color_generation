// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'generator_store.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$GeneratorState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GeneratorState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GeneratorState()';
}


}

/// @nodoc
class $GeneratorStateCopyWith<$Res>  {
$GeneratorStateCopyWith(GeneratorState _, $Res Function(GeneratorState) __);
}


/// Adds pattern-matching-related methods to [GeneratorState].
extension GeneratorStatePatterns on GeneratorState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( GeneratorStateInit value)?  init,TResult Function( GeneratorStateLoading value)?  loading,TResult Function( GeneratorStateError value)?  error,TResult Function( GeneratorStateLoaded value)?  loaded,required TResult orElse(),}){
final _that = this;
switch (_that) {
case GeneratorStateInit() when init != null:
return init(_that);case GeneratorStateLoading() when loading != null:
return loading(_that);case GeneratorStateError() when error != null:
return error(_that);case GeneratorStateLoaded() when loaded != null:
return loaded(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( GeneratorStateInit value)  init,required TResult Function( GeneratorStateLoading value)  loading,required TResult Function( GeneratorStateError value)  error,required TResult Function( GeneratorStateLoaded value)  loaded,}){
final _that = this;
switch (_that) {
case GeneratorStateInit():
return init(_that);case GeneratorStateLoading():
return loading(_that);case GeneratorStateError():
return error(_that);case GeneratorStateLoaded():
return loaded(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( GeneratorStateInit value)?  init,TResult? Function( GeneratorStateLoading value)?  loading,TResult? Function( GeneratorStateError value)?  error,TResult? Function( GeneratorStateLoaded value)?  loaded,}){
final _that = this;
switch (_that) {
case GeneratorStateInit() when init != null:
return init(_that);case GeneratorStateLoading() when loading != null:
return loading(_that);case GeneratorStateError() when error != null:
return error(_that);case GeneratorStateLoaded() when loaded != null:
return loaded(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  init,TResult Function()?  loading,TResult Function( String? message)?  error,TResult Function()?  loaded,required TResult orElse(),}) {final _that = this;
switch (_that) {
case GeneratorStateInit() when init != null:
return init();case GeneratorStateLoading() when loading != null:
return loading();case GeneratorStateError() when error != null:
return error(_that.message);case GeneratorStateLoaded() when loaded != null:
return loaded();case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  init,required TResult Function()  loading,required TResult Function( String? message)  error,required TResult Function()  loaded,}) {final _that = this;
switch (_that) {
case GeneratorStateInit():
return init();case GeneratorStateLoading():
return loading();case GeneratorStateError():
return error(_that.message);case GeneratorStateLoaded():
return loaded();case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  init,TResult? Function()?  loading,TResult? Function( String? message)?  error,TResult? Function()?  loaded,}) {final _that = this;
switch (_that) {
case GeneratorStateInit() when init != null:
return init();case GeneratorStateLoading() when loading != null:
return loading();case GeneratorStateError() when error != null:
return error(_that.message);case GeneratorStateLoaded() when loaded != null:
return loaded();case _:
  return null;

}
}

}

/// @nodoc


class GeneratorStateInit implements GeneratorState {
  const GeneratorStateInit();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GeneratorStateInit);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GeneratorState.init()';
}


}




/// @nodoc


class GeneratorStateLoading implements GeneratorState {
  const GeneratorStateLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GeneratorStateLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GeneratorState.loading()';
}


}




/// @nodoc


class GeneratorStateError implements GeneratorState {
  const GeneratorStateError({this.message});
  

 final  String? message;

/// Create a copy of GeneratorState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GeneratorStateErrorCopyWith<GeneratorStateError> get copyWith => _$GeneratorStateErrorCopyWithImpl<GeneratorStateError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GeneratorStateError&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'GeneratorState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class $GeneratorStateErrorCopyWith<$Res> implements $GeneratorStateCopyWith<$Res> {
  factory $GeneratorStateErrorCopyWith(GeneratorStateError value, $Res Function(GeneratorStateError) _then) = _$GeneratorStateErrorCopyWithImpl;
@useResult
$Res call({
 String? message
});




}
/// @nodoc
class _$GeneratorStateErrorCopyWithImpl<$Res>
    implements $GeneratorStateErrorCopyWith<$Res> {
  _$GeneratorStateErrorCopyWithImpl(this._self, this._then);

  final GeneratorStateError _self;
  final $Res Function(GeneratorStateError) _then;

/// Create a copy of GeneratorState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = freezed,}) {
  return _then(GeneratorStateError(
message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class GeneratorStateLoaded implements GeneratorState {
  const GeneratorStateLoaded();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GeneratorStateLoaded);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'GeneratorState.loaded()';
}


}




/// @nodoc
mixin _$GeneratorStoreState {

 GeneratorState get generatorState;
/// Create a copy of GeneratorStoreState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GeneratorStoreStateCopyWith<GeneratorStoreState> get copyWith => _$GeneratorStoreStateCopyWithImpl<GeneratorStoreState>(this as GeneratorStoreState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GeneratorStoreState&&(identical(other.generatorState, generatorState) || other.generatorState == generatorState));
}


@override
int get hashCode => Object.hash(runtimeType,generatorState);

@override
String toString() {
  return 'GeneratorStoreState(generatorState: $generatorState)';
}


}

/// @nodoc
abstract mixin class $GeneratorStoreStateCopyWith<$Res>  {
  factory $GeneratorStoreStateCopyWith(GeneratorStoreState value, $Res Function(GeneratorStoreState) _then) = _$GeneratorStoreStateCopyWithImpl;
@useResult
$Res call({
 GeneratorState generatorState
});


$GeneratorStateCopyWith<$Res> get generatorState;

}
/// @nodoc
class _$GeneratorStoreStateCopyWithImpl<$Res>
    implements $GeneratorStoreStateCopyWith<$Res> {
  _$GeneratorStoreStateCopyWithImpl(this._self, this._then);

  final GeneratorStoreState _self;
  final $Res Function(GeneratorStoreState) _then;

/// Create a copy of GeneratorStoreState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? generatorState = null,}) {
  return _then(_self.copyWith(
generatorState: null == generatorState ? _self.generatorState : generatorState // ignore: cast_nullable_to_non_nullable
as GeneratorState,
  ));
}
/// Create a copy of GeneratorStoreState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GeneratorStateCopyWith<$Res> get generatorState {
  
  return $GeneratorStateCopyWith<$Res>(_self.generatorState, (value) {
    return _then(_self.copyWith(generatorState: value));
  });
}
}


/// Adds pattern-matching-related methods to [GeneratorStoreState].
extension GeneratorStoreStatePatterns on GeneratorStoreState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GeneratorStoreState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GeneratorStoreState() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GeneratorStoreState value)  $default,){
final _that = this;
switch (_that) {
case _GeneratorStoreState():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GeneratorStoreState value)?  $default,){
final _that = this;
switch (_that) {
case _GeneratorStoreState() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( GeneratorState generatorState)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GeneratorStoreState() when $default != null:
return $default(_that.generatorState);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( GeneratorState generatorState)  $default,) {final _that = this;
switch (_that) {
case _GeneratorStoreState():
return $default(_that.generatorState);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( GeneratorState generatorState)?  $default,) {final _that = this;
switch (_that) {
case _GeneratorStoreState() when $default != null:
return $default(_that.generatorState);case _:
  return null;

}
}

}

/// @nodoc


class _GeneratorStoreState implements GeneratorStoreState {
  const _GeneratorStoreState({required this.generatorState});
  

@override final  GeneratorState generatorState;

/// Create a copy of GeneratorStoreState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GeneratorStoreStateCopyWith<_GeneratorStoreState> get copyWith => __$GeneratorStoreStateCopyWithImpl<_GeneratorStoreState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GeneratorStoreState&&(identical(other.generatorState, generatorState) || other.generatorState == generatorState));
}


@override
int get hashCode => Object.hash(runtimeType,generatorState);

@override
String toString() {
  return 'GeneratorStoreState(generatorState: $generatorState)';
}


}

/// @nodoc
abstract mixin class _$GeneratorStoreStateCopyWith<$Res> implements $GeneratorStoreStateCopyWith<$Res> {
  factory _$GeneratorStoreStateCopyWith(_GeneratorStoreState value, $Res Function(_GeneratorStoreState) _then) = __$GeneratorStoreStateCopyWithImpl;
@override @useResult
$Res call({
 GeneratorState generatorState
});


@override $GeneratorStateCopyWith<$Res> get generatorState;

}
/// @nodoc
class __$GeneratorStoreStateCopyWithImpl<$Res>
    implements _$GeneratorStoreStateCopyWith<$Res> {
  __$GeneratorStoreStateCopyWithImpl(this._self, this._then);

  final _GeneratorStoreState _self;
  final $Res Function(_GeneratorStoreState) _then;

/// Create a copy of GeneratorStoreState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? generatorState = null,}) {
  return _then(_GeneratorStoreState(
generatorState: null == generatorState ? _self.generatorState : generatorState // ignore: cast_nullable_to_non_nullable
as GeneratorState,
  ));
}

/// Create a copy of GeneratorStoreState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$GeneratorStateCopyWith<$Res> get generatorState {
  
  return $GeneratorStateCopyWith<$Res>(_self.generatorState, (value) {
    return _then(_self.copyWith(generatorState: value));
  });
}
}

// dart format on
