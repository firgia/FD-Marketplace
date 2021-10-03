import 'package:get/get.dart';
import 'package:marketplace/app/features/dashboard/explore/views/screens/explore_screen.dart';
import 'package:marketplace/app/features/dashboard/index/views/screens/dashboard_screen.dart';
import 'package:marketplace/app/features/product/product_detail/views/screens/product_detail_screen.dart';

part 'app_routes.dart';

/// contains all configuration pages
class AppPages {
  /// when the app is opened this page will be the first to be shown
  static const initial = Routes.dashboard;

  static final routes = [
    GetPage(
      name: _Paths.dashboard,
      page: () => DashboardScreen(),
      bindings: [
        DashboardBinding(),
        ExploreBinding(),
      ],
    ),
    GetPage(
      name: _Paths.product + "/:id",
      page: () => ProductDetailScreen(),
      binding: ProductDetailBinding(),
      transition: Transition.downToUp,
    )
  ];
}
