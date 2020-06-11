import 'sprite.dart';
import 'stat.dart';

class PokemonDetail {
  final String id;
  final String name;
  final List<Sprite> sprites;
  final String order;
  List<String> types;
  final String height;
  final String weight;
  List<String> abilities;
  final List<Stat> stats;

  PokemonDetail(this.id, this.name, this.sprites, this.order, this.types, this.height, this.weight, this.abilities, this.stats);

  factory PokemonDetail.fromJson(Map<String, dynamic> json) {
    List<String> temptypes;
    List<String> tempabilities;

    for(int i = 0; i < json["types"].length; i++) {
      temptypes.add(json["types"][i]);
    }

    for(int i = 0; i < json["abilities"].length; i++) {
      tempabilities.add(json["abilities"][i]);
    }

    return PokemonDetail(
      json["id"],
      json["name"],
      json["sprites"],
      json["order"],
      temptypes,
      json["height"],
      json["weight"],
      tempabilities,
      json["stats"],
    );
  }
}