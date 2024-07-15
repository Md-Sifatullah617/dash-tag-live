import 'package:dash_and_tag_web_site/Universal_Widgets/custom_drawer.dart';
import 'package:dash_and_tag_web_site/Utils/All_Colors/all_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import '../../Universal_Widgets/custom_appbar.dart';
import 'package:pdfx/pdfx.dart';
import 'dart:async';
import 'package:universal_html/html.dart' as html;
import '../../controller/main_controller.dart';

class ProfilePage extends StatelessWidget {
  ProfilePage({super.key});
  final MainController controller = Get.put(MainController());

  Future<Uint8List> loadPdf() async {
    final data = await rootBundle.load('assets/images/means_jeans/mypdf.pdf');
    return data.buffer.asUint8List();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.contactUsPageWebBackgroundColor,
      drawer: CustomDrawer(controller: controller),
      body: Column(
        children: [
          //header appbar
          CustomAppbar(controller: controller),
          Expanded(
            child: FutureBuilder<Uint8List>(
              future: loadPdf(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return PdfViewPinch(
                    controller: PdfControllerPinch(
                      document: PdfDocument.openData(snapshot.data!),
                    ),
                  );
                } else if (snapshot.hasError) {
                  return const Center(child: Text('Failed to load PDF'));
                }
                return const Center(child: CircularProgressIndicator());
              },
            ),
          ),
        ],
      ),
      //download button
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //download pdf
          html.AnchorElement(href: 'assets/images/means_jeans/mypdf.pdf')
            ..setAttribute("download", "mypdf.pdf")
            ..click();
        },
        child: const Icon(Icons.download),
      ),
    );
  }
}
