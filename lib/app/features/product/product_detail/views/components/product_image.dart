part of product_detail;

class _ProductImage extends StatelessWidget {
  _ProductImage(this.images, {Key? key}) : super(key: key);

  final List<ImageProvider> images;
  final _index = 0.obs;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        AspectRatio(
          aspectRatio: 1,
          child: PageView.builder(
            itemCount: images.length,
            itemBuilder: (context, index) {
              return Image(
                image: images[index],
                fit: BoxFit.fitWidth,
                alignment: Alignment.topCenter,
              );
            },
            onPageChanged: (value) {
              print(value);
              _index.value = value;
            },
          ),
        ),
        if (images.length > 1)
          Padding(
            padding: const EdgeInsets.only(bottom: 50),
            child: Indicator(
              controller: _index,
              totalIndicator: images.length,
            ),
          ),
      ],
    );
  }
}
