import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'groups_record.g.dart';

abstract class GroupsRecord
    implements Built<GroupsRecord, GroupsRecordBuilder> {
  static Serializer<GroupsRecord> get serializer => _$groupsRecordSerializer;

  @BuiltValueField(wireName: 'GroupID')
  String? get groupID;

  @BuiltValueField(wireName: 'DateCreated')
  BuiltList<DateTime>? get dateCreated;

  @BuiltValueField(wireName: 'GroupName')
  String? get groupName;

  @BuiltValueField(wireName: 'About')
  String? get about;

  @BuiltValueField(wireName: 'GroupImage')
  String? get groupImage;

  @BuiltValueField(wireName: 'Memeber')
  DocumentReference? get memeber;

  @BuiltValueField(wireName: 'Moderators_s')
  DocumentReference? get moderatorsS;

  @BuiltValueField(wireName: 'Createdby')
  DocumentReference? get createdby;

  bool? get isPrivate;

  @BuiltValueField(wireName: 'Comment_Ref')
  DocumentReference? get commentRef;

  @BuiltValueField(wireName: 'Post_Ref')
  DocumentReference? get postRef;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(GroupsRecordBuilder builder) => builder
    ..groupID = ''
    ..dateCreated = ListBuilder()
    ..groupName = ''
    ..about = ''
    ..groupImage = ''
    ..isPrivate = false;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Groups');

  static Stream<GroupsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<GroupsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  GroupsRecord._();
  factory GroupsRecord([void Function(GroupsRecordBuilder) updates]) =
      _$GroupsRecord;

  static GroupsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createGroupsRecordData({
  String? groupID,
  String? groupName,
  String? about,
  String? groupImage,
  DocumentReference? memeber,
  DocumentReference? moderatorsS,
  DocumentReference? createdby,
  bool? isPrivate,
  DocumentReference? commentRef,
  DocumentReference? postRef,
}) {
  final firestoreData = serializers.toFirestore(
    GroupsRecord.serializer,
    GroupsRecord(
      (g) => g
        ..groupID = groupID
        ..dateCreated = null
        ..groupName = groupName
        ..about = about
        ..groupImage = groupImage
        ..memeber = memeber
        ..moderatorsS = moderatorsS
        ..createdby = createdby
        ..isPrivate = isPrivate
        ..commentRef = commentRef
        ..postRef = postRef,
    ),
  );

  return firestoreData;
}
