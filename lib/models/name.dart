class Name {
  String last;
  String first;
  String title;

  Name({
    required this.last,
    required this.first,
    required this.title,
  });

  String get asString => "Name(last: $last, first: $first, title: $title)";

  factory Name.asName(Map<String, dynamic> map) {
    return Name(
      last: map["last"],
      first: map["first"],
      title: map["title"],
    );
  }
}
