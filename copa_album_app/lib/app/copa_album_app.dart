import 'package:copa_album_app/app/core/theme/theme_config.dart';
import 'package:copa_album_app/app/pages/auth/login/login_page.dart';
import 'package:copa_album_app/app/pages/home/home_page.dart';
import 'package:copa_album_app/app/pages/splash/splash_route.dart';
import 'package:flutter/material.dart';

import 'pages/splash/splash_page.dart';

class CopaAlbumApp extends StatelessWidget {
  const CopaAlbumApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Álbum da copa 2022',
      debugShowCheckedModeBanner: false,
      theme: ThemeConfig.theme,
      routes: {
        '/': (_) => const SplashRoute(),
        '/auth/login': (_) => const LoginPage(),
        '/home': (_) => const HomePage(),
      },
    );
  }
}
