part of product_detail;

class _BodyContent extends StatelessWidget {
  const _BodyContent({required this.child, Key? key}) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: Get.width - 40),
      padding: EdgeInsets.all(kSpacing),
      constraints: BoxConstraints(
        maxHeight: Get.height - 100,
        maxWidth: Get.width,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: child,
            ),
          ),
          Container(
            height: 5,
            width: Get.width * .3,
            decoration: BoxDecoration(
              color: Theme.of(Get.context!).iconTheme.color,
              borderRadius: BorderRadius.circular(5),
            ),
          ),
        ],
      ),
    );
  }
}
