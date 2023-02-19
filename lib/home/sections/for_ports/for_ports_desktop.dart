part of 'for_ports.dart';

class _ForPortsDesktop extends StatelessWidget {
  const _ForPortsDesktop();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        _Title(),
        SizedBox(height: 30),
        _Body(desktop: true),
      ],
    );
  }
}
