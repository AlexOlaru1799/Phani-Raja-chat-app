import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'group_chat_record.g.dart';

abstract class GroupChatRecord
    implements Built<GroupChatRecord, GroupChatRecordBuilder> {
  static Serializer<GroupChatRecord> get serializer =>
      _$groupChatRecordSerializer;

  @nullable
  BuiltList<DocumentReference> get users;

  @nullable
  @BuiltValueField(wireName: 'user_a')
  DocumentReference get userA;

  @nullable
  @BuiltValueField(wireName: 'user_b')
  DocumentReference get userB;

  @nullable
  @BuiltValueField(wireName: 'last_message')
  String get lastMessage;

  @nullable
  @BuiltValueField(wireName: 'last_message_time')
  DateTime get lastMessageTime;

  @nullable
  @BuiltValueField(wireName: 'lastmessage_seen_by')
  BuiltList<DocumentReference> get lastmessageSeenBy;

  @nullable
  @BuiltValueField(wireName: 'lastmessage_sent_by')
  DocumentReference get lastmessageSentBy;

  @nullable
  String get groupname;

  @nullable
  @BuiltValueField(wireName: 'group_id')
  int get groupId;

  @nullable
  @BuiltValueField(wireName: 'group_type')
  String get groupType;

  @nullable
  @BuiltValueField(wireName: 'Joined_by')
  BuiltList<DocumentReference> get joinedBy;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(GroupChatRecordBuilder builder) => builder
    ..users = ListBuilder()
    ..lastMessage = ''
    ..lastmessageSeenBy = ListBuilder()
    ..groupname = ''
    ..groupId = 0
    ..groupType = ''
    ..joinedBy = ListBuilder();

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('GroupChat');

  static Stream<GroupChatRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<GroupChatRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  GroupChatRecord._();
  factory GroupChatRecord([void Function(GroupChatRecordBuilder) updates]) =
      _$GroupChatRecord;

  static GroupChatRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createGroupChatRecordData({
  DocumentReference userA,
  DocumentReference userB,
  String lastMessage,
  DateTime lastMessageTime,
  DocumentReference lastmessageSentBy,
  String groupname,
  int groupId,
  String groupType,
}) =>
    serializers.toFirestore(
        GroupChatRecord.serializer,
        GroupChatRecord((g) => g
          ..users = null
          ..userA = userA
          ..userB = userB
          ..lastMessage = lastMessage
          ..lastMessageTime = lastMessageTime
          ..lastmessageSeenBy = null
          ..lastmessageSentBy = lastmessageSentBy
          ..groupname = groupname
          ..groupId = groupId
          ..groupType = groupType
          ..joinedBy = null));
