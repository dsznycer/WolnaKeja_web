enum TermsType {
  appRegulations(
      title: 'Regulamin aplikacji',
      path: 'assets/documents/app_regulations.txt',),
  privacyPolicy(
      title: 'Polityka prywatności',
      path: 'assets/documents/privacy_policy.txt',);

  const TermsType({required this.path, required this.title});

  final String path;
  final String title;
}
