class Game {
  final String id;
  final String developerId;
  final String title;
  final String description;
  final String genre;
  final String imageUrl;
  final String releaseDate;
  final double averageRating;
  final int totalReviews;

  Game({
    required this.id,
    required this.developerId,
    required this.title,
    required this.description,
    required this.genre,
    required this.imageUrl,
    required this.releaseDate,
    required this.averageRating,
    required this.totalReviews,
  });

  factory Game.fromJson(Map<String, dynamic> json) {
    return Game(
      id: json['id'] ?? '',
      developerId: json['developer_id'] ?? '',
      title: json['title'] ?? '',
      description: json['description'] ?? '',
      genre: json['genre'] ?? '',
      imageUrl: json['image_url'] ?? '',
      releaseDate: json['release_date'] ?? '',
      averageRating: (json['average_rating'] ?? 0.0).toDouble(),
      totalReviews: json['total_reviews'] ?? 0,
    );
  }
}