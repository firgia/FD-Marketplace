part of product_detail;

class _PriceText extends StatelessWidget {
  const _PriceText(this.data, {Key? key}) : super(key: key);

  final String data;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          FontAwesomeIcons.dollarSign,
          color: Theme.of(context).primaryColor,
          size: 25,
        ),
        Expanded(
            child: Text(
          data,
          style: TextStyle(
            color: Theme.of(context).primaryColor,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        )),
      ],
    );
  }
}
