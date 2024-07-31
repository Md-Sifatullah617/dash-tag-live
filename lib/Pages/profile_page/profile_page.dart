import 'package:dash_and_tag_web_site/Universal_Widgets/custom_drawer.dart';
import 'package:dash_and_tag_web_site/Utils/All_Colors/all_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
import 'package:universal_html/html.dart' as html;
import '../../Universal_Widgets/custom_appbar.dart';
import '../../controller/main_controller.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  ProfilePageState createState() => ProfilePageState();
}

class ProfilePageState extends State<ProfilePage> {
  final MainController controller = Get.put(MainController());

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
            child: SfPdfViewer.asset(
              "assets/images/means_jeans/mypdf.pdf",
              onDocumentLoadFailed: (details) {
                print('Failed to load PDF: ${details.description}');
              },
            ),
          ),
        ],
      ),
      //download button
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          // Load the PDF file from assets
          final ByteData data =
              await rootBundle.load('assets/images/means_jeans/mypdf.pdf');
          final List<int> bytes = data.buffer.asUint8List();

          // Create a Blob from the bytes
          final blob = html.Blob([bytes], 'application/pdf');

          // Create a download link for the Blob
          final url = html.Url.createObjectUrlFromBlob(blob);
          html.AnchorElement(href: url)
            ..setAttribute("download", "profile.pdf")
            ..click();

          // Revoke the object URL after the download
          html.Url.revokeObjectUrl(url);
        },
        child: const Icon(Icons.download),
      ),
    );
  }
}
