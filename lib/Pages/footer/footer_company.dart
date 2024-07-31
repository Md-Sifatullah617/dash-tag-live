import 'package:dash_and_tag_web_site/Utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FooterCompany extends StatelessWidget {
  const FooterCompany({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Company',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 18,
            ),
          ),
          const SizedBox(height: 18),
          TextButton(
            onPressed: () {
              Get.toNamed(AppRoutes.aboutResources);
            },
            child: const Text(
              'About Us',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
                fontSize: 14,
                height: 1.5,
                letterSpacing: 0.5,
              ),
            ),
          ),
          const SizedBox(height: 10),
          TextButton(
            onPressed: () {
              Get.toNamed(AppRoutes.missionVision);
            },
            child: const Text(
              'Mission & Vision',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
                fontSize: 14,
                height: 1.5,
                letterSpacing: 0.5,
              ),
            ),
          ),
          const SizedBox(height: 10),
          TextButton(
            onPressed: () {
              Get.toNamed(AppRoutes.contact);
            },
            child: const Text(
              'Contact',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
                fontSize: 14,
                height: 1.5,
                letterSpacing: 0.5,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
