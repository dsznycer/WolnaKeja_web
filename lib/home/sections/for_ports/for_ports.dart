import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:wolnakeja/styles/app_colors.dart';
import 'package:wolnakeja/styles/app_shadows.dart';
import 'package:wolnakeja/styles/app_text_styles.dart';

part 'for_ports_desktop.dart';
part 'for_ports_mobile.dart';

class ForPorts extends StatelessWidget {
  const ForPorts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: const _ForPortsMobile(),
      desktop: const _ForPortsDesktop(),
    );
  }
}

class _Title extends StatelessWidget {
  const _Title({
    Key? key,
    this.textAlign,
  }) : super(key: key);

  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Żeglarze rezerwują miejsca, Ty wygodnie zarządzasz portem',
      style: AppTextStyles.H2,
      textAlign: TextAlign.center,
    );
  }
}

class _TextTile extends StatelessWidget {
  const _TextTile(this.tekst);

  final String tekst;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      decoration: BoxDecoration(
        boxShadow: const [
          AppShadows.shadow1,
        ],
        borderRadius: BorderRadius.circular(12),
        color: AppColors.ColSix,
      ),
      child: Text(
        tekst,
        style: AppTextStyles.descriptionStyle,
        textAlign: TextAlign.justify,
        maxLines: 3,
      ),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body({
    Key? key,
    required this.desktop,
  }) : super(key: key);

  final bool desktop;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment:
          desktop ? MainAxisAlignment.center : MainAxisAlignment.start,
      children: [
        const SizedBox(width: 10),
        Flexible(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              _TextTile('Miejsca zajęte i wolne'),
              SizedBox(height: 25),
              _TextTile('Nadchodzące wydarzenia w Twoim porcie'),
              SizedBox(height: 25),
              _TextTile('Moduł statystyk z przychodami i rezerwacjami '),
            ],
          ),
        ),
        if (desktop)
          Flexible(
            flex: 2,
            child: Image.asset('assets/images/portPanel/ipad_wk.png'),
          )
        else
          const SizedBox(width: 10),
        Flexible(
          child: Column(
            mainAxisAlignment: desktop
                ? MainAxisAlignment.spaceEvenly
                : MainAxisAlignment.start,
            children: const [
              _TextTile(
                'Panel, w którym sprawdzisz czy zajęte miejsca zostały opłacone ',
              ),
              SizedBox(height: 25),
              _TextTile('Ostatnie rezerwacje w porcie'),
              SizedBox(height: 25),
              _TextTile('Osobne dane dostępu dla pracowników '),
            ],
          ),
        ),
        const SizedBox(width: 10),
      ],
    );
  }
}
