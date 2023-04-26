// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comments_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CommentsRecord> _$commentsRecordSerializer =
    new _$CommentsRecordSerializer();

class _$CommentsRecordSerializer
    implements StructuredSerializer<CommentsRecord> {
  @override
  final Iterable<Type> types = const [CommentsRecord, _$CommentsRecord];
  @override
  final String wireName = 'CommentsRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, CommentsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.commentId;
    if (value != null) {
      result
        ..add('CommentId')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.dateCreated;
    if (value != null) {
      result
        ..add('DateCreated')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.content;
    if (value != null) {
      result
        ..add('Content')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.likes;
    if (value != null) {
      result
        ..add('Likes')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.likedbyUser;
    if (value != null) {
      result
        ..add('Likedby_user')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.postRef;
    if (value != null) {
      result
        ..add('Post_Ref')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.groupRef;
    if (value != null) {
      result
        ..add('Group_Ref')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.createdbyRef;
    if (value != null) {
      result
        ..add('Createdby_Ref')
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
  CommentsRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CommentsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'CommentId':
          result.commentId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'DateCreated':
          result.dateCreated = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'Content':
          result.content = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Likes':
          result.likes = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'Likedby_user':
          result.likedbyUser = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'Post_Ref':
          result.postRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'Group_Ref':
          result.groupRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'Createdby_Ref':
          result.createdbyRef = serializers.deserialize(value,
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

class _$CommentsRecord extends CommentsRecord {
  @override
  final String? commentId;
  @override
  final DateTime? dateCreated;
  @override
  final String? content;
  @override
  final int? likes;
  @override
  final DocumentReference<Object?>? likedbyUser;
  @override
  final DocumentReference<Object?>? postRef;
  @override
  final DocumentReference<Object?>? groupRef;
  @override
  final String? createdbyRef;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$CommentsRecord([void Function(CommentsRecordBuilder)? updates]) =>
      (new CommentsRecordBuilder()..update(updates))._build();

  _$CommentsRecord._(
      {this.commentId,
      this.dateCreated,
      this.content,
      this.likes,
      this.likedbyUser,
      this.postRef,
      this.groupRef,
      this.createdbyRef,
      this.ffRef})
      : super._();

  @override
  CommentsRecord rebuild(void Function(CommentsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CommentsRecordBuilder toBuilder() =>
      new CommentsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CommentsRecord &&
        commentId == other.commentId &&
        dateCreated == other.dateCreated &&
        content == other.content &&
        likes == other.likes &&
        likedbyUser == other.likedbyUser &&
        postRef == other.postRef &&
        groupRef == other.groupRef &&
        createdbyRef == other.createdbyRef &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, commentId.hashCode);
    _$hash = $jc(_$hash, dateCreated.hashCode);
    _$hash = $jc(_$hash, content.hashCode);
    _$hash = $jc(_$hash, likes.hashCode);
    _$hash = $jc(_$hash, likedbyUser.hashCode);
    _$hash = $jc(_$hash, postRef.hashCode);
    _$hash = $jc(_$hash, groupRef.hashCode);
    _$hash = $jc(_$hash, createdbyRef.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CommentsRecord')
          ..add('commentId', commentId)
          ..add('dateCreated', dateCreated)
          ..add('content', content)
          ..add('likes', likes)
          ..add('likedbyUser', likedbyUser)
          ..add('postRef', postRef)
          ..add('groupRef', groupRef)
          ..add('createdbyRef', createdbyRef)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class CommentsRecordBuilder
    implements Builder<CommentsRecord, CommentsRecordBuilder> {
  _$CommentsRecord? _$v;

  String? _commentId;
  String? get commentId => _$this._commentId;
  set commentId(String? commentId) => _$this._commentId = commentId;

  DateTime? _dateCreated;
  DateTime? get dateCreated => _$this._dateCreated;
  set dateCreated(DateTime? dateCreated) => _$this._dateCreated = dateCreated;

  String? _content;
  String? get content => _$this._content;
  set content(String? content) => _$this._content = content;

  int? _likes;
  int? get likes => _$this._likes;
  set likes(int? likes) => _$this._likes = likes;

  DocumentReference<Object?>? _likedbyUser;
  DocumentReference<Object?>? get likedbyUser => _$this._likedbyUser;
  set likedbyUser(DocumentReference<Object?>? likedbyUser) =>
      _$this._likedbyUser = likedbyUser;

  DocumentReference<Object?>? _postRef;
  DocumentReference<Object?>? get postRef => _$this._postRef;
  set postRef(DocumentReference<Object?>? postRef) => _$this._postRef = postRef;

  DocumentReference<Object?>? _groupRef;
  DocumentReference<Object?>? get groupRef => _$this._groupRef;
  set groupRef(DocumentReference<Object?>? groupRef) =>
      _$this._groupRef = groupRef;

  String? _createdbyRef;
  String? get createdbyRef => _$this._createdbyRef;
  set createdbyRef(String? createdbyRef) => _$this._createdbyRef = createdbyRef;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  CommentsRecordBuilder() {
    CommentsRecord._initializeBuilder(this);
  }

  CommentsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _commentId = $v.commentId;
      _dateCreated = $v.dateCreated;
      _content = $v.content;
      _likes = $v.likes;
      _likedbyUser = $v.likedbyUser;
      _postRef = $v.postRef;
      _groupRef = $v.groupRef;
      _createdbyRef = $v.createdbyRef;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CommentsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CommentsRecord;
  }

  @override
  void update(void Function(CommentsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CommentsRecord build() => _build();

  _$CommentsRecord _build() {
    final _$result = _$v ??
        new _$CommentsRecord._(
            commentId: commentId,
            dateCreated: dateCreated,
            content: content,
            likes: likes,
            likedbyUser: likedbyUser,
            postRef: postRef,
            groupRef: groupRef,
            createdbyRef: createdbyRef,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
