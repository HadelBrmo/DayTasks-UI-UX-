import 'package:day_tasks/Views/Profile_screen.dart';
import 'package:day_tasks/Core/constant/color.dart';
import 'package:day_tasks/views/Splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';

import 'Views/Messages/chat_messages.dart';

void main() {
  runApp(const MyApp()
    // DevicePreview(
    //   enabled: !kReleaseMode, // تمكين في وضع التطوير فقط
    //   builder: (context) => MyApp(),
    // ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        theme: ThemeData( navigationBarTheme: NavigationBarThemeData(
          indicatorColor: springYellow,
        )),
      debugShowCheckedModeBanner: false,
      title: 'DayTasks',
      // builder: DevicePreview.appBuilder, // تضمين جهاز العرض
      // useInheritedMediaQuery: true, // استخدام الوسائط من جهاز العرض
      // locale: DevicePreview.locale(context), // استخدام الموقع من جهاز العرض
      home:  SplashScreen(),
    );
  }
}