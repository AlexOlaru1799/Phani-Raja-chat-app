import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'users_record.g.dart';

abstract class UsersRecord implements Built<UsersRecord, UsersRecordBuilder> {
  static Serializer<UsersRecord> get serializer => _$usersRecordSerializer;

  @nullable
  @BuiltValueField(wireName: 'display_name')
  String get displayName;

  @nullable
  String get email;

  @nullable
  @BuiltValueField(wireName: 'photo_url')
  String get photoUrl;

  @nullable
  String get uid;

  @nullable
  @BuiltValueField(wireName: 'created_time')
  DateTime get createdTime;

  @nullable
  @BuiltValueField(wireName: 'phone_number')
  String get phoneNumber;

  @nullable
  String get userName;

  @nullable
  String get bio;

  @nullable
  bool get isFollowed;

  @nullable
  @BuiltValueField(wireName: 'Xp')
  int get xp;

  @nullable
  @BuiltValueField(wireName: 'Age')
  int get age;

  @nullable
  @BuiltValueField(wireName: 'Gender')
  String get gender;

  @nullable
  @BuiltValueField(wireName: 'Premium')
  String get premium;

  @nullable
  String get password;

  @nullable
  @BuiltValueField(wireName: 'Burgers')
  int get burgers;

  @nullable
  @BuiltValueField(wireName: 'Roses')
  int get roses;

  @nullable
  @BuiltValueField(wireName: 'Diamonds')
  int get diamonds;

  @nullable
  @BuiltValueField(wireName: 'Heart')
  int get heart;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(UsersRecordBuilder builder) => builder
    ..displayName = ''
    ..email = ''
    ..photoUrl = ''
    ..uid = ''
    ..phoneNumber = ''
    ..userName = ''
    ..bio = ''
    ..isFollowed = false
    ..xp = 0
    ..age = 0
    ..gender = ''
    ..premium = ''
    ..password = ''
    ..burgers = 0
    ..roses = 0
    ..diamonds = 0
    ..heart = 0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<UsersRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  UsersRecord._();
  factory UsersRecord([void Function(UsersRecordBuilder) updates]) =
      _$UsersRecord;

  static UsersRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createUsersRecordData({
  String displayName,
  String email,
  String photoUrl,
  String uid,
  DateTime createdTime,
  String phoneNumber,
  String userName,
  String bio,
  bool isFollowed,
  int xp,
  int age,
  String gender,
  String premium,
  String password,
  int burgers,
  int roses,
  int diamonds,
  int heart,
}) =>
    serializers.toFirestore(
        UsersRecord.serializer,
        UsersRecord((u) => u
          ..displayName = displayName
          ..email = email
          ..photoUrl = photoUrl
          ..uid = uid
          ..createdTime = createdTime
          ..phoneNumber = phoneNumber
          ..userName = userName
          ..bio = bio
          ..isFollowed = isFollowed
          ..xp = xp
          ..age = age
          ..gender = gender
          ..premium = premium
          ..password = password
          ..burgers = burgers
          ..roses = roses
          ..diamonds = diamonds
          ..heart = heart));
