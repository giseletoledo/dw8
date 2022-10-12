import 'package:copa_album_app/app/core/ui/styles/button_styles.dart';
import 'package:copa_album_app/app/core/ui/styles/text_styles.dart';
import 'package:copa_album_app/app/core/ui/widgets/button.dart';
import 'package:copa_album_app/app/core/ui/widgets/rounded_button.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

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
              onPressed: () {},
              style: ButtonStyles.i.yellowButton,
              child: const Text('Salvar'),
            ),
            OutlinedButton(
              onPressed: () {},
              style: ButtonStyles.i.primaryOutlineButton,
              child: const Text('Salvar'),
            ),
            const TextField(),
            Button(
                onPressed: () {},
                style: ButtonStyles.i.primaryButton,
                labelStyle: context.textStyles.textPrimaryFontBold,
                label: 'Salvar'),
            Button.primary(
              width: MediaQuery.of(context).size.width * .9,
              height: 130,
              onPressed: () {},
              label: 'Salvar',
            ),
            RoundedButtton(icon: Icons.add, onPressed: (() {}))
          ],
        ),
      ),
    );
  }
}
