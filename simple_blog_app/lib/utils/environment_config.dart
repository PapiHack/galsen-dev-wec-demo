import 'package:flutter_dotenv/flutter_dotenv.dart';

class EnvironmentConfig {
  static Future<void> load() async => await dotenv.load(fileName: '.env');

  static String getEnv(String name) => dotenv.env[name]!;
}
