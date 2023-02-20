part of 'about_app.dart';

class AboutAppMobile extends StatelessWidget {
  const AboutAppMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const _AboutAppTitle(),
        Container(
          margin: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              _AboutAppSubtitle(),
              _Dividerek(),
              _AboutAppDescription(),
            ],
          ),
        ),
        const _AboutAppPhoto(),
      ],
    );
  }
}
