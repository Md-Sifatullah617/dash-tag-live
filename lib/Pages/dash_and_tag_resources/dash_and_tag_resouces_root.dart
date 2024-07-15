import 'package:dash_and_tag_web_site/Pages/dash_and_tag_resources/view/desktop/dash_and_tag_resources.dart';
import 'package:dash_and_tag_web_site/Pages/dash_and_tag_resources/view/mobile/dash_and_tag_resoucreses_mobile.dart';
import 'package:dash_and_tag_web_site/Pages/dash_and_tag_resources/view/tablet/dash_and_tag_resouces_tablet.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';


class DashAndTagResoucesRoot extends StatelessWidget {
  const DashAndTagResoucesRoot({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (BuildContext context) => DashAndTagResoucresesMobile(),
      tablet: (BuildContext context) => DashAndTagResoucesTablet(),
      desktop: (BuildContext context) => DashAndTagResourcesDesktop(),
    );
  }
}






