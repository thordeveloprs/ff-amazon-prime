// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_details_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<NewsDetailsRecord> _$newsDetailsRecordSerializer =
    new _$NewsDetailsRecordSerializer();

class _$NewsDetailsRecordSerializer
    implements StructuredSerializer<NewsDetailsRecord> {
  @override
  final Iterable<Type> types = const [NewsDetailsRecord, _$NewsDetailsRecord];
  @override
  final String wireName = 'NewsDetailsRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, NewsDetailsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.heading;
    if (value != null) {
      result
        ..add('heading')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.shortDescription;
    if (value != null) {
      result
        ..add('short_description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.description;
    if (value != null) {
      result
        ..add('description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.uploadedTime;
    if (value != null) {
      result
        ..add('uploaded_time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.isBookmarked;
    if (value != null) {
      result
        ..add('isBookmarked')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.title;
    if (value != null) {
      result
        ..add('title')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.imgUrl;
    if (value != null) {
      result
        ..add('img_url')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.duration;
    if (value != null) {
      result
        ..add('duration')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.category;
    if (value != null) {
      result
        ..add('category')
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
  NewsDetailsRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new NewsDetailsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'heading':
          result.heading = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'short_description':
          result.shortDescription = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'uploaded_time':
          result.uploadedTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'isBookmarked':
          result.isBookmarked = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'img_url':
          result.imgUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'duration':
          result.duration = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'category':
          result.category = serializers.deserialize(value,
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

class _$NewsDetailsRecord extends NewsDetailsRecord {
  @override
  final String? heading;
  @override
  final String? shortDescription;
  @override
  final String? description;
  @override
  final DateTime? uploadedTime;
  @override
  final bool? isBookmarked;
  @override
  final String? title;
  @override
  final String? imgUrl;
  @override
  final String? duration;
  @override
  final String? category;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$NewsDetailsRecord(
          [void Function(NewsDetailsRecordBuilder)? updates]) =>
      (new NewsDetailsRecordBuilder()..update(updates))._build();

  _$NewsDetailsRecord._(
      {this.heading,
      this.shortDescription,
      this.description,
      this.uploadedTime,
      this.isBookmarked,
      this.title,
      this.imgUrl,
      this.duration,
      this.category,
      this.ffRef})
      : super._();

  @override
  NewsDetailsRecord rebuild(void Function(NewsDetailsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NewsDetailsRecordBuilder toBuilder() =>
      new NewsDetailsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NewsDetailsRecord &&
        heading == other.heading &&
        shortDescription == other.shortDescription &&
        description == other.description &&
        uploadedTime == other.uploadedTime &&
        isBookmarked == other.isBookmarked &&
        title == other.title &&
        imgUrl == other.imgUrl &&
        duration == other.duration &&
        category == other.category &&
        ffRef == other.ffRef;
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
                                    $jc($jc(0, heading.hashCode),
                                        shortDescription.hashCode),
                                    description.hashCode),
                                uploadedTime.hashCode),
                            isBookmarked.hashCode),
                        title.hashCode),
                    imgUrl.hashCode),
                duration.hashCode),
            category.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'NewsDetailsRecord')
          ..add('heading', heading)
          ..add('shortDescription', shortDescription)
          ..add('description', description)
          ..add('uploadedTime', uploadedTime)
          ..add('isBookmarked', isBookmarked)
          ..add('title', title)
          ..add('imgUrl', imgUrl)
          ..add('duration', duration)
          ..add('category', category)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class NewsDetailsRecordBuilder
    implements Builder<NewsDetailsRecord, NewsDetailsRecordBuilder> {
  _$NewsDetailsRecord? _$v;

  String? _heading;
  String? get heading => _$this._heading;
  set heading(String? heading) => _$this._heading = heading;

  String? _shortDescription;
  String? get shortDescription => _$this._shortDescription;
  set shortDescription(String? shortDescription) =>
      _$this._shortDescription = shortDescription;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  DateTime? _uploadedTime;
  DateTime? get uploadedTime => _$this._uploadedTime;
  set uploadedTime(DateTime? uploadedTime) =>
      _$this._uploadedTime = uploadedTime;

  bool? _isBookmarked;
  bool? get isBookmarked => _$this._isBookmarked;
  set isBookmarked(bool? isBookmarked) => _$this._isBookmarked = isBookmarked;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _imgUrl;
  String? get imgUrl => _$this._imgUrl;
  set imgUrl(String? imgUrl) => _$this._imgUrl = imgUrl;

  String? _duration;
  String? get duration => _$this._duration;
  set duration(String? duration) => _$this._duration = duration;

  String? _category;
  String? get category => _$this._category;
  set category(String? category) => _$this._category = category;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  NewsDetailsRecordBuilder() {
    NewsDetailsRecord._initializeBuilder(this);
  }

  NewsDetailsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _heading = $v.heading;
      _shortDescription = $v.shortDescription;
      _description = $v.description;
      _uploadedTime = $v.uploadedTime;
      _isBookmarked = $v.isBookmarked;
      _title = $v.title;
      _imgUrl = $v.imgUrl;
      _duration = $v.duration;
      _category = $v.category;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NewsDetailsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$NewsDetailsRecord;
  }

  @override
  void update(void Function(NewsDetailsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  NewsDetailsRecord build() => _build();

  _$NewsDetailsRecord _build() {
    final _$result = _$v ??
        new _$NewsDetailsRecord._(
            heading: heading,
            shortDescription: shortDescription,
            description: description,
            uploadedTime: uploadedTime,
            isBookmarked: isBookmarked,
            title: title,
            imgUrl: imgUrl,
            duration: duration,
            category: category,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
