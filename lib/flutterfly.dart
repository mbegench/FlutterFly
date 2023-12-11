
import 'flutterfly_platform_interface.dart';

class Flutterfly {
  Future<String?> getPlatformVersion() {
    return FlutterflyPlatform.instance.getPlatformVersion();
  }
}
