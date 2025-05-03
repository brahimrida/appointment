import 'package:appointment/core/routing/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/routing/routes_resolver.dart';

void main() {
  RoutesResolver routesResolver = RoutesResolver();
  runApp(MainApp(router: routesResolver));
}

class MainApp extends StatelessWidget {
  final RoutesResolver router;
  const MainApp({super.key, required this.router});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      child: MaterialApp(
        theme: ThemeData(scaffoldBackgroundColor: Colors.white, fontFamily: "Inter"),
        debugShowCheckedModeBanner: false,
        initialRoute: AppRoutes.home,
        onGenerateRoute: router.getRoute,
        // home: Scaffold(body: OnBoardingPage()),
      ),
    );
  }
}
