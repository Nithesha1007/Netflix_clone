class MovieModel {
  final int id;
  final String title;
  final int year;
  final String description;
  final List<String> genre;
  final String poster;
  final String banner;
  final bool isRecentlyAdded;
MovieModel({
  required this.id,
  required this.title,
  required this.year,
  required this.description,
  required this.genre,
  required this.poster,
  required this.banner,
  required this.isRecentlyAdded,
});
factory MovieModel.fromJson(Map<String , dynamic> json){
  return MovieModel(
    id:json['id'],
    title: json['title'],
    year: json['year'], 
    description: json['description'],
    genre: List<String>.from(json['genre']), 
    poster: json['poster'], 
    banner: json['banner'], 
    isRecentlyAdded: json['isRecentlyAdded'],
    );
}
}