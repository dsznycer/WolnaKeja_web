import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:spaced/spaced.dart';
import 'package:wolnakeja/home/sections/for_ports/widgets/text_tile.dart';
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
      style: AppTextStyles.h2,
      textAlign: TextAlign.center,
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
          child: SpacedColumn(
            spacing: 25,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              TextTile(text: 'Miejsca zajęte i wolne'),
              TextTile(text: 'Nadchodzące wydarzenia w Twoim porcie'),
              TextTile(text: 'Moduł statystyk z przychodami i rezerwacjami '),
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
          child: SpacedColumn(
            spacing: 25,
            mainAxisAlignment: desktop
                ? MainAxisAlignment.spaceEvenly
                : MainAxisAlignment.start,
            children: const [
              TextTile(
                text:
                    'Panel, w którym sprawdzisz czy zajęte miejsca zostały opłacone ',
              ),
              TextTile(text: 'Ostatnie rezerwacje w porcie'),
              TextTile(text: 'Osobne dane dostępu dla pracowników '),
            ],
          ),
        ),
        const SizedBox(width: 10),
      ],
    );
  }
}
