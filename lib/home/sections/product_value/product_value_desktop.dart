part of 'product_value.dart';

class ProductValueDesktop extends StatelessWidget {
  const ProductValueDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'Wolna keja.',
          style: AppTextStyles.H2,
        ),
        Row(
          children: const [
            Flexible(
              child: _Photo(widthScaler: 0.25),
            ),
            Flexible(
              child: _Text(),
            ),
          ],
        )
      ],
    );
  }
}
