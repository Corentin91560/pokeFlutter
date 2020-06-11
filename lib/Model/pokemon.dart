class Pokemon {
  final String name;
  final String detailsUrl;

  Pokemon(this.name, this.detailsUrl);

  factory Pokemon.fromJson(Map<String, dynamic> json) {
    return Pokemon(
      json["name"],
      json["url"],
    );
  }
}