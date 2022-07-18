import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'groupchat_messages_record.g.dart';

abstract class GroupchatMessagesRecord
    implements Built<GroupchatMessagesRecord, GroupchatMessagesRecordBuilder> {
  static Serializer<GroupchatMessagesRecord> get serializer =>
      _$groupchatMessagesRecordSerializer;

  @nullable
  DocumentReference get user;

  @nullable
  DocumentReference get chat;

  @nullable
  String get text;

  @nullable
  String get image;

  @nullable
  DateTime get timestamp;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(GroupchatMessagesRecordBuilder builder) =>
      builder
        ..text = ''
        ..image = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('groupchat_messages');

  static Stream<GroupchatMessagesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<GroupchatMessagesRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s)));

  GroupchatMessagesRecord._();
  factory GroupchatMessagesRecord(
          [void Function(GroupchatMessagesRecordBuilder) updates]) =
      _$GroupchatMessagesRecord;

  static GroupchatMessagesRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createGroupchatMessagesRecordData({
  DocumentReference user,
  DocumentReference chat,
  String text,
  String image,
  DateTime timestamp,
}) =>
    serializers.toFirestore(
        GroupchatMessagesRecord.serializer,
        GroupchatMessagesRecord((g) => g
          ..user = user
          ..chat = chat
          ..text = text
          ..image = image
          ..timestamp = timestamp));
