import 'package:colored_box/theme/colored_box_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'features/colored_box_grid/view/view.dart';

class ColoredBoxApp extends StatelessWidget {
  const ColoredBoxApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 919),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          title: 'Flutter Demo',
          theme: lightTheme,
          home: const Scaffold(
            body: GridScreen(),
          ),
        );
      },
    );
  }
}
