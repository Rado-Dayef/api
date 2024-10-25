class Picture {
  String large;
  String medium;
  String thumbnail;

  Picture({
    required this.large,
    required this.medium,
    required this.thumbnail,
  });

  String get asString => "Picture(large: $large, medium: $medium, thumbnail: $thumbnail)";

  factory Picture.asPicture(Map<String, dynamic> map) {
    return Picture(
      large: map["large"],
      medium: map["medium"],
      thumbnail: map["thumbnail"],
    );
  }
}
