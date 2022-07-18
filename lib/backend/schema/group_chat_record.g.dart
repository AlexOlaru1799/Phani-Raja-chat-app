// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group_chat_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GroupChatRecord> _$groupChatRecordSerializer =
    new _$GroupChatRecordSerializer();

class _$GroupChatRecordSerializer
    implements StructuredSerializer<GroupChatRecord> {
  @override
  final Iterable<Type> types = const [GroupChatRecord, _$GroupChatRecord];
  @override
  final String wireName = 'GroupChatRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, GroupChatRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.users;
    if (value != null) {
      result
        ..add('users')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(DocumentReference, const [const FullType(Object)])
            ])));
    }
    value = object.userA;
    if (value != null) {
      result
        ..add('user_a')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    value = object.userB;
    if (value != null) {
      result
        ..add('user_b')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    value = object.lastMessage;
    if (value != null) {
      result
        ..add('last_message')
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
    value = object.lastmessageSeenBy;
    if (value != null) {
      result
        ..add('lastmessage_seen_by')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(DocumentReference, const [const FullType(Object)])
            ])));
    }
    value = object.lastmessageSentBy;
    if (value != null) {
      result
        ..add('lastmessage_sent_by')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    value = object.groupname;
    if (value != null) {
      result
        ..add('groupname')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.groupId;
    if (value != null) {
      result
        ..add('group_id')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.groupType;
    if (value != null) {
      result
        ..add('group_type')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.joinedBy;
    if (value != null) {
      result
        ..add('Joined_by')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(DocumentReference, const [const FullType(Object)])
            ])));
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
  GroupChatRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GroupChatRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'users':
          result.users.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    DocumentReference, const [const FullType(Object)])
              ])) as BuiltList<Object>);
          break;
        case 'user_a':
          result.userA = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
        case 'user_b':
          result.userB = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
        case 'last_message':
          result.lastMessage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'last_message_time':
          result.lastMessageTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'lastmessage_seen_by':
          result.lastmessageSeenBy.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    DocumentReference, const [const FullType(Object)])
              ])) as BuiltList<Object>);
          break;
        case 'lastmessage_sent_by':
          result.lastmessageSentBy = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
        case 'groupname':
          result.groupname = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'group_id':
          result.groupId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'group_type':
          result.groupType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Joined_by':
          result.joinedBy.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    DocumentReference, const [const FullType(Object)])
              ])) as BuiltList<Object>);
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

class _$GroupChatRecord extends GroupChatRecord {
  @override
  final BuiltList<DocumentReference<Object>> users;
  @override
  final DocumentReference<Object> userA;
  @override
  final DocumentReference<Object> userB;
  @override
  final String lastMessage;
  @override
  final DateTime lastMessageTime;
  @override
  final BuiltList<DocumentReference<Object>> lastmessageSeenBy;
  @override
  final DocumentReference<Object> lastmessageSentBy;
  @override
  final String groupname;
  @override
  final int groupId;
  @override
  final String groupType;
  @override
  final BuiltList<DocumentReference<Object>> joinedBy;
  @override
  final DocumentReference<Object> reference;

  factory _$GroupChatRecord([void Function(GroupChatRecordBuilder) updates]) =>
      (new GroupChatRecordBuilder()..update(updates)).build();

  _$GroupChatRecord._(
      {this.users,
      this.userA,
      this.userB,
      this.lastMessage,
      this.lastMessageTime,
      this.lastmessageSeenBy,
      this.lastmessageSentBy,
      this.groupname,
      this.groupId,
      this.groupType,
      this.joinedBy,
      this.reference})
      : super._();

  @override
  GroupChatRecord rebuild(void Function(GroupChatRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GroupChatRecordBuilder toBuilder() =>
      new GroupChatRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GroupChatRecord &&
        users == other.users &&
        userA == other.userA &&
        userB == other.userB &&
        lastMessage == other.lastMessage &&
        lastMessageTime == other.lastMessageTime &&
        lastmessageSeenBy == other.lastmessageSeenBy &&
        lastmessageSentBy == other.lastmessageSentBy &&
        groupname == other.groupname &&
        groupId == other.groupId &&
        groupType == other.groupType &&
        joinedBy == other.joinedBy &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc($jc(0, users.hashCode),
                                                userA.hashCode),
                                            userB.hashCode),
                                        lastMessage.hashCode),
                                    lastMessageTime.hashCode),
                                lastmessageSeenBy.hashCode),
                            lastmessageSentBy.hashCode),
                        groupname.hashCode),
                    groupId.hashCode),
                groupType.hashCode),
            joinedBy.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GroupChatRecord')
          ..add('users', users)
          ..add('userA', userA)
          ..add('userB', userB)
          ..add('lastMessage', lastMessage)
          ..add('lastMessageTime', lastMessageTime)
          ..add('lastmessageSeenBy', lastmessageSeenBy)
          ..add('lastmessageSentBy', lastmessageSentBy)
          ..add('groupname', groupname)
          ..add('groupId', groupId)
          ..add('groupType', groupType)
          ..add('joinedBy', joinedBy)
          ..add('reference', reference))
        .toString();
  }
}

