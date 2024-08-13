import 'package:url_launcher/url_launcher.dart';

class UrlService {
  final String urlInsta = 'https://www.instagram.com';
  final String phone = 'sms: 516 248 020';
  final String email =
      'mailto:kontakt@wolna-keja.pl?subject=Kontakt w sprawie aplikacji Wolna Keja.&body=Dzień dobry, kontaktuje się z Państwem w sprawie';
  final String fb = 'https://www.facebook.com/WolnaKeja';

  void urlLauncher(String urlString) async {
    await (launch(urlString));
  }
}
