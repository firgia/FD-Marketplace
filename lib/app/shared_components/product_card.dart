import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:marketplace/app/constans/app_constants.dart';
import 'package:marketplace/app/utils/ui/ui_utils.dart';

class ProductCardData {
  final ImageProvider image;
  final double price;
  final String name;
  final bool initialFavorite;

  const ProductCardData({
    required this.image,
    required this.price,
    required this.name,
    required this.initialFavorite,
  });
}

class ProductCard extends StatelessWidget {
  const ProductCard({
    required this.data,
    required this.heroTag,
    this.onTap,
    this.onFavoriteChanged,
    Key? key,
  }) : super(key: key);

  final String heroTag;
  final ProductCardData data;
  final Function()? onTap;
  final Function(bool isFavorite)? onFavoriteChanged;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Hero(
          tag: heroTag,
          child: GestureDetector(
            onTap: onTap,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(kBorderRadius),
              child: Stack(
                alignment: AlignmentDirectional.bottomEnd,
                children: [
                  _buildImage(data.image),
                  _buildFavoriteIcon(
                    data.initialFavorite,
                    onTap: (isFavorite) {
                      if (onFavoriteChanged != null) {
                        onFavoriteChanged!(isFavorite);
                      }
                      AppSnackbar.showStatusFavoriteProduct(
                        isFavorite: isFavorite,
                        productImage: data.image,
                        productName: data.name,
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
        SizedBox(height: kSpacing),
        _buildPriceText(data.price),
        _buildNameProduct(data.name),
      ],
    );
  }

  Widget _buildImage(ImageProvider image) {
    return Image(
      image: image,
      fit: BoxFit.cover,
    );
  }

  Widget _buildFavoriteIcon(
    bool initialFavorite, {
    required Function(bool isFavorite) onTap,
  }) {
    RxBool isFavorite = RxBool(initialFavorite);

    Color activeColor = Theme.of(Get.context!).primaryColor;
    Color? passiveColor = Theme.of(Get.context!).iconTheme.color;

    return Obx(
      () => Material(
        color: isFavorite.value ? activeColor : passiveColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(kBorderRadius),
        ),
        child: Container(
          height: 40,
          width: 40,
          child: InkWell(
            onTap: () {
              isFavorite.toggle();
              onTap(isFavorite.value);
            },
            child: Icon(
              FontAwesomeIcons.solidStar,
              color: Colors.white,
              size: 20,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildPriceText(double price) {
    return Row(
      children: [
        Icon(
          FontAwesomeIcons.dollarSign,
          size: 14,
          color: kFontColorPallets[0],
        ),
        Expanded(
          child: Text(
            "$price",
            style: TextStyle(
              color: kFontColorPallets[0],
              fontWeight: FontWeight.bold,
              fontSize: 17,
            ),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        )
      ],
    );
  }

  Widget _buildNameProduct(String name) {
    return Text(
      name,
      style: TextStyle(
        color: kFontColorPallets[2],
      ),
      textAlign: TextAlign.left,
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
    );
  }
}
