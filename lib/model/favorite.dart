class Favorite {
  String id;
  String name;
  String image;

  Favorite({
    required this.id,
    required this.name,
    required this.image
  });

  factory Favorite.fromJson(Map<String, dynamic> json) {
    return Favorite(
      id: json['items'],
      name: json['name'],
      image: json['image']
    );
  }
}