library explore;

import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:marketplace/app/config/routes/app_pages.dart';
import 'package:marketplace/app/constans/app_constants.dart';
import 'package:marketplace/app/shared_components/filter_button.dart';
import 'package:marketplace/app/shared_components/product_card.dart';
import 'package:marketplace/app/shared_components/search_field.dart';
import 'package:marketplace/app/utils/services/rest_api_services.dart';
import 'package:tab_indicator_styler/tab_indicator_styler.dart';

// binding
part '../../bindings/explore_binding.dart';

// controller
part '../../controllers/explore_controller.dart';

// component
part '../components/product_content.dart';
part '../components/tab_bar_content.dart';

class ExploreScreen extends GetView<ExploreController> {
  const ExploreScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: NestedScrollView(
        physics: BouncingScrollPhysics(),
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            SliverAppBar(
              toolbarHeight: 100,
              title: Row(
                children: [
                  Expanded(
                    child: SearchField(
                      onSearch: (value) {
                        print("search : $value");
                      },
                    ),
                  ),
                  SizedBox(width: kSpacing),
                  FilterButton(
                    onPressed: () {},
                  ),
                ],
              ),
            )
          ];
        },
        body: _TabBarContent(
          tabs: [
            Text("All"),
            Text("Fashion"),
            Text("Electronic"),
            Text("Toys & Hobbies"),
            Text("Art"),
            Text("Sporting Goods"),
            Text("Home & Garden"),
          ],
          children: [
            _ProductContent(
              controller.getAllProduct(),
              onPressed: (product) => controller.goToDetailProduct(product),
            ),
            _ProductContent(
              controller.getFashionProduct(),
              onPressed: (product) => controller.goToDetailProduct(product),
            ),
            Center(child: Text("Electronic")),
            Center(child: Text("Toys & Hobbies")),
            Center(child: Text("Art")),
            Center(child: Text("Sporting Goods")),
            Center(child: Text("Home & Garden")),
          ],
        ),
      ),
    );
  }
}
