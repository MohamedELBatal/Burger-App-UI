import 'package:flutter/material.dart';
import 'package:food_app/home.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(430, 932),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (_, child) => MaterialApp(
          theme:ThemeData(useMaterial3: false) ,
              debugShowCheckedModeBanner: false,
              initialRoute: Home.routeName,
              routes: {
                Home.routeName: (context) => Home(),
              },
            ));
  }
}
