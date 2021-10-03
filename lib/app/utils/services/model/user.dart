part of rest_api_service;

class User {
  final String id;
  final ImageProvider profilImage;
  final String name;
  final String country;
  final String city;

  const User({
    required this.id,
    required this.profilImage,
    required this.name,
    required this.country,
    required this.city,
  });
}
