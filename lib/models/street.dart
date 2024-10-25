class Street {
  int number;
  String name;

  Street({
    required this.number,
    required this.name,
  });

  String get asString => "Street(number: $number, name: $name)";

  factory Street.asStreet(Map<String, dynamic> map) {
    return Street(
      name: map['name'],
      number: map['number'],
    );
  }
}
