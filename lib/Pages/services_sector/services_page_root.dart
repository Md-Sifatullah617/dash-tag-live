import 'package:dash_and_tag_web_site/Pages/services_sector/view/desktop/services_page_desktop.dart';
import 'package:dash_and_tag_web_site/Pages/services_sector/view/mobile/services_page_mobile.dart';
import 'package:dash_and_tag_web_site/Pages/services_sector/view/tablet/services_page_tablet.dart';
import 'package:flutter/material.dart';

import '../../Universal_Widgets/responsive_layout_builder.dart';

class ServicesPageRoot extends StatelessWidget {
  const ServicesPageRoot({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayoutBuilder(
      mobile: ServicesPageMobile(),
      tablet: const ServicesPageTablet(),
      desktop: const ServicesPagesDesktop(),
    );
  }
}
