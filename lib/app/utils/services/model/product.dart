part of rest_api_service;

class Product {
  final String id;
  final String idUser;
  final List<ImageProvider> images;
  final String name;
  final double price;
  final bool isFavorite;
  final String description;
  final int totalViews;
  final int totalReview;
  final double rating;

  const Product({
    required this.id,
    required this.idUser,
    required this.images,
    required this.name,
    required this.price,
    required this.isFavorite,
    required this.description,
    required this.totalViews,
    required this.totalReview,
    required this.rating,
  });
}
