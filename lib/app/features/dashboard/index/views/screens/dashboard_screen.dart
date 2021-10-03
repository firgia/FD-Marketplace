library dashboard;

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:marketplace/app/features/dashboard/explore/views/screens/explore_screen.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

// binding
part '../../bindings/dashboard_binding.dart';

// controller
part '../../controllers/dashboard_controller.dart';

// model

// component

class DashboardScreen extends GetView<DashboardController> {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      controller: controller.persistentTab,
      screens: _buildScreens(),
      items: _buildNavBarsItems(),
      backgroundColor: Colors.white, // Default is Colors.white.
      decoration: NavBarDecoration(
        borderRadius: BorderRadius.circular(10.0),
        colorBehindNavBar: Colors.white,
      ),
      itemAnimationProperties: ItemAnimationProperties(
        // Navigation Bar's items animation properties.
        duration: Duration(milliseconds: 200),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: ScreenTransitionAnimation(
        // Screen transition animation on change of selected tab.
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 200),
      ),
      navBarHeight: 70,
      navBarStyle: NavBarStyle.style10,
    );
  }

  List<Widget> _buildScreens() {
    return [
      ExploreScreen(),
      Center(child: Text("Favorite Screen")),
      Center(child: Text("Messages Screen")),
      Center(child: Text("Profil Screen")),
    ];
  }

  List<PersistentBottomNavBarItem> _buildNavBarsItems() {
    return [
      _navbarItem(iconData: FontAwesomeIcons.thLarge, title: "Explore"),
      _navbarItem(iconData: FontAwesomeIcons.solidStar, title: "Favorite"),
      _navbarItem(
          iconData: FontAwesomeIcons.solidCommentAlt, title: "Messages"),
      _navbarItem(iconData: FontAwesomeIcons.userAlt, title: "Profil"),
    ];
  }

  PersistentBottomNavBarItem _navbarItem({
    required IconData iconData,
    required String title,
  }) {
    return PersistentBottomNavBarItem(
      icon: Icon(iconData, size: 22),
      title: (title),
      activeColorPrimary: Color.fromRGBO(246, 246, 246, 1),
      inactiveColorPrimary: Color.fromRGBO(187, 193, 202, 1),
      activeColorSecondary: Theme.of(Get.context!).primaryColor,
      textStyle: TextStyle(fontWeight: FontWeight.bold),
    );
  }
}
