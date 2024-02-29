class ImageModel {
  ImageModel(this.id, this.title, this.url);
  int id;
  String url;
  String title;

  factory ImageModel.fromJson(Map<String, dynamic> parsedJson) {
    return ImageModel(
      parsedJson['id'],
      parsedJson['title'],
      parsedJson['url'],
    );
  }
}
