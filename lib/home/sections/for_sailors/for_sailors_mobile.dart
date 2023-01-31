part of 'for_sailors.dart';

class ForSailorsMobile extends StatelessWidget {
  const ForSailorsMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const _ForSailorsTitle(),
        SizedBox(
          height: 350,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              for (final tileData in _tilesData)
                _TileMobileRow(
                    picture: tileData.path,
                    title: tileData.title,
                    description: tileData.description)
            ],
          ),
        ),
      ],
    );
  }
}

class _TileMobileRow extends StatelessWidget {
  const _TileMobileRow({
    Key? key,
    required this.picture,
    required this.title,
    required this.description,
  }) : super(key: key);

  final String picture;
  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
      width: 320,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
        boxShadow: const [AppShadows.shadow1],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset(
            picture,
            width: 100,
          ),
          const SizedBox(height: 15),
          Text(
            title,
            style: AppTextStyles.H2M,
          ),
          Padding(
            padding: const EdgeInsets.all(7),
            child: Text(
              description,
              style: AppTextStyles.descriptionM,
              textAlign: TextAlign.justify,
            ),
          )
        ],
      ),
    );
  }
}
