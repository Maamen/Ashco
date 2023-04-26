// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'posts_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PostsRecord> _$postsRecordSerializer = new _$PostsRecordSerializer();

class _$PostsRecordSerializer implements StructuredSerializer<PostsRecord> {
  @override
  final Iterable<Type> types = const [PostsRecord, _$PostsRecord];
  @override
  final String wireName = 'PostsRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, PostsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.postId;
    if (value != null) {
      result
        ..add('PostId')
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
    value = object.postedbyRef;
    if (value != null) {
      result
        ..add('Postedby_ref')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.caption;
    if (value != null) {
      result
        ..add('Caption')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.photo;
    if (value != null) {
      result
        ..add('Photo')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.video;
    if (value != null) {
      result
        ..add('Video')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.likes;
    if (value != null) {
      result
        ..add('Likes')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.likedbyUsers;
    if (value != null) {
      result
        ..add('Likedby_Users')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.commentsRef;
    if (value != null) {
      result
        ..add('Comments_Ref')
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
  PostsRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PostsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'PostId':
          result.postId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'DateCreated':
          result.dateCreated = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'Postedby_ref':
          result.postedbyRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'Caption':
          result.caption = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Photo':
          result.photo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Video':
          result.video = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Likes':
          result.likes = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'Likedby_Users':
          result.likedbyUsers = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'Comments_Ref':
          result.commentsRef = serializers.deserialize(value,
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

class _$PostsRecord extends PostsRecord {
  @override
  final String? postId;
  @override
  final DateTime? dateCreated;
  @override
  final DocumentReference<Object?>? postedbyRef;
  @override
  final String? caption;
  @override
  final String? photo;
  @override
  final String? video;
  @override
  final int? likes;
  @override
  final DocumentReference<Object?>? likedbyUsers;
  @override
  final DocumentReference<Object?>? commentsRef;
  @override
  final DocumentReference<Object?>? postRef;
  @override
  final DocumentReference<Object?>? groupRef;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$PostsRecord([void Function(PostsRecordBuilder)? updates]) =>
      (new PostsRecordBuilder()..update(updates))._build();

  _$PostsRecord._(
      {this.postId,
      this.dateCreated,
      this.postedbyRef,
      this.caption,
      this.photo,
      this.video,
      this.likes,
      this.likedbyUsers,
      this.commentsRef,
      this.postRef,
      this.groupRef,
      this.ffRef})
      : super._();

  @override
  PostsRecord rebuild(void Function(PostsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PostsRecordBuilder toBuilder() => new PostsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PostsRecord &&
        postId == other.postId &&
        dateCreated == other.dateCreated &&
        postedbyRef == other.postedbyRef &&
        caption == other.caption &&
        photo == other.photo &&
        video == other.video &&
        likes == other.likes &&
        likedbyUsers == other.likedbyUsers &&
        commentsRef == other.commentsRef &&
        postRef == other.postRef &&
        groupRef == other.groupRef &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, postId.hashCode);
    _$hash = $jc(_$hash, dateCreated.hashCode);
    _$hash = $jc(_$hash, postedbyRef.hashCode);
    _$hash = $jc(_$hash, caption.hashCode);
    _$hash = $jc(_$hash, photo.hashCode);
    _$hash = $jc(_$hash, video.hashCode);
    _$hash = $jc(_$hash, likes.hashCode);
    _$hash = $jc(_$hash, likedbyUsers.hashCode);
    _$hash = $jc(_$hash, commentsRef.hashCode);
    _$hash = $jc(_$hash, postRef.hashCode);
    _$hash = $jc(_$hash, groupRef.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PostsRecord')
          ..add('postId', postId)
          ..add('dateCreated', dateCreated)
          ..add('postedbyRef', postedbyRef)
          ..add('caption', caption)
          ..add('photo', photo)
          ..add('video', video)
          ..add('likes', likes)
          ..add('likedbyUsers', likedbyUsers)
          ..add('commentsRef', commentsRef)
          ..add('postRef', postRef)
          ..add('groupRef', groupRef)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class PostsRecordBuilder implements Builder<PostsRecord, PostsRecordBuilder> {
  _$PostsRecord? _$v;

  String? _postId;
  String? get postId => _$this._postId;
  set postId(String? postId) => _$this._postId = postId;

  DateTime? _dateCreated;
  DateTime? get dateCreated => _$this._dateCreated;
  set dateCreated(DateTime? dateCreated) => _$this._dateCreated = dateCreated;

  DocumentReference<Object?>? _postedbyRef;
  DocumentReference<Object?>? get postedbyRef => _$this._postedbyRef;
  set postedbyRef(DocumentReference<Object?>? postedbyRef) =>
      _$this._postedbyRef = postedbyRef;

  String? _caption;
  String? get caption => _$this._caption;
  set caption(String? caption) => _$this._caption = caption;

  String? _photo;
  String? get photo => _$this._photo;
  set photo(String? photo) => _$this._photo = photo;

  String? _video;
  String? get video => _$this._video;
  set video(String? video) => _$this._video = video;

  int? _likes;
  int? get likes => _$this._likes;
  set likes(int? likes) => _$this._likes = likes;

  DocumentReference<Object?>? _likedbyUsers;
  DocumentReference<Object?>? get likedbyUsers => _$this._likedbyUsers;
  set likedbyUsers(DocumentReference<Object?>? likedbyUsers) =>
      _$this._likedbyUsers = likedbyUsers;

  DocumentReference<Object?>? _commentsRef;
  DocumentReference<Object?>? get commentsRef => _$this._commentsRef;
  set commentsRef(DocumentReference<Object?>? commentsRef) =>
      _$this._commentsRef = commentsRef;

  DocumentReference<Object?>? _postRef;
  DocumentReference<Object?>? get postRef => _$this._postRef;
  set postRef(DocumentReference<Object?>? postRef) => _$this._postRef = postRef;

  DocumentReference<Object?>? _groupRef;
  DocumentReference<Object?>? get groupRef => _$this._groupRef;
  set groupRef(DocumentReference<Object?>? groupRef) =>
      _$this._groupRef = groupRef;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  PostsRecordBuilder() {
    PostsRecord._initializeBuilder(this);
  }

  PostsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _postId = $v.postId;
      _dateCreated = $v.dateCreated;
      _postedbyRef = $v.postedbyRef;
      _caption = $v.caption;
      _photo = $v.photo;
      _video = $v.video;
      _likes = $v.likes;
      _likedbyUsers = $v.likedbyUsers;
      _commentsRef = $v.commentsRef;
      _postRef = $v.postRef;
      _groupRef = $v.groupRef;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PostsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PostsRecord;
  }

  @override
  void update(void Function(PostsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PostsRecord build() => _build();

  _$PostsRecord _build() {
    final _$result = _$v ??
        new _$PostsRecord._(
            postId: postId,
            dateCreated: dateCreated,
            postedbyRef: postedbyRef,
            caption: caption,
            photo: photo,
            video: video,
            likes: likes,
            likedbyUsers: likedbyUsers,
            commentsRef: commentsRef,
            postRef: postRef,
            groupRef: groupRef,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
