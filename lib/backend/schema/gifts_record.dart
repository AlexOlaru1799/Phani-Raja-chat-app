import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'gifts_record.g.dart';

abstract class GiftsRecord implements Built<GiftsRecord, GiftsRecordBuilder> {
  static Serializer<GiftsRecord> get serializer => _$giftsRecordSerializer;

  @nullable
  @BuiltValueField(wireName: 'Users')
  DocumentReference get users;

  @nullable
  @BuiltValueField(wireName: 'Burger')
  int get burger;

  @nullable
  @BuiltValueField(wireName: 'Rose')
  int get rose;

  @nullable
  int get diamond;

  @nullable
  @BuiltValueField(wireName: 'Heart')
  int get heart;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(GiftsRecordBuilder builder) => builder
    ..burger = 0
    ..rose = 0
    ..diamond = 0
    ..heart = 0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Gifts');

  static Stream<GiftsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<GiftsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  GiftsRecord._();
  factory GiftsRecord([void Function(GiftsRecordBuilder) updates]) =
      _$GiftsRecord;

  static GiftsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createGiftsRecordData({
  DocumentReference users,
  int burger,
  int rose,
  int diamond,
  int heart,
}) =>
    serializers.toFirestore(
        GiftsRecord.serializer,
        GiftsRecord((g) => g
          ..users = users
          ..burger = burger
          ..rose = rose
          ..diamond = diamond
          ..heart = heart));
