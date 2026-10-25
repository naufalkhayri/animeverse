import 'package:flutter/material.dart';
import 'package:modul_5/repositories/anime_repository.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen ({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final AnimeRepository _repository = AnimeRepository();
  late Future <List<Anime>> _futureAnimes;

  @override
  void initState () {
    //TODO: Implement initState
    super.initState();
    _futureAnimes = _repository.getTopAnime();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold (
      appBar: AppBar(
        title: Text('Top Anime'),
      ),


    )

  }

}