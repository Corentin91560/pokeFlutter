class Stat {
  final String base_stat;
  final String name;

  Stat(this.base_stat, this.name);

  factory Stat.fromJson(Map<String, dynamic> json) {
    String tempname;

    tempname = json["stat"]["name"];

    return Stat(
      json["base_stat"],
      tempname,
    );
  }
}