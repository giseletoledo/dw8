import 'package:copa_album_app/app/core/rest/custom_dio.dart';
import 'package:copa_album_app/app/core/theme/theme_config.dart';
import 'package:copa_album_app/app/pages/auth/login/login_route.dart';
import 'package:copa_album_app/app/pages/auth/register/register_route.dart';
import 'package:copa_album_app/app/pages/home/home_page.dart';
import 'package:copa_album_app/app/pages/splash/splash_route.dart';
import 'package:copa_album_app/app/repository/auth/auth_repository.dart';
import 'package:copa_album_app/app/repository/auth/auth_repository_impl.dart';
import 'package:flutter/material.dart';
import 'package:flutter_getit/flutter_getit.dart';

class CopaAlbumApp extends StatelessWidget {
  const CopaAlbumApp({super.key});

  @override
  Widget build(BuildContext context) {
    return FlutterGetItApplicationBinding(
      bindingsBuilder: () => [
        Bind.lazySingleton<CustomDio>((i) => CustomDio()),
        Bind.lazySingleton<AuthRepository>((i) => AuthRepositoryImpl(dio: i()))
      ],
      child: MaterialApp(
        title: 'Álbum da copa 2022',
        debugShowCheckedModeBanner: false,
        theme: ThemeConfig.theme,
        routes: {
          '/': (_) => const SplashRoute(),
          '/auth/login': (_) => const LoginRoute(),
          '/auth/register': (_) => const RegisterRoute(),
          '/home': (_) => const HomePage(),
        },
      ),
    );
  }
}
