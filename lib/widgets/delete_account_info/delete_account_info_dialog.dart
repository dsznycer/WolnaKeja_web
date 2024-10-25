import 'package:flutter/material.dart';
import 'package:wolnakeja/widgets/shared/wkw_dialog.dart';

class DeleteAccountInfoDialog extends StatelessWidget {
  const DeleteAccountInfoDialog({super.key});

  static const _path = 'assets/documents/delete_account_info.txt';

  @override
  Widget build(BuildContext context) {
    return const WKWTextDialog(
      _path,
      title: 'Jak usunąć konto?',
    );
  }
}
