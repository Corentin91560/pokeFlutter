class Sprite {
  final String back_default;
  final String back_female;
  final String back_shiny;
  final String back_shiny_female;
  final String front_default;
  final String front_female;
  final String front_shiny;
  final String front_shiny_female;

  Sprite(this.back_default, this.back_female, this.back_shiny, this.back_shiny_female, this.front_default, this.front_female, this.front_shiny, this.front_shiny_female);

  factory Sprite.fromJson(Map<String, dynamic> json) {
    return Sprite(
      json["back_default"],
      json["back_female"],
      json["back_shiny"],
      json["back_shiny_female"],
      json["front_default"],
      json["front_female"],
      json["front_shiny"],
      json["front_shiny_female"],
    );
  }
}