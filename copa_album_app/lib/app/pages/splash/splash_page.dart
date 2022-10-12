import 'package:copa_album_app/app/core/styles/button_styles.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
          appBarTheme: const AppBarTheme(
              backgroundColor: Colors.white,
              elevation: 0,
              centerTitle: true,
              iconTheme: IconThemeData(
                color: Colors.black,
              ),
              titleTextStyle: TextStyle(
                color: Colors.black,
              ))),
      child: Scaffold(
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
            ],
          ),
        ),
      ),
    );
  }
}
