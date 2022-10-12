import 'package:copa_album_app/app/core/styles/button_styles.dart';
import 'package:copa_album_app/app/core/styles/colors_app.dart';
import 'package:copa_album_app/app/core/styles/text_styles.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    var _defaultInputBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(18),
      borderSide: BorderSide(color: ColorsApp.i.greyDart, width: 1),
    );
    return Theme(
      data: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.white,
          elevation: 0,
          centerTitle: true,
          iconTheme: const IconThemeData(
            color: Colors.black,
          ),
          titleTextStyle: context.textStyles.textPrimaryFontBold.copyWith(
            color: Colors.black,
            fontSize: 18,
          ),
        ),
        primaryColor: context.colors.primary,
        colorScheme: ColorScheme.fromSeed(
          seedColor: context.colors.primary,
          primary: context.colors.primary,
          secondary: context.colors.secondary,
        ),
        inputDecorationTheme: InputDecorationTheme(
            fillColor: Colors.white,
            filled: true,
            isDense: true,
            contentPadding: const EdgeInsets.all(14),
            border: _defaultInputBorder,
            enabledBorder: _defaultInputBorder,
            focusedBorder: _defaultInputBorder,
            labelStyle: context.textStyles.labelTextField),
      ),
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
              const TextField(),
            ],
          ),
        ),
      ),
    );
  }
}
