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
  Iterable<Object?> serialize(Serializers serializers, UsersRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
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
    value = object.studentId;
    if (value != null) {
      result
        ..add('student_id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.firstname;
    if (value != null) {
      result
        ..add('firstname')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.lastname;
    if (value != null) {
      result
        ..add('lastname')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.userfollowed;
    if (value != null) {
      result
        ..add('userfollowed')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.usersfollowinguser;
    if (value != null) {
      result
        ..add('usersfollowinguser')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.residence;
    if (value != null) {
      result
        ..add('residence')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.dateofbirth;
    if (value != null) {
      result
        ..add('dateofbirth')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.graduationyear;
    if (value != null) {
      result
        ..add('graduationyear')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.bestfood;
    if (value != null) {
      result
        ..add('bestfood')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.bestmovie;
    if (value != null) {
      result
        ..add('bestmovie')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.major;
    if (value != null) {
      result
        ..add('major')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.displayName;
    if (value != null) {
      result
        ..add('display_name')
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
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  UsersRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UsersRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'photo_url':
          result.photoUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'student_id':
          result.studentId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'firstname':
          result.firstname = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'lastname':
          result.lastname = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'userfollowed':
          result.userfollowed = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'usersfollowinguser':
          result.usersfollowinguser = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'residence':
          result.residence = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'dateofbirth':
          result.dateofbirth = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'graduationyear':
          result.graduationyear = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'bestfood':
          result.bestfood = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'bestmovie':
          result.bestmovie = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'major':
          result.major = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'display_name':
          result.displayName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'uid':
          result.uid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'created_time':
          result.createdTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'phone_number':
          result.phoneNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$UsersRecord extends UsersRecord {
  @override
  final String? email;
  @override
  final String? photoUrl;
  @override
  final String? studentId;
  @override
  final String? firstname;
  @override
  final String? lastname;
  @override
  final DocumentReference<Object?>? userfollowed;
  @override
  final DocumentReference<Object?>? usersfollowinguser;
  @override
  final bool? residence;
  @override
  final DateTime? dateofbirth;
  @override
  final String? graduationyear;
  @override
  final String? bestfood;
  @override
  final String? bestmovie;
  @override
  final String? major;
  @override
  final String? displayName;
  @override
  final String? uid;
  @override
  final DateTime? createdTime;
  @override
  final String? phoneNumber;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$UsersRecord([void Function(UsersRecordBuilder)? updates]) =>
      (new UsersRecordBuilder()..update(updates))._build();

  _$UsersRecord._(
      {this.email,
      this.photoUrl,
      this.studentId,
      this.firstname,
      this.lastname,
      this.userfollowed,
      this.usersfollowinguser,
      this.residence,
      this.dateofbirth,
      this.graduationyear,
      this.bestfood,
      this.bestmovie,
      this.major,
      this.displayName,
      this.uid,
      this.createdTime,
      this.phoneNumber,
      this.ffRef})
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
        email == other.email &&
        photoUrl == other.photoUrl &&
        studentId == other.studentId &&
        firstname == other.firstname &&
        lastname == other.lastname &&
        userfollowed == other.userfollowed &&
        usersfollowinguser == other.usersfollowinguser &&
        residence == other.residence &&
        dateofbirth == other.dateofbirth &&
        graduationyear == other.graduationyear &&
        bestfood == other.bestfood &&
        bestmovie == other.bestmovie &&
        major == other.major &&
        displayName == other.displayName &&
        uid == other.uid &&
        createdTime == other.createdTime &&
        phoneNumber == other.phoneNumber &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, photoUrl.hashCode);
    _$hash = $jc(_$hash, studentId.hashCode);
    _$hash = $jc(_$hash, firstname.hashCode);
    _$hash = $jc(_$hash, lastname.hashCode);
    _$hash = $jc(_$hash, userfollowed.hashCode);
    _$hash = $jc(_$hash, usersfollowinguser.hashCode);
    _$hash = $jc(_$hash, residence.hashCode);
    _$hash = $jc(_$hash, dateofbirth.hashCode);
    _$hash = $jc(_$hash, graduationyear.hashCode);
    _$hash = $jc(_$hash, bestfood.hashCode);
    _$hash = $jc(_$hash, bestmovie.hashCode);
    _$hash = $jc(_$hash, major.hashCode);
    _$hash = $jc(_$hash, displayName.hashCode);
    _$hash = $jc(_$hash, uid.hashCode);
    _$hash = $jc(_$hash, createdTime.hashCode);
    _$hash = $jc(_$hash, phoneNumber.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UsersRecord')
          ..add('email', email)
          ..add('photoUrl', photoUrl)
          ..add('studentId', studentId)
          ..add('firstname', firstname)
          ..add('lastname', lastname)
          ..add('userfollowed', userfollowed)
          ..add('usersfollowinguser', usersfollowinguser)
          ..add('residence', residence)
          ..add('dateofbirth', dateofbirth)
          ..add('graduationyear', graduationyear)
          ..add('bestfood', bestfood)
          ..add('bestmovie', bestmovie)
          ..add('major', major)
          ..add('displayName', displayName)
          ..add('uid', uid)
          ..add('createdTime', createdTime)
          ..add('phoneNumber', phoneNumber)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class UsersRecordBuilder implements Builder<UsersRecord, UsersRecordBuilder> {
  _$UsersRecord? _$v;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _photoUrl;
  String? get photoUrl => _$this._photoUrl;
  set photoUrl(String? photoUrl) => _$this._photoUrl = photoUrl;

  String? _studentId;
  String? get studentId => _$this._studentId;
  set studentId(String? studentId) => _$this._studentId = studentId;

  String? _firstname;
  String? get firstname => _$this._firstname;
  set firstname(String? firstname) => _$this._firstname = firstname;

  String? _lastname;
  String? get lastname => _$this._lastname;
  set lastname(String? lastname) => _$this._lastname = lastname;

  DocumentReference<Object?>? _userfollowed;
  DocumentReference<Object?>? get userfollowed => _$this._userfollowed;
  set userfollowed(DocumentReference<Object?>? userfollowed) =>
      _$this._userfollowed = userfollowed;

  DocumentReference<Object?>? _usersfollowinguser;
  DocumentReference<Object?>? get usersfollowinguser =>
      _$this._usersfollowinguser;
  set usersfollowinguser(DocumentReference<Object?>? usersfollowinguser) =>
      _$this._usersfollowinguser = usersfollowinguser;

  bool? _residence;
  bool? get residence => _$this._residence;
  set residence(bool? residence) => _$this._residence = residence;

  DateTime? _dateofbirth;
  DateTime? get dateofbirth => _$this._dateofbirth;
  set dateofbirth(DateTime? dateofbirth) => _$this._dateofbirth = dateofbirth;

  String? _graduationyear;
  String? get graduationyear => _$this._graduationyear;
  set graduationyear(String? graduationyear) =>
      _$this._graduationyear = graduationyear;

  String? _bestfood;
  String? get bestfood => _$this._bestfood;
  set bestfood(String? bestfood) => _$this._bestfood = bestfood;

  String? _bestmovie;
  String? get bestmovie => _$this._bestmovie;
  set bestmovie(String? bestmovie) => _$this._bestmovie = bestmovie;

  String? _major;
  String? get major => _$this._major;
  set major(String? major) => _$this._major = major;

  String? _displayName;
  String? get displayName => _$this._displayName;
  set displayName(String? displayName) => _$this._displayName = displayName;

  String? _uid;
  String? get uid => _$this._uid;
  set uid(String? uid) => _$this._uid = uid;

  DateTime? _createdTime;
  DateTime? get createdTime => _$this._createdTime;
  set createdTime(DateTime? createdTime) => _$this._createdTime = createdTime;

  String? _phoneNumber;
  String? get phoneNumber => _$this._phoneNumber;
  set phoneNumber(String? phoneNumber) => _$this._phoneNumber = phoneNumber;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  UsersRecordBuilder() {
    UsersRecord._initializeBuilder(this);
  }

  UsersRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _email = $v.email;
      _photoUrl = $v.photoUrl;
      _studentId = $v.studentId;
      _firstname = $v.firstname;
      _lastname = $v.lastname;
      _userfollowed = $v.userfollowed;
      _usersfollowinguser = $v.usersfollowinguser;
      _residence = $v.residence;
      _dateofbirth = $v.dateofbirth;
      _graduationyear = $v.graduationyear;
      _bestfood = $v.bestfood;
      _bestmovie = $v.bestmovie;
      _major = $v.major;
      _displayName = $v.displayName;
      _uid = $v.uid;
      _createdTime = $v.createdTime;
      _phoneNumber = $v.phoneNumber;
      _ffRef = $v.ffRef;
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
  void update(void Function(UsersRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UsersRecord build() => _build();

  _$UsersRecord _build() {
    final _$result = _$v ??
        new _$UsersRecord._(
            email: email,
            photoUrl: photoUrl,
            studentId: studentId,
            firstname: firstname,
            lastname: lastname,
            userfollowed: userfollowed,
            usersfollowinguser: usersfollowinguser,
            residence: residence,
            dateofbirth: dateofbirth,
            graduationyear: graduationyear,
            bestfood: bestfood,
            bestmovie: bestmovie,
            major: major,
            displayName: displayName,
            uid: uid,
            createdTime: createdTime,
            phoneNumber: phoneNumber,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
