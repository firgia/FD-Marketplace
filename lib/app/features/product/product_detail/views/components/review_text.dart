part of product_detail;

class _ReviewsText extends StatelessWidget {
  const _ReviewsText(this.data, {Key? key}) : super(key: key);

  final String data;

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      textAlign: TextAlign.right,
      style: Theme.of(context).textTheme.caption?.copyWith(fontSize: 16),
    );
  }
}
