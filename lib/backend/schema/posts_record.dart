import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'posts_record.g.dart';

abstract class PostsRecord implements Built<PostsRecord, PostsRecordBuilder> {
  static Serializer<PostsRecord> get serializer => _$postsRecordSerializer;

  @BuiltValueField(wireName: 'PostId')
  String? get postId;

  @BuiltValueField(wireName: 'DateCreated')
  DateTime? get dateCreated;

  @BuiltValueField(wireName: 'Postedby_ref')
  DocumentReference? get postedbyRef;

  @BuiltValueField(wireName: 'Caption')
  String? get caption;

  @BuiltValueField(wireName: 'Photo')
  String? get photo;

  @BuiltValueField(wireName: 'Video')
  String? get video;

  @BuiltValueField(wireName: 'Likes')
  int? get likes;

  @BuiltValueField(wireName: 'Likedby_Users')
  DocumentReference? get likedbyUsers;

  @BuiltValueField(wireName: 'Comments_Ref')
  DocumentReference? get commentsRef;

  @BuiltValueField(wireName: 'Post_Ref')
  DocumentReference? get postRef;

  @BuiltValueField(wireName: 'Group_Ref')
  DocumentReference? get groupRef;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(PostsRecordBuilder builder) => builder
    ..postId = ''
    ..caption = ''
    ..photo = ''
    ..video = ''
    ..likes = 0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Posts');

  static Stream<PostsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<PostsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  PostsRecord._();
  factory PostsRecord([void Function(PostsRecordBuilder) updates]) =
      _$PostsRecord;

  static PostsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createPostsRecordData({
  String? postId,
  DateTime? dateCreated,
  DocumentReference? postedbyRef,
  String? caption,
  String? photo,
  String? video,
  int? likes,
  DocumentReference? likedbyUsers,
  DocumentReference? commentsRef,
  DocumentReference? postRef,
  DocumentReference? groupRef,
}) {
  final firestoreData = serializers.toFirestore(
    PostsRecord.serializer,
    PostsRecord(
      (p) => p
        ..postId = postId
        ..dateCreated = dateCreated
        ..postedbyRef = postedbyRef
        ..caption = caption
        ..photo = photo
        ..video = video
        ..likes = likes
        ..likedbyUsers = likedbyUsers
        ..commentsRef = commentsRef
        ..postRef = postRef
        ..groupRef = groupRef,
    ),
  );

  return firestoreData;
}
