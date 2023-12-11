#ifndef FLUTTER_PLUGIN_FLUTTERFLY_PLUGIN_H_
#define FLUTTER_PLUGIN_FLUTTERFLY_PLUGIN_H_

#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>

#include <memory>

namespace flutterfly {

class FlutterflyPlugin : public flutter::Plugin {
 public:
  static void RegisterWithRegistrar(flutter::PluginRegistrarWindows *registrar);

  FlutterflyPlugin();

  virtual ~FlutterflyPlugin();

  // Disallow copy and assign.
  FlutterflyPlugin(const FlutterflyPlugin&) = delete;
  FlutterflyPlugin& operator=(const FlutterflyPlugin&) = delete;

  // Called when a method is called on this plugin's channel from Dart.
  void HandleMethodCall(
      const flutter::MethodCall<flutter::EncodableValue> &method_call,
      std::unique_ptr<flutter::MethodResult<flutter::EncodableValue>> result);
};

}  // namespace flutterfly

#endif  // FLUTTER_PLUGIN_FLUTTERFLY_PLUGIN_H_
