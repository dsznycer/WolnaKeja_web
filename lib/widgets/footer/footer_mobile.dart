part of 'footer.dart';

class FooterMobile extends StatelessWidget {
  const FooterMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return _FooterBase(
      child: SpacedColumn(
        spacing: 10,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Logo(width: 150),
              _SocialMedia(spacing: 30),
            ],
          ),
          SpacedRow(
            spacing: 10,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              _ContactUs(),
              _SoonAvailable(androidLogoHeight: 52, iosLogoHeight: 50)
            ],
          ),
        ],
      ),
    );
  }
}
