import 'package:flutter/material.dart';

import 'pages/splash/splash_page.dart';

class CopaAlbumApp extends StatelessWidget {
  const CopaAlbumApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Álbum da copa 2022',
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (_) => const SplashPage(),
      },
    );
  }
}
