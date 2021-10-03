part of rest_api_service;

/// FAKE USER SERVICE
// put all custom setup in RestApiService (duration timeout, exception handling , etc..)
// and extend restApiService, if you need custom service provider
class UserService extends RestApiServices {
  static final UserService _singleton = UserService._internal();

  factory UserService() {
    return _singleton;
  }
  UserService._internal();

  User getUserByID(String id) {
    if (_userA.id == id) {
      return _userA;
    } else {
      return _userB;
    }
  }

  final _userA = User(
    id: "fwg123",
    name: "Gia Store",
    country: "Indonesia",
    city: "Bandung",
    profilImage: AssetImage(ImageRasterPath.market),
  );

  final _userB = User(
    id: "fwg345",
    profilImage: AssetImage(ImageRasterPath.market2),
    name: "Fashion Store",
    country: "USA",
    city: "New York",
  );
}