class GroupChatRecordBuilder
    implements Builder<GroupChatRecord, GroupChatRecordBuilder> {
  _$GroupChatRecord _$v;

  ListBuilder<DocumentReference<Object>> _users;
  ListBuilder<DocumentReference<Object>> get users =>
      _$this._users ??= new ListBuilder<DocumentReference<Object>>();
  set users(ListBuilder<DocumentReference<Object>> users) =>
      _$this._users = users;

  DocumentReference<Object> _userA;
  DocumentReference<Object> get userA => _$this._userA;
  set userA(DocumentReference<Object> userA) => _$this._userA = userA;

  DocumentReference<Object> _userB;
  DocumentReference<Object> get userB => _$this._userB;
  set userB(DocumentReference<Object> userB) => _$this._userB = userB;

  String _lastMessage;
  String get lastMessage => _$this._lastMessage;
  set lastMessage(String lastMessage) => _$this._lastMessage = lastMessage;

  DateTime _lastMessageTime;
  DateTime get lastMessageTime => _$this._lastMessageTime;
  set lastMessageTime(DateTime lastMessageTime) =>
      _$this._lastMessageTime = lastMessageTime;

  ListBuilder<DocumentReference<Object>> _lastmessageSeenBy;
  ListBuilder<DocumentReference<Object>> get lastmessageSeenBy =>
      _$this._lastmessageSeenBy ??=
          new ListBuilder<DocumentReference<Object>>();
  set lastmessageSeenBy(
          ListBuilder<DocumentReference<Object>> lastmessageSeenBy) =>
      _$this._lastmessageSeenBy = lastmessageSeenBy;

  DocumentReference<Object> _lastmessageSentBy;
  DocumentReference<Object> get lastmessageSentBy => _$this._lastmessageSentBy;
  set lastmessageSentBy(DocumentReference<Object> lastmessageSentBy) =>
      _$this._lastmessageSentBy = lastmessageSentBy;

  String _groupname;
  String get groupname => _$this._groupname;
  set groupname(String groupname) => _$this._groupname = groupname;

  int _groupId;
  int get groupId => _$this._groupId;
  set groupId(int groupId) => _$this._groupId = groupId;

  String _groupType;
  String get groupType => _$this._groupType;
  set groupType(String groupType) => _$this._groupType = groupType;

  ListBuilder<DocumentReference<Object>> _joinedBy;
  ListBuilder<DocumentReference<Object>> get joinedBy =>
      _$this._joinedBy ??= new ListBuilder<DocumentReference<Object>>();
  set joinedBy(ListBuilder<DocumentReference<Object>> joinedBy) =>
      _$this._joinedBy = joinedBy;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  GroupChatRecordBuilder() {
    GroupChatRecord._initializeBuilder(this);
  }

  GroupChatRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _users = $v.users?.toBuilder();
      _userA = $v.userA;
      _userB = $v.userB;
      _lastMessage = $v.lastMessage;
      _lastMessageTime = $v.lastMessageTime;
      _lastmessageSeenBy = $v.lastmessageSeenBy?.toBuilder();
      _lastmessageSentBy = $v.lastmessageSentBy;
      _groupname = $v.groupname;
      _groupId = $v.groupId;
      _groupType = $v.groupType;
      _joinedBy = $v.joinedBy?.toBuilder();
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GroupChatRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GroupChatRecord;
  }

  @override
  void update(void Function(GroupChatRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GroupChatRecord build() {
    _$GroupChatRecord _$result;
    try {
      _$result = _$v ??
          new _$GroupChatRecord._(
              users: _users?.build(),
              userA: userA,
              userB: userB,
              lastMessage: lastMessage,
              lastMessageTime: lastMessageTime,
              lastmessageSeenBy: _lastmessageSeenBy?.build(),
              lastmessageSentBy: lastmessageSentBy,
              groupname: groupname,
              groupId: groupId,
              groupType: groupType,
              joinedBy: _joinedBy?.build(),
              reference: reference);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'users';
        _users?.build();

        _$failedField = 'lastmessageSeenBy';
        _lastmessageSeenBy?.build();

        _$failedField = 'joinedBy';
        _joinedBy?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GroupChatRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
