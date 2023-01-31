part of 'how_it_works.dart';

class HowItWorksDesktop extends StatelessWidget {
  const HowItWorksDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        const _HowItWorksTitle(),
        const SizedBox(height: 15),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(width: 15),
            for (final tileData in _tilesData)
              Flexible(
                child: _CardTile(
                  imagePath: tileData.path,
                  title: tileData.title,
                  description: tileData.description,
                ),
              ),
            const SizedBox(width: 15),
          ],
        )
      ],
    );
  }
}

class _CardTile extends StatelessWidget {
  const _CardTile({
    Key? key,
    required this.imagePath,
    required this.title,
    required this.description,
  }) : super(key: key);

  final String imagePath;
  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          imagePath,
          width: 120,
        ),
        const SizedBox(height: 20),
        Text(
          title,
          style: AppTextStyles.H2,
        ),
        const SizedBox(height: 15),
        Padding(
          padding: const EdgeInsets.all(10),
          child: Text(
            description,
            style: AppTextStyles.descriptionStyle,
            textAlign: TextAlign.justify,
          ),
        ),
      ],
    );
  }
}
