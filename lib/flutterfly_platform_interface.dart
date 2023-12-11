import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'flutterfly_method_channel.dart';

abstract class FlutterflyPlatform extends PlatformInterface {
  /// Constructs a FlutterflyPlatform.
  FlutterflyPlatform() : super(token: _token);

  static final Object _token = Object();

  static FlutterflyPlatform _instance = MethodChannelFlutterfly();

  /// The default instance of [FlutterflyPlatform] to use.
  ///
  /// Defaults to [MethodChannelFlutterfly].
  static FlutterflyPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [FlutterflyPlatform] when
  /// they register themselves.
  static set instance(FlutterflyPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
