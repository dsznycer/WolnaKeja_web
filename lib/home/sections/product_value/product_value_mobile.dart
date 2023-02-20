part of 'product_value.dart';

class ProductValueMobile extends StatelessWidget {
  const ProductValueMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        _Photo(
          widthScaler: 0.65,
          boxConstraints: BoxConstraints(maxWidth: 400),
        ),
        _Text()
      ],
    );
  }
}
