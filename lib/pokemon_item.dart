import 'package:flutter/material.dart';
import 'Model/pokemon.dart';

class PokemonItem extends StatelessWidget {
  final Pokemon pokemon;

  const PokemonItem({
    Key key,
    this.pokemon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(Icons.person),
      title: Text("${pokemon.name}"),
      subtitle: Text(pokemon.detailsUrl),
    );
  }
}