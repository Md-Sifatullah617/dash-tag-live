import 'package:dash_and_tag_web_site/Utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FooterSiteMap extends StatelessWidget {
  const FooterSiteMap({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Site Map',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 18,
            ),
          ),
          const SizedBox(height: 18),
          TextButton(
            onPressed: () {},
            child: const Text(
              'Home',
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
              Get.toNamed(AppRoutes.profile);
            },
            child: const Text(
              'Profile',
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
              Get.toNamed(AppRoutes.services);
            },
            child: const Text(
              'Services',
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
              Get.toNamed(AppRoutes.clients);
            },
            child: const Text(
              'Our Client',
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
