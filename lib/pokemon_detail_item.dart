import 'package:flutter/material.dart';
import 'Model/pokemon_detail.dart';

class PokemonDetailItem extends StatelessWidget {
  final PokemonDetail pokemonDetail;

  const PokemonDetailItem({
    Key key,
    this.pokemonDetail,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        "${pokemonDetail.id},${pokemonDetail.name},${pokemonDetail.sprites},${pokemonDetail.order},${pokemonDetail.types[0]},"
            "${pokemonDetail.height},${pokemonDetail.weight},${pokemonDetail.abilities[0]},${pokemonDetail.stats[0]}, "
      ),
    );
  }
}