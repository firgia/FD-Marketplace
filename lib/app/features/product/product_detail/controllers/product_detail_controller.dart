part of product_detail;

class ProductDetailController extends GetxController {
  final productService = ProductService();
  final userService = UserService();

  final scroll = ScrollController();
  final opacityActionButton = 1.0.obs;
  final isVisibleActionButton = true.obs;

  final Rx<Product?> data = Rx(null);
  final Rx<User?> dataUser = Rx(null);

  @override
  void onInit() {
    super.onInit();
    data.value = _getProduct();
    dataUser.value = _getUser();

    scroll.addListener(onScroll);
  }

  Product? _getProduct() {
    String? id = Get.parameters['id'];

    Product? product;

    if (id != null) {
      product = productService.getProductByID(id);
    }

    return product;
  }

  User? _getUser() {
    String? id = data.value?.idUser;

    User? user;

    if (id != null) {
      user = userService.getUserByID(id);
    }

    return user;
  }

  void onScroll() {
    if (scroll.position.pixels > 100 && opacityActionButton.value == 1) {
      opacityActionButton.value = 0;
    } else if (scroll.position.pixels < 100 && opacityActionButton.value == 0) {
      isVisibleActionButton.value = true;
      opacityActionButton.value = 1;
    }
  }

  void onEndAnimationActionButton() {
    if (opacityActionButton.value == 0) {
      isVisibleActionButton.value = false;
    }
  }

  void back() => Get.back();

  void changeFavoriteProduct(Product product, bool favorite) {
    AppSnackbar.showStatusFavoriteProduct(
      productImage: product.images[0],
      productName: product.name,
      isFavorite: favorite,
    );
  }
}
