part of ui_utils;

/// contains all snackbar templates
class AppSnackbar {
  static void showStatusFavoriteProduct({
    required ImageProvider productImage,
    required String productName,
    required bool isFavorite,
  }) {
    Get.snackbar(
      (isFavorite) ? "add to favorites" : "removed from favorites",
      productName,
      icon: Padding(
        padding: EdgeInsets.symmetric(horizontal: 5),
        child: Image(
          image: productImage,
          fit: BoxFit.cover,
        ),
      ),
      colorText: kFontColorPallets[0],
      duration: Duration(seconds: 1),
      isDismissible: true,
      backgroundColor: Colors.white,
    );
  }
}
