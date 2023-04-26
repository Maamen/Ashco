// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'groups_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GroupsRecord> _$groupsRecordSerializer =
    new _$GroupsRecordSerializer();

class _$GroupsRecordSerializer implements StructuredSerializer<GroupsRecord> {
  @override
  final Iterable<Type> types = const [GroupsRecord, _$GroupsRecord];
  @override
  final String wireName = 'GroupsRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, GroupsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.groupID;
    if (value != null) {
      result
        ..add('GroupID')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.dateCreated;
    if (value != null) {
      result
        ..add('DateCreated')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(DateTime)])));
    }
    value = object.groupName;
    if (value != null) {
      result
        ..add('GroupName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.about;
    if (value != null) {
      result
        ..add('About')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.groupImage;
    if (value != null) {
      result
        ..add('GroupImage')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.memeber;
    if (value != null) {
      result
        ..add('Memeber')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.moderatorsS;
    if (value != null) {
      result
        ..add('Moderators_s')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.createdby;
    if (value != null) {
      result
        ..add('Createdby')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.isPrivate;
    if (value != null) {
      result
        ..add('isPrivate')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.commentRef;
    if (value != null) {
      result
        ..add('Comment_Ref')
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
  GroupsRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GroupsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'GroupID':
          result.groupID = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'DateCreated':
          result.dateCreated.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(DateTime)]))!
              as BuiltList<Object?>);
          break;
        case 'GroupName':
          result.groupName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'About':
          result.about = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'GroupImage':
          result.groupImage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Memeber':
          result.memeber = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'Moderators_s':
          result.moderatorsS = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'Createdby':
          result.createdby = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'isPrivate':
          result.isPrivate = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'Comment_Ref':
          result.commentRef = serializers.deserialize(value,
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

class _$GroupsRecord extends GroupsRecord {
  @override
  final String? groupID;
  @override
  final BuiltList<DateTime>? dateCreated;
  @override
  final String? groupName;
  @override
  final String? about;
  @override
  final String? groupImage;
  @override
  final DocumentReference<Object?>? memeber;
  @override
  final DocumentReference<Object?>? moderatorsS;
  @override
  final DocumentReference<Object?>? createdby;
  @override
  final bool? isPrivate;
  @override
  final DocumentReference<Object?>? commentRef;
  @override
  final DocumentReference<Object?>? postRef;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$GroupsRecord([void Function(GroupsRecordBuilder)? updates]) =>
      (new GroupsRecordBuilder()..update(updates))._build();

  _$GroupsRecord._(
      {this.groupID,
      this.dateCreated,
      this.groupName,
      this.about,
      this.groupImage,
      this.memeber,
      this.moderatorsS,
      this.createdby,
      this.isPrivate,
      this.commentRef,
      this.postRef,
      this.ffRef})
      : super._();

  @override
  GroupsRecord rebuild(void Function(GroupsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GroupsRecordBuilder toBuilder() => new GroupsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GroupsRecord &&
        groupID == other.groupID &&
        dateCreated == other.dateCreated &&
        groupName == other.groupName &&
        about == other.about &&
        groupImage == other.groupImage &&
        memeber == other.memeber &&
        moderatorsS == other.moderatorsS &&
        createdby == other.createdby &&
        isPrivate == other.isPrivate &&
        commentRef == other.commentRef &&
        postRef == other.postRef &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, groupID.hashCode);
    _$hash = $jc(_$hash, dateCreated.hashCode);
    _$hash = $jc(_$hash, groupName.hashCode);
    _$hash = $jc(_$hash, about.hashCode);
    _$hash = $jc(_$hash, groupImage.hashCode);
    _$hash = $jc(_$hash, memeber.hashCode);
    _$hash = $jc(_$hash, moderatorsS.hashCode);
    _$hash = $jc(_$hash, createdby.hashCode);
    _$hash = $jc(_$hash, isPrivate.hashCode);
    _$hash = $jc(_$hash, commentRef.hashCode);
    _$hash = $jc(_$hash, postRef.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GroupsRecord')
          ..add('groupID', groupID)
          ..add('dateCreated', dateCreated)
          ..add('groupName', groupName)
          ..add('about', about)
          ..add('groupImage', groupImage)
          ..add('memeber', memeber)
          ..add('moderatorsS', moderatorsS)
          ..add('createdby', createdby)
          ..add('isPrivate', isPrivate)
          ..add('commentRef', commentRef)
          ..add('postRef', postRef)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class GroupsRecordBuilder
    implements Builder<GroupsRecord, GroupsRecordBuilder> {
  _$GroupsRecord? _$v;

  String? _groupID;
  String? get groupID => _$this._groupID;
  set groupID(String? groupID) => _$this._groupID = groupID;

  ListBuilder<DateTime>? _dateCreated;
  ListBuilder<DateTime> get dateCreated =>
      _$this._dateCreated ??= new ListBuilder<DateTime>();
  set dateCreated(ListBuilder<DateTime>? dateCreated) =>
      _$this._dateCreated = dateCreated;

  String? _groupName;
  String? get groupName => _$this._groupName;
  set groupName(String? groupName) => _$this._groupName = groupName;

  String? _about;
  String? get about => _$this._about;
  set about(String? about) => _$this._about = about;

  String? _groupImage;
  String? get groupImage => _$this._groupImage;
  set groupImage(String? groupImage) => _$this._groupImage = groupImage;

  DocumentReference<Object?>? _memeber;
  DocumentReference<Object?>? get memeber => _$this._memeber;
  set memeber(DocumentReference<Object?>? memeber) => _$this._memeber = memeber;

  DocumentReference<Object?>? _moderatorsS;
  DocumentReference<Object?>? get moderatorsS => _$this._moderatorsS;
  set moderatorsS(DocumentReference<Object?>? moderatorsS) =>
      _$this._moderatorsS = moderatorsS;

  DocumentReference<Object?>? _createdby;
  DocumentReference<Object?>? get createdby => _$this._createdby;
  set createdby(DocumentReference<Object?>? createdby) =>
      _$this._createdby = createdby;

  bool? _isPrivate;
  bool? get isPrivate => _$this._isPrivate;
  set isPrivate(bool? isPrivate) => _$this._isPrivate = isPrivate;

  DocumentReference<Object?>? _commentRef;
  DocumentReference<Object?>? get commentRef => _$this._commentRef;
  set commentRef(DocumentReference<Object?>? commentRef) =>
      _$this._commentRef = commentRef;

  DocumentReference<Object?>? _postRef;
  DocumentReference<Object?>? get postRef => _$this._postRef;
  set postRef(DocumentReference<Object?>? postRef) => _$this._postRef = postRef;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  GroupsRecordBuilder() {
    GroupsRecord._initializeBuilder(this);
  }

  GroupsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _groupID = $v.groupID;
      _dateCreated = $v.dateCreated?.toBuilder();
      _groupName = $v.groupName;
      _about = $v.about;
      _groupImage = $v.groupImage;
      _memeber = $v.memeber;
      _moderatorsS = $v.moderatorsS;
      _createdby = $v.createdby;
      _isPrivate = $v.isPrivate;
      _commentRef = $v.commentRef;
      _postRef = $v.postRef;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GroupsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GroupsRecord;
  }

  @override
  void update(void Function(GroupsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GroupsRecord build() => _build();

  _$GroupsRecord _build() {
    _$GroupsRecord _$result;
    try {
      _$result = _$v ??
          new _$GroupsRecord._(
              groupID: groupID,
              dateCreated: _dateCreated?.build(),
              groupName: groupName,
              about: about,
              groupImage: groupImage,
              memeber: memeber,
              moderatorsS: moderatorsS,
              createdby: createdby,
              isPrivate: isPrivate,
              commentRef: commentRef,
              postRef: postRef,
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'dateCreated';
        _dateCreated?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GroupsRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
