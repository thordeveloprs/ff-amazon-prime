import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'news_details_record.g.dart';

abstract class NewsDetailsRecord
    implements Built<NewsDetailsRecord, NewsDetailsRecordBuilder> {
  static Serializer<NewsDetailsRecord> get serializer =>
      _$newsDetailsRecordSerializer;

  String? get heading;

  @BuiltValueField(wireName: 'short_description')
  String? get shortDescription;

  String? get description;

  @BuiltValueField(wireName: 'uploaded_time')
  DateTime? get uploadedTime;

  bool? get isBookmarked;

  String? get title;

  @BuiltValueField(wireName: 'img_url')
  String? get imgUrl;

  String? get duration;

  String? get category;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(NewsDetailsRecordBuilder builder) => builder
    ..heading = ''
    ..shortDescription = ''
    ..description = ''
    ..isBookmarked = false
    ..title = ''
    ..imgUrl = ''
    ..duration = ''
    ..category = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('newsDetails');

  static Stream<NewsDetailsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<NewsDetailsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  NewsDetailsRecord._();
  factory NewsDetailsRecord([void Function(NewsDetailsRecordBuilder) updates]) =
      _$NewsDetailsRecord;

  static NewsDetailsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createNewsDetailsRecordData({
  String? heading,
  String? shortDescription,
  String? description,
  DateTime? uploadedTime,
  bool? isBookmarked,
  String? title,
  String? imgUrl,
  String? duration,
  String? category,
}) {
  final firestoreData = serializers.toFirestore(
    NewsDetailsRecord.serializer,
    NewsDetailsRecord(
      (n) => n
        ..heading = heading
        ..shortDescription = shortDescription
        ..description = description
        ..uploadedTime = uploadedTime
        ..isBookmarked = isBookmarked
        ..title = title
        ..imgUrl = imgUrl
        ..duration = duration
        ..category = category,
    ),
  );

  return firestoreData;
}
