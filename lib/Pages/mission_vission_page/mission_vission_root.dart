import 'package:dash_and_tag_web_site/Pages/mission_vission_page/view/desktop/mission_vission_desktop_page.dart';
import 'package:dash_and_tag_web_site/Pages/mission_vission_page/view/mobile/mission_vission_mobile.dart';
import 'package:dash_and_tag_web_site/Pages/mission_vission_page/view/tablet/mission_vission_tablet.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class MissionVissionRoot extends StatelessWidget {
  const MissionVissionRoot({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (BuildContext context) => MissionVissionMobile(),
      tablet: (BuildContext context) => const MissionVissionTablet(),
      desktop: (BuildContext context) => const MissionVissionPageDesktop(),
    );
  }
}
