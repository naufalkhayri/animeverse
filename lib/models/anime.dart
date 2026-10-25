class Anime{
    final int malId;
    final String title;
    final int year;
    final double score;

    Anime ({
      required this.malId,
      required this.title,
      required this.year,
      required this.score,
    });

  // Constructor Mapping
  factory Anime.fromJson(Map<String, dynamic> json) {
      return Anime (
          malId: json ['mal_id'] as int,
          title: json ['title'] as String,
          year: json ['year'] as int,
          score: (json  ['score'] as num).toDouble()
    );
   }

}