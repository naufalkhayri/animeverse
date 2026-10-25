import 'package:flutter/material.dart';
import '../models/anime.dart';
import 'anime_card.dart';

class AnimeList extends StatelessWidget {
  final Future<List<Anime>> futureAnimes;

  const AnimeList({
    super.key,
    required this.futureAnimes
  });

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Anime>>(
      future: futureAnimes,
      builder: (context,snapshot){
        final animes = snapshot.data ?? <Anime>[];
        if(animes.isEmpty) {
          return Center(
            child: Text('Tidak Ada Anime'),
          );
        }

        return ListView.builder(
          itemCount: animes.length,
          itemBuilder: (context, index){
            final anime = animes[index];
            return AnimeCard (
              key: ValueKey(anime.malId),
              anime : anime
            );
          }
        );


      }

    );

  }

}