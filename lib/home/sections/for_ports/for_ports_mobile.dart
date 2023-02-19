part of 'for_ports.dart';

class _ForPortsMobile extends StatelessWidget {
  const _ForPortsMobile();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const _Title(textAlign: TextAlign.center),
        const SizedBox(height: 20),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(width: 10),
            const _Body(desktop: false),
            Image.asset('assets/images/portPanel/ipad_wk.png'),
          ],
        )
      ],
    );
  }
}
