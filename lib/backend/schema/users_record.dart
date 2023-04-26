import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'users_record.g.dart';

abstract class UsersRecord implements Built<UsersRecord, UsersRecordBuilder> {
  static Serializer<UsersRecord> get serializer => _$usersRecordSerializer;

  String? get email;

  @BuiltValueField(wireName: 'photo_url')
  String? get photoUrl;

  @BuiltValueField(wireName: 'student_id')
  String? get studentId;

  String? get firstname;

  String? get lastname;

  DocumentReference? get userfollowed;

  DocumentReference? get usersfollowinguser;

  bool? get residence;

  DateTime? get dateofbirth;

  String? get graduationyear;

  String? get bestfood;

  String? get bestmovie;

  String? get major;

  @BuiltValueField(wireName: 'display_name')
  String? get displayName;

  String? get uid;

  @BuiltValueField(wireName: 'created_time')
  DateTime? get createdTime;

  @BuiltValueField(wireName: 'phone_number')
  String? get phoneNumber;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(UsersRecordBuilder builder) => builder
    ..email = ''
    ..photoUrl = ''
    ..studentId = ''
    ..firstname = ''
    ..lastname = ''
    ..residence = false
    ..graduationyear = ''
    ..bestfood = ''
    ..bestmovie = ''
    ..major = ''
    ..displayName = ''
    ..uid = ''
    ..phoneNumber = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<UsersRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  UsersRecord._();
  factory UsersRecord([void Function(UsersRecordBuilder) updates]) =
      _$UsersRecord;

  static UsersRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createUsersRecordData({
  String? email,
  String? photoUrl,
  String? studentId,
  String? firstname,
  String? lastname,
  DocumentReference? userfollowed,
  DocumentReference? usersfollowinguser,
  bool? residence,
  DateTime? dateofbirth,
  String? graduationyear,
  String? bestfood,
  String? bestmovie,
  String? major,
  String? displayName,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
}) {
  final firestoreData = serializers.toFirestore(
    UsersRecord.serializer,
    UsersRecord(
      (u) => u
        ..email = email
        ..photoUrl = photoUrl
        ..studentId = studentId
        ..firstname = firstname
        ..lastname = lastname
        ..userfollowed = userfollowed
        ..usersfollowinguser = usersfollowinguser
        ..residence = residence
        ..dateofbirth = dateofbirth
        ..graduationyear = graduationyear
        ..bestfood = bestfood
        ..bestmovie = bestmovie
        ..major = major
        ..displayName = displayName
        ..uid = uid
        ..createdTime = createdTime
        ..phoneNumber = phoneNumber,
    ),
  );

  return firestoreData;
}
