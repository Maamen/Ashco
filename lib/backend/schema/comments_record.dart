import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'comments_record.g.dart';

abstract class CommentsRecord
    implements Built<CommentsRecord, CommentsRecordBuilder> {
  static Serializer<CommentsRecord> get serializer =>
      _$commentsRecordSerializer;

  @BuiltValueField(wireName: 'CommentId')
  String? get commentId;

  @BuiltValueField(wireName: 'DateCreated')
  DateTime? get dateCreated;

  @BuiltValueField(wireName: 'Content')
  String? get content;

  @BuiltValueField(wireName: 'Likes')
  int? get likes;

  @BuiltValueField(wireName: 'Likedby_user')
  DocumentReference? get likedbyUser;

  @BuiltValueField(wireName: 'Post_Ref')
  DocumentReference? get postRef;

  @BuiltValueField(wireName: 'Group_Ref')
  DocumentReference? get groupRef;

  @BuiltValueField(wireName: 'Createdby_Ref')
  String? get createdbyRef;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(CommentsRecordBuilder builder) => builder
    ..commentId = ''
    ..content = ''
    ..likes = 0
    ..createdbyRef = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Comments');

  static Stream<CommentsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<CommentsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  CommentsRecord._();
  factory CommentsRecord([void Function(CommentsRecordBuilder) updates]) =
      _$CommentsRecord;

  static CommentsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createCommentsRecordData({
  String? commentId,
  DateTime? dateCreated,
  String? content,
  int? likes,
  DocumentReference? likedbyUser,
  DocumentReference? postRef,
  DocumentReference? groupRef,
  String? createdbyRef,
}) {
  final firestoreData = serializers.toFirestore(
    CommentsRecord.serializer,
    CommentsRecord(
      (c) => c
        ..commentId = commentId
        ..dateCreated = dateCreated
        ..content = content
        ..likes = likes
        ..likedbyUser = likedbyUser
        ..postRef = postRef
        ..groupRef = groupRef
        ..createdbyRef = createdbyRef,
    ),
  );

  return firestoreData;
}
