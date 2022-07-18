// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gifts_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GiftsRecord> _$giftsRecordSerializer = new _$GiftsRecordSerializer();

class _$GiftsRecordSerializer implements StructuredSerializer<GiftsRecord> {
  @override
  final Iterable<Type> types = const [GiftsRecord, _$GiftsRecord];
  @override
  final String wireName = 'GiftsRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, GiftsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.users;
    if (value != null) {
      result
        ..add('Users')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    value = object.burger;
    if (value != null) {
      result
        ..add('Burger')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.rose;
    if (value != null) {
      result
        ..add('Rose')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.diamond;
    if (value != null) {
      result
        ..add('diamond')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.heart;
    if (value != null) {
      result
        ..add('Heart')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.reference;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    return result;
  }

  @override
  GiftsRecord deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GiftsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'Users':
          result.users = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
        case 'Burger':
          result.burger = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'Rose':
          result.rose = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'diamond':
          result.diamond = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'Heart':
          result.heart = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'Document__Reference__Field':
          result.reference = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
      }
    }

    return result.build();
  }
}

class _$GiftsRecord extends GiftsRecord {
  @override
  final DocumentReference<Object> users;
  @override
  final int burger;
  @override
  final int rose;
  @override
  final int diamond;
  @override
  final int heart;
  @override
  final DocumentReference<Object> reference;

  factory _$GiftsRecord([void Function(GiftsRecordBuilder) updates]) =>
      (new GiftsRecordBuilder()..update(updates)).build();

  _$GiftsRecord._(
      {this.users,
      this.burger,
      this.rose,
      this.diamond,
      this.heart,
      this.reference})
      : super._();

  @override
  GiftsRecord rebuild(void Function(GiftsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GiftsRecordBuilder toBuilder() => new GiftsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GiftsRecord &&
        users == other.users &&
        burger == other.burger &&
        rose == other.rose &&
        diamond == other.diamond &&
        heart == other.heart &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, users.hashCode), burger.hashCode),
                    rose.hashCode),
                diamond.hashCode),
            heart.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GiftsRecord')
          ..add('users', users)
          ..add('burger', burger)
          ..add('rose', rose)
          ..add('diamond', diamond)
          ..add('heart', heart)
          ..add('reference', reference))
        .toString();
  }
}

class GiftsRecordBuilder implements Builder<GiftsRecord, GiftsRecordBuilder> {
  _$GiftsRecord _$v;

  DocumentReference<Object> _users;
  DocumentReference<Object> get users => _$this._users;
  set users(DocumentReference<Object> users) => _$this._users = users;

  int _burger;
  int get burger => _$this._burger;
  set burger(int burger) => _$this._burger = burger;

  int _rose;
  int get rose => _$this._rose;
  set rose(int rose) => _$this._rose = rose;

  int _diamond;
  int get diamond => _$this._diamond;
  set diamond(int diamond) => _$this._diamond = diamond;

  int _heart;
  int get heart => _$this._heart;
  set heart(int heart) => _$this._heart = heart;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  GiftsRecordBuilder() {
    GiftsRecord._initializeBuilder(this);
  }

  GiftsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _users = $v.users;
      _burger = $v.burger;
      _rose = $v.rose;
      _diamond = $v.diamond;
      _heart = $v.heart;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GiftsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GiftsRecord;
  }

  @override
  void update(void Function(GiftsRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GiftsRecord build() {
    final _$result = _$v ??
        new _$GiftsRecord._(
            users: users,
            burger: burger,
            rose: rose,
            diamond: diamond,
            heart: heart,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
