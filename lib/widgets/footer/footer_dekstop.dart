part of 'footer.dart';

class FooterDesktop extends StatelessWidget {
  const FooterDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _FooterBase(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Logo(width: 160),
          _SocialMedia(spacing: 40),
          _ContactUs(),
          _SoonAvailable(androidLogoHeight: 67, iosLogoHeight: 50)
        ],
      ),
    );
  }
}
