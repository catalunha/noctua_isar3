import 'package:isar/isar.dart';

part 'photo_model.g.dart';

@Collection()
class PhotoModel {
  Id? isarId;
  final int albumId;
  final int id;
  final String title;
  final String url;
  final String thumbnailUrl;
  List<byte>? image;
  PhotoModel({
    this.isarId,
    required this.albumId,
    required this.id,
    required this.title,
    required this.url,
    required this.thumbnailUrl,
    this.image,
  });

  PhotoModel copyWith({
    Id? isarId,
    int? albumId,
    int? id,
    String? title,
    String? url,
    String? thumbnailUrl,
    List<byte>? image,
  }) {
    return PhotoModel(
      isarId: isarId ?? this.isarId,
      albumId: albumId ?? this.albumId,
      id: id ?? this.id,
      title: title ?? this.title,
      url: url ?? this.url,
      thumbnailUrl: thumbnailUrl ?? this.thumbnailUrl,
      image: image ?? this.image,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'albumId': albumId});
    result.addAll({'id': id});
    result.addAll({'title': title});
    result.addAll({'url': url});
    result.addAll({'thumbnailUrl': thumbnailUrl});

    return result;
  }

  factory PhotoModel.fromMap(Map<String, dynamic> map) {
    return PhotoModel(
      albumId: map['albumId']?.toInt() ?? 0,
      id: map['id']?.toInt() ?? 0,
      title: map['title'] ?? '',
      url: map['url'] ?? '',
      thumbnailUrl: map['thumbnailUrl'] ?? '',
    );
  }

  // String toJson() => json.encode(toMap());

  // factory PhotoModel.fromJson(String source) =>
  //     PhotoModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'PhotoModel(isarId: $isarId, albumId: $albumId, id: $id, title: $title, url: $url, thumbnailUrl: $thumbnailUrl, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is PhotoModel &&
        other.isarId == isarId &&
        other.albumId == albumId &&
        other.id == id &&
        other.title == title &&
        other.url == url &&
        other.thumbnailUrl == thumbnailUrl &&
        other.image == image;
  }

  @override
  int get hashCode {
    return isarId.hashCode ^
        albumId.hashCode ^
        id.hashCode ^
        title.hashCode ^
        url.hashCode ^
        thumbnailUrl.hashCode ^
        image.hashCode;
  }
}
