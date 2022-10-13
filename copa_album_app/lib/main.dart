import 'package:copa_album_app/app/copa_album_app.dart';
import 'package:copa_album_app/app/core/config/env/env.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  await Env.i.load();
  runApp(const CopaAlbumApp());
}
