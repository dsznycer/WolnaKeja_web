part of 'about_app.dart';

class AboutDesktop extends StatelessWidget {
  const AboutDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const _AboutAppTitle(),
        Row(
          children: [
            const Flexible(
              child: _AboutAppPhoto(),
            ),
            Flexible(
              child: Container(
                margin: const EdgeInsets.all(40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    TextRenderer(
                      text: _AboutAppSubtitle(),
                    ),
                    _Dividerek(),
                    TextRenderer(
                      text: _AboutAppDescription(),
                    )
                  ],
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
