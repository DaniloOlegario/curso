import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:prefeitura/app/core/ui/ui_config.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Modular.setInitialRoute('/home/');

    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: false,
      builder: (context, child) {
        return MaterialApp.router(
          title: 'Prefeitura',
          theme: ThemeData(
            colorScheme: ThemeData().colorScheme.copyWith(
                  primary: UiConfig.primaryColor,
                  secondary: UiConfig.secondaryColor,
                ),
            scaffoldBackgroundColor: Colors.white,
          ),
          routerConfig: Modular.routerConfig,
        );
      },
    );
  }
}
