import 'package:flutter_dotenv/flutter_dotenv.dart';

class Env {
  static Env? _instance;

  // Avoid more than one instance
  Env._();

//abreviação de instance
  static Env get i {
    _instance ??= Env._();
    return _instance!;
  }

  Future<void> load() => dotenv.load(fileName: '.env');

  String? operator [](String key) => dotenv.env[key];
}
