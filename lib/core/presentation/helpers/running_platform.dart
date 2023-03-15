import 'package:flutter/foundation.dart';

/// Contains getters for knowing the underlying platform.
class RunningPlatform {
  RunningPlatform(this.platform);

  final TargetPlatform platform;

  /// Returns true if the running platform is Android.
  bool get isAndroid => platform == TargetPlatform.android;

  /// Returns true if the running platform is iOS.
  bool get isIOS => platform == TargetPlatform.iOS;

  /// Returns true if the running platform is Fuchsia
  bool get isFuchsia => platform == TargetPlatform.fuchsia;

  /// Returns true if the running platform is Windows.
  bool get isWindows => platform == TargetPlatform.windows;

  /// Returns true if the running platform is MacOS.
  bool get isMacOS => platform == TargetPlatform.macOS;

  /// Returns true if the running platform is Linux.
  bool get isLinux => platform == TargetPlatform.linux;

  /// Returns true if the running platform is either Windows or MacOS or Linux.
  bool get isDesktop =>
      platform == TargetPlatform.windows ||
      platform == TargetPlatform.macOS ||
      platform == TargetPlatform.linux;

  /// Returns true if the running platform is either Android or iOS or Fuchsia.
  bool get isMobile =>
      platform == TargetPlatform.iOS ||
      platform == TargetPlatform.android ||
      platform == TargetPlatform.fuchsia;
}
