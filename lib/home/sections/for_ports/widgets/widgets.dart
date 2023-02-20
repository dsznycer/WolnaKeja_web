part of '../for_ports.dart';

class TextTile extends StatelessWidget {
  const TextTile({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      decoration: BoxDecoration(
        boxShadow: const [
          AppShadows.shadow1,
        ],
        borderRadius: BorderRadius.circular(12),
        color: AppColors.colSix,
      ),
      child: Text(
        text,
        style: AppTextStyles.descriptionStyle,
        textAlign: TextAlign.justify,
        maxLines: 3,
      ),
    );
  }
}

class _Title extends StatelessWidget {
  const _Title({
    this.textAlign,
  });

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
  const _Body({required this.desktop});

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
