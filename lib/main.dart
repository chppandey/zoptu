import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:zoptu/config/theme/light_theme.dart';
import 'package:zoptu/core/app_strings.dart';
import 'package:zoptu/presentation/splash/splash_screen.dart';

import 'presentation/base widgets/dismiss_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return DismissKeyBoard(
      child: ScreenUtilInit(
        minTextAdapt: true,
        splitScreenMode: true,
        child: GetMaterialApp(
          theme: light,
          title: AppStrings.appName,
          debugShowCheckedModeBanner: false,
          localizationsDelegates: const [],
          builder: (context, child) {
            return MediaQuery(
                data: MediaQuery.of(context)
                    .copyWith(textScaler: TextScaler.noScaling),
                child: child!);
          },
          home: const SplashScreen(),
        ),
      ),
    );
  }
}
