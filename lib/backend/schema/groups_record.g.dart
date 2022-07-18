// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'groups_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GroupsRecord> _$groupsRecordSerializer =
    new _$GroupsRecordSerializer();

class _$GroupsRecordSerializer implements StructuredSerializer<GroupsRecord> {
  @override
  final Iterable<Type> types = const [GroupsRecord, _$GroupsRecord];
  @override
  final String wireName = 'GroupsRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, GroupsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.id;
    if (value != null) {
      result
        ..add('id')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.type;
    if (value != null) {
      result
        ..add('type')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.joinedBy;
    if (value != null) {
      result
        ..add('joined_by')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(DocumentReference, const [const FullType(Object)])
            ])));
    }
    value = object.text;
    if (value != null) {
      result
        ..add('text')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.lastMessageTime;
    if (value != null) {
      result
        ..add('last_message_time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
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
  GroupsRecord deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GroupsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'joined_by':
          result.joinedBy.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    DocumentReference, const [const FullType(Object)])
              ])) as BuiltList<Object>);
          break;
        case 'text':
          result.text = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'last_message_time':
          result.lastMessageTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
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

class _$GroupsRecord extends GroupsRecord {
  @override
  final String name;
  @override
  final int id;
  @override
  final String type;
  @override
  final BuiltList<DocumentReference<Object>> joinedBy;
  @override
  final String text;
  @override
  final DateTime lastMessageTime;
  @override
  final DocumentReference<Object> reference;

  factory _$GroupsRecord([void Function(GroupsRecordBuilder) updates]) =>
      (new GroupsRecordBuilder()..update(updates)).build();

  _$GroupsRecord._(
      {this.name,
      this.id,
      this.type,
      this.joinedBy,
      this.text,
      this.lastMessageTime,
      this.reference})
      : super._();

  @override
  GroupsRecord rebuild(void Function(GroupsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GroupsRecordBuilder toBuilder() => new GroupsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GroupsRecord &&
        name == other.name &&
        id == other.id &&
        type == other.type &&
        joinedBy == other.joinedBy &&
        text == other.text &&
        lastMessageTime == other.lastMessageTime &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc($jc(0, name.hashCode), id.hashCode), type.hashCode),
                    joinedBy.hashCode),
                text.hashCode),
            lastMessageTime.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GroupsRecord')
          ..add('name', name)
          ..add('id', id)
          ..add('type', type)
          ..add('joinedBy', joinedBy)
          ..add('text', text)
          ..add('lastMessageTime', lastMessageTime)
          ..add('reference', reference))
        .toString();
  }
}

class GroupsRecordBuilder
    implements Builder<GroupsRecord, GroupsRecordBuilder> {
  _$GroupsRecord _$v;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _type;
  String get type => _$this._type;
  set type(String type) => _$this._type = type;

  ListBuilder<DocumentReference<Object>> _joinedBy;
  ListBuilder<DocumentReference<Object>> get joinedBy =>
      _$this._joinedBy ??= new ListBuilder<DocumentReference<Object>>();
  set joinedBy(ListBuilder<DocumentReference<Object>> joinedBy) =>
      _$this._joinedBy = joinedBy;

  String _text;
  String get text => _$this._text;
  set text(String text) => _$this._text = text;

  DateTime _lastMessageTime;
  DateTime get lastMessageTime => _$this._lastMessageTime;
  set lastMessageTime(DateTime lastMessageTime) =>
      _$this._lastMessageTime = lastMessageTime;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  GroupsRecordBuilder() {
    GroupsRecord._initializeBuilder(this);
  }

  GroupsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _id = $v.id;
      _type = $v.type;
      _joinedBy = $v.joinedBy?.toBuilder();
      _text = $v.text;
      _lastMessageTime = $v.lastMessageTime;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GroupsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GroupsRecord;
  }

  @override
  void update(void Function(GroupsRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GroupsRecord build() {
    _$GroupsRecord _$result;
    try {
      _$result = _$v ??
          new _$GroupsRecord._(
              name: name,
              id: id,
              type: type,
              joinedBy: _joinedBy?.build(),
              text: text,
              lastMessageTime: lastMessageTime,
              reference: reference);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'joinedBy';
        _joinedBy?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GroupsRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
