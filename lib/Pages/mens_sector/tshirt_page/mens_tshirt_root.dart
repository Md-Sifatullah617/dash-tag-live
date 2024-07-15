import 'package:dash_and_tag_web_site/Pages/mens_sector/tshirt_page/view/desktop/tshirt_page_desktop.dart';
import 'package:dash_and_tag_web_site/Pages/mens_sector/tshirt_page/view/mobile/men_tshirt_page_mobile.dart';
import 'package:dash_and_tag_web_site/Pages/mens_sector/tshirt_page/view/tablet/men_tshirt_page_tablet.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class MensTshirtRoot extends StatelessWidget {
  const MensTshirtRoot({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (BuildContext context) => MenTshirtPageMobile(),
      tablet: (BuildContext context) => const MenTshirtPageTablet(),
      desktop: (BuildContext context) => const TshirtPageDesktop(),
    );
  }
}
