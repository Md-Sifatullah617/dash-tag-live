import 'package:dash_and_tag_web_site/Pages/our_clients_page/view/desktop/our_clients_desktop.dart';
import 'package:dash_and_tag_web_site/Pages/our_clients_page/view/mobile/our_clients_mobile.dart';
import 'package:dash_and_tag_web_site/Pages/our_clients_page/view/tablet/our_clients_tablet.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class OurClientsRoot extends StatelessWidget {
  const OurClientsRoot({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (BuildContext context) => OurClientsMobile(),
      tablet: (BuildContext context) => const OurClientsTablet(),
      desktop: (BuildContext context) => const OurClientsPageDesktop(),
    );
  }
}
