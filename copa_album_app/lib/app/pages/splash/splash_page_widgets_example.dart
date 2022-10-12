import 'package:copa_album_app/app/core/ui/styles/text_styles.dart';
import 'package:flutter/material.dart';

import '../../core/ui/helpers/loader.dart';
import '../../core/ui/helpers/messages.dart';
import '../../core/ui/styles/button_styles.dart';

import '../../core/ui/widgets/button.dart';
import '../../core/ui/widgets/rounded_button.dart';

class SplashPageExample extends StatefulWidget {
  const SplashPageExample({super.key});

  @override
  State<SplashPageExample> createState() => _SplashPageExampleState();
}

class _SplashPageExampleState extends State<SplashPageExample>
    with Loader<SplashPageExample>, Messages<SplashPageExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Splash Screen'),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () async {
                showLoader();
                await Future.delayed(const Duration(seconds: 2));
                hideLoader();
              },
              style: ButtonStyles.i.yellowButton,
              child: const Text('Salvar'),
            ),
            OutlinedButton(
              onPressed: () {
                showError('Erro no botão outline');
              },
              style: ButtonStyles.i.primaryOutlineButton,
              child: const Text('Salvar'),
            ),
            const TextField(),
            Button(
                onPressed: () {
                  showInfo('Info no botão outline');
                },
                style: ButtonStyles.i.primaryButton,
                labelStyle: context.textStyles.textPrimaryFontBold,
                label: 'Salvar'),
            Button.primary(
              width: MediaQuery.of(context).size.width * .9,
              height: 130,
              onPressed: () {
                showSuccess('Success no botão');
              },
              label: 'Salvar',
            ),
            RoundedButtton(icon: Icons.add, onPressed: (() {}))
          ],
        ),
      ),
    );
  }
}
