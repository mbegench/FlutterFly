#include "include/flutterfly/flutterfly_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "flutterfly_plugin.h"

void FlutterflyPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  flutterfly::FlutterflyPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
