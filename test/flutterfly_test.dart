import 'package:flutter_test/flutter_test.dart';
import 'package:flutterfly/flutterfly.dart';
import 'package:flutterfly/flutterfly_platform_interface.dart';
import 'package:flutterfly/flutterfly_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockFlutterflyPlatform
    with MockPlatformInterfaceMixin
    implements FlutterflyPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final FlutterflyPlatform initialPlatform = FlutterflyPlatform.instance;

  test('$MethodChannelFlutterfly is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelFlutterfly>());
  });

  test('getPlatformVersion', () async {
    Flutterfly flutterflyPlugin = Flutterfly();
    MockFlutterflyPlatform fakePlatform = MockFlutterflyPlatform();
    FlutterflyPlatform.instance = fakePlatform;

    expect(await flutterflyPlugin.getPlatformVersion(), '42');
  });
}
