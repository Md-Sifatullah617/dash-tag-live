import 'dart:ui';
import 'package:dash_and_tag_web_site/Utils/All_Colors/all_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'Utils/routes.dart';
import 'controller/main_controller.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveApp(
      builder: (context) => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Dash&Tag',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          scaffoldBackgroundColor: Colors.white,
          appBarTheme: const AppBarTheme(
            backgroundColor: ColorManager.webBackgroundColor,
          ),
          fontFamily: GoogleFonts.rajdhani().fontFamily,
        ),
        scrollBehavior: const MaterialScrollBehavior().copyWith(
          dragDevices: {
            PointerDeviceKind.touch,
            PointerDeviceKind.mouse,
            PointerDeviceKind.trackpad,
          },
        ),
        initialBinding: BindingsBuilder(() {
          Get.lazyPut(() => MainController());
        }),
        getPages: AppRoutes.pages,
        initialRoute: AppRoutes.home,
        defaultTransition: Transition.leftToRightWithFade,
      ),
    );
  }
}
