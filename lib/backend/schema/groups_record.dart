import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'groups_record.g.dart';

abstract class GroupsRecord
    implements Built<GroupsRecord, GroupsRecordBuilder> {
  static Serializer<GroupsRecord> get serializer => _$groupsRecordSerializer;

  @nullable
  String get name;

  @nullable
  int get id;

  @nullable
  String get type;

  @nullable
  @BuiltValueField(wireName: 'joined_by')
  BuiltList<DocumentReference> get joinedBy;

  @nullable
  String get text;

  @nullable
  @BuiltValueField(wireName: 'last_message_time')
  DateTime get lastMessageTime;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(GroupsRecordBuilder builder) => builder
    ..name = ''
    ..id = 0
    ..type = ''
    ..joinedBy = ListBuilder()
    ..text = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('groups');

  static Stream<GroupsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<GroupsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  GroupsRecord._();
  factory GroupsRecord([void Function(GroupsRecordBuilder) updates]) =
      _$GroupsRecord;

  static GroupsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createGroupsRecordData({
  String name,
  int id,
  String type,
  String text,
  DateTime lastMessageTime,
}) =>
    serializers.toFirestore(
        GroupsRecord.serializer,
        GroupsRecord((g) => g
          ..name = name
          ..id = id
          ..type = type
          ..joinedBy = null
          ..text = text
          ..lastMessageTime = lastMessageTime));
