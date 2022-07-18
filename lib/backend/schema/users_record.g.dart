// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'users_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<UsersRecord> _$usersRecordSerializer = new _$UsersRecordSerializer();

class _$UsersRecordSerializer implements StructuredSerializer<UsersRecord> {
  @override
  final Iterable<Type> types = const [UsersRecord, _$UsersRecord];
  @override
  final String wireName = 'UsersRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, UsersRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.displayName;
    if (value != null) {
      result
        ..add('display_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.email;
    if (value != null) {
      result
        ..add('email')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.photoUrl;
    if (value != null) {
      result
        ..add('photo_url')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.uid;
    if (value != null) {
      result
        ..add('uid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.createdTime;
    if (value != null) {
      result
        ..add('created_time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.phoneNumber;
    if (value != null) {
      result
        ..add('phone_number')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.userName;
    if (value != null) {
      result
        ..add('userName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.bio;
    if (value != null) {
      result
        ..add('bio')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.isFollowed;
    if (value != null) {
      result
        ..add('isFollowed')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.xp;
    if (value != null) {
      result
        ..add('Xp')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.age;
    if (value != null) {
      result
        ..add('Age')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.gender;
    if (value != null) {
      result
        ..add('Gender')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.premium;
    if (value != null) {
      result
        ..add('Premium')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.password;
    if (value != null) {
      result
        ..add('password')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.burgers;
    if (value != null) {
      result
        ..add('Burgers')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.roses;
    if (value != null) {
      result
        ..add('Roses')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.diamonds;
    if (value != null) {
      result
        ..add('Diamonds')
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
  UsersRecord deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UsersRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'display_name':
          result.displayName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'photo_url':
          result.photoUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'uid':
          result.uid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'created_time':
          result.createdTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'phone_number':
          result.phoneNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'userName':
          result.userName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'bio':
          result.bio = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'isFollowed':
          result.isFollowed = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'Xp':
          result.xp = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'Age':
          result.age = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'Gender':
          result.gender = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Premium':
          result.premium = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'password':
          result.password = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Burgers':
          result.burgers = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'Roses':
          result.roses = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'Diamonds':
          result.diamonds = serializers.deserialize(value,
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

class _$UsersRecord extends UsersRecord {
  @override
  final String displayName;
  @override
  final String email;
  @override
  final String photoUrl;
  @override
  final String uid;
  @override
  final DateTime createdTime;
  @override
  final String phoneNumber;
  @override
  final String userName;
  @override
  final String bio;
  @override
  final bool isFollowed;
  @override
  final int xp;
  @override
  final int age;
  @override
  final String gender;
  @override
  final String premium;
  @override
  final String password;
  @override
  final int burgers;
  @override
  final int roses;
  @override
  final int diamonds;
  @override
  final int heart;
  @override
  final DocumentReference<Object> reference;

  factory _$UsersRecord([void Function(UsersRecordBuilder) updates]) =>
      (new UsersRecordBuilder()..update(updates)).build();

  _$UsersRecord._(
      {this.displayName,
      this.email,
      this.photoUrl,
      this.uid,
      this.createdTime,
      this.phoneNumber,
      this.userName,
      this.bio,
      this.isFollowed,
      this.xp,
      this.age,
      this.gender,
      this.premium,
      this.password,
      this.burgers,
      this.roses,
      this.diamonds,
      this.heart,
      this.reference})
      : super._();

  @override
  UsersRecord rebuild(void Function(UsersRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UsersRecordBuilder toBuilder() => new UsersRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UsersRecord &&
        displayName == other.displayName &&
        email == other.email &&
        photoUrl == other.photoUrl &&
        uid == other.uid &&
        createdTime == other.createdTime &&
        phoneNumber == other.phoneNumber &&
        userName == other.userName &&
        bio == other.bio &&
        isFollowed == other.isFollowed &&
        xp == other.xp &&
        age == other.age &&
        gender == other.gender &&
        premium == other.premium &&
        password == other.password &&
        burgers == other.burgers &&
        roses == other.roses &&
        diamonds == other.diamonds &&
        heart == other.heart &&
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
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                $jc(
                                                                    $jc(
                                                                        $jc(
                                                                            $jc(
                                                                                0,
                                                                                displayName
                                                                                    .hashCode),
                                                                            email
                                                                                .hashCode),
                                                                        photoUrl
                                                                            .hashCode),
                                                                    uid
                                                                        .hashCode),
                                                                createdTime
                                                                    .hashCode),
                                                            phoneNumber
                                                                .hashCode),
                                                        userName.hashCode),
                                                    bio.hashCode),
                                                isFollowed.hashCode),
                                            xp.hashCode),
                                        age.hashCode),
                                    gender.hashCode),
                                premium.hashCode),
                            password.hashCode),
                        burgers.hashCode),
                    roses.hashCode),
                diamonds.hashCode),
            heart.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('UsersRecord')
          ..add('displayName', displayName)
          ..add('email', email)
          ..add('photoUrl', photoUrl)
          ..add('uid', uid)
          ..add('createdTime', createdTime)
          ..add('phoneNumber', phoneNumber)
          ..add('userName', userName)
          ..add('bio', bio)
          ..add('isFollowed', isFollowed)
          ..add('xp', xp)
          ..add('age', age)
          ..add('gender', gender)
          ..add('premium', premium)
          ..add('password', password)
          ..add('burgers', burgers)
          ..add('roses', roses)
          ..add('diamonds', diamonds)
          ..add('heart', heart)
          ..add('reference', reference))
        .toString();
  }
}

class UsersRecordBuilder implements Builder<UsersRecord, UsersRecordBuilder> {
  _$UsersRecord _$v;

  String _displayName;
  String get displayName => _$this._displayName;
  set displayName(String displayName) => _$this._displayName = displayName;

  String _email;
  String get email => _$this._email;
  set email(String email) => _$this._email = email;

  String _photoUrl;
  String get photoUrl => _$this._photoUrl;
  set photoUrl(String photoUrl) => _$this._photoUrl = photoUrl;

  String _uid;
  String get uid => _$this._uid;
  set uid(String uid) => _$this._uid = uid;

  DateTime _createdTime;
  DateTime get createdTime => _$this._createdTime;
  set createdTime(DateTime createdTime) => _$this._createdTime = createdTime;

  String _phoneNumber;
  String get phoneNumber => _$this._phoneNumber;
  set phoneNumber(String phoneNumber) => _$this._phoneNumber = phoneNumber;

  String _userName;
  String get userName => _$this._userName;
  set userName(String userName) => _$this._userName = userName;

  String _bio;
  String get bio => _$this._bio;
  set bio(String bio) => _$this._bio = bio;

  bool _isFollowed;
  bool get isFollowed => _$this._isFollowed;
  set isFollowed(bool isFollowed) => _$this._isFollowed = isFollowed;

  int _xp;
  int get xp => _$this._xp;
  set xp(int xp) => _$this._xp = xp;

  int _age;
  int get age => _$this._age;
  set age(int age) => _$this._age = age;

  String _gender;
  String get gender => _$this._gender;
  set gender(String gender) => _$this._gender = gender;

  String _premium;
  String get premium => _$this._premium;
  set premium(String premium) => _$this._premium = premium;

  String _password;
  String get password => _$this._password;
  set password(String password) => _$this._password = password;

  int _burgers;
  int get burgers => _$this._burgers;
  set burgers(int burgers) => _$this._burgers = burgers;

  int _roses;
  int get roses => _$this._roses;
  set roses(int roses) => _$this._roses = roses;

  int _diamonds;
  int get diamonds => _$this._diamonds;
  set diamonds(int diamonds) => _$this._diamonds = diamonds;

  int _heart;
  int get heart => _$this._heart;
  set heart(int heart) => _$this._heart = heart;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  UsersRecordBuilder() {
    UsersRecord._initializeBuilder(this);
  }

  UsersRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _displayName = $v.displayName;
      _email = $v.email;
      _photoUrl = $v.photoUrl;
      _uid = $v.uid;
      _createdTime = $v.createdTime;
      _phoneNumber = $v.phoneNumber;
      _userName = $v.userName;
      _bio = $v.bio;
      _isFollowed = $v.isFollowed;
      _xp = $v.xp;
      _age = $v.age;
      _gender = $v.gender;
      _premium = $v.premium;
      _password = $v.password;
      _burgers = $v.burgers;
      _roses = $v.roses;
      _diamonds = $v.diamonds;
      _heart = $v.heart;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UsersRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UsersRecord;
  }

  @override
  void update(void Function(UsersRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$UsersRecord build() {
    final _$result = _$v ??
        new _$UsersRecord._(
            displayName: displayName,
            email: email,
            photoUrl: photoUrl,
            uid: uid,
            createdTime: createdTime,
            phoneNumber: phoneNumber,
            userName: userName,
            bio: bio,
            isFollowed: isFollowed,
            xp: xp,
            age: age,
            gender: gender,
            premium: premium,
            password: password,
            burgers: burgers,
            roses: roses,
            diamonds: diamonds,
            heart: heart,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
