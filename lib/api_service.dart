import 'dart:convert';

import 'package:flutterdex/Model/pokemon_detail.dart';

import 'Model/pokemon.dart';
import 'Model/pokemon_detail.dart';
import 'package:http/http.dart' as http;

class ApiServices {
  static Future<List<Pokemon>> getPokemons() async {
    final response =
    await http.get("https://pokeapi.co/api/v2/pokemon?limit=100");
    if (response.statusCode != 200) {
      throw Error();
    }
    final jsonBody = json.decode(response.body);
    final List<Pokemon> pokemons = [];
    pokemons.addAll(((jsonBody['results'] as List))
        .map((pokemon) => Pokemon.fromJson(pokemon))
        .toList());


    return pokemons;
  }

  static Future<List<PokemonDetail>> getPokemonDetail() async {
    final response =
    await http.get("https://pokeapi.co/api/v2/pokemon/1");
    if (response.statusCode != 200) {
      throw Error();
    }
    final jsonBody = json.decode(response.body);
    final List<PokemonDetail> pokemonDetails = [];
    pokemonDetails.addAll(((jsonBody as List))
      .map((pokemondetail) => PokemonDetail.fromJson(pokemondetail))
      .toList());

    return pokemonDetails;
  }
}