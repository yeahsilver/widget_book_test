// widgetbook.dart

import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

// Import the generated directories variable
import 'widgetbook.directories.g.dart';

void main() {
  runApp(const WidgetbookApp());
}

@widgetbook.App()
class WidgetbookApp extends StatelessWidget {
  const WidgetbookApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Widgetbook.material(
      // Use the generated directories variable
      directories: directories,
      addons: [
        DeviceFrameAddon(
          devices: [
            Devices.ios.iPhoneSE,
            Devices.ios.iPhone13ProMax,
            Devices.ios.iPadPro11Inches,
            Devices.android.samsungGalaxyA50,
          ],
        ),
        AlignmentAddon(),
        LocalizationAddon(locales: [
          const Locale('en', 'US'),
          const Locale('ko', 'KR'),
        ], localizationsDelegates: [
          DefaultWidgetsLocalizations.delegate,
          DefaultMaterialLocalizations.delegate
        ])
      ],
      integrations: [
        // To make addons & knobs work with Widgetbook Cloud
        WidgetbookCloudIntegration(),
      ],
    );
  }
}
