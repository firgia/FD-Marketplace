part of explore;

class ExploreController extends GetxController {
  final productService = ProductService();

  List<Product> getAllProduct() => productService.getAll();
  List<Product> getFashionProduct() => productService.getFashion();

  void goToDetailProduct(Product product) {
    Get.toNamed(Routes.product + "/${product.id}");
  }
}
