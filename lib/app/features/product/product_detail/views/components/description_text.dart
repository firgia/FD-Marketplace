part of product_detail;

class _DescriptionText extends StatelessWidget {
  const _DescriptionText(this.data, {Key? key}) : super(key: key);

  final String data;
  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style: TextStyle(
        color: kFontColorPallets[2],
        fontSize: 15,
      ),
    );
  }
}
