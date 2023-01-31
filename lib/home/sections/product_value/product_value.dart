import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:wolnakeja/styles/app_colors.dart';
import 'package:wolnakeja/styles/app_text_styles.dart';

part 'product_value_desktop.dart';
part 'product_value_mobile.dart';

class ProductValue extends StatelessWidget {
  const ProductValue({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: const ProductValueMobile(),
      desktop: const ProductValueDesktop(),
    );
  }
}

class _Photo extends StatelessWidget {
  const _Photo({
    Key? key,
    this.boxConstraints,
    required this.widthScaler,
  }) : super(key: key);

  final BoxConstraints? boxConstraints;
  final double widthScaler;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final widthP = size.width * widthScaler;

    return Container(
      constraints: boxConstraints,
      alignment: Alignment.center,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(14),
        child: Image.asset(
          'assets/images/valuesProduct/valueofproduct.png',
          width: widthP,
          fit: BoxFit.fitWidth,
        ),
      ),
    );
  }
}

class _Dividerek extends StatelessWidget {
  const _Dividerek({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 20),
        Container(
          width: 50,
          height: 3,
          decoration: BoxDecoration(
            color: AppColors.ColThird,
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}

class _Text extends StatelessWidget {
  const _Text({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            'Planuj, rezerwuj i ciesz się mazurami.',
            style: AppTextStyles.H3,
          ),
          _Dividerek(),
          Text(
            'Mazury to polska perełka żeglarska. Niestety coraz więcej jachtów chce cumować w marinach, które niestety nie powiększają się z każdym rokiem. Z naszą aplikacją zaplanujesz podróż po Krainie Wielkich Jezior oraz wykupisz miejsca w dogodnych portach. Nigdy więcej nie martw się czy znajdziesz miejsce w porcie. I ciesz się przyrodą.  ',
            style: AppTextStyles.descriptionStyle,
            textAlign: TextAlign.justify,
          )
        ],
      ),
    );
  }
}


//TODO Factor out divider