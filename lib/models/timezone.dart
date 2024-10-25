class Timezone {
  String offset;
  String description;

  Timezone({
    required this.offset,
    required this.description,
  });

  String get asString => "Timezone(offset: $offset, description: $description)";

  factory Timezone.asTimezone(Map<String, dynamic> map) {
    return Timezone(
      offset: map["offset"],
      description: map["description"],
    );
  }
}
