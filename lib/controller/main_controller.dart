import 'package:carousel_slider/carousel_controller.dart';
import 'package:dash_and_tag_web_site/model/appbar_action_model.dart';
import 'package:dash_and_tag_web_site/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pluto_menu_bar/pluto_menu_bar.dart';

class MainController extends GetxController {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final subjectController = TextEditingController();
  final messageController = TextEditingController();
  final CarouselController controller = CarouselController();
  final RxInt hoverIndex = 0.obs;
  final isDrawerOpen = false.obs;

  final List<AppBarAction> appbarActions = [
    AppBarAction(title: 'Home', path: AppRoutes.home),
    AppBarAction(
      title: 'About',
      path: "",
      categories: [
        Category(title: 'About Dash & Tag Fashion', path: AppRoutes.aboutResources),
        Category(title: 'Mission & Vision', path: AppRoutes.missionVision),
      ],
    ),
    AppBarAction(title: 'Profile', path: AppRoutes.profile),
    AppBarAction(
      title: 'Products',
      path: "",
      categories: [
        Category(
          title: 'Mens',
          path: "",
          categories: [
            Category(title: 'Jens', path: AppRoutes.mensjeans),
            Category(title: 'T-Shirts', path: AppRoutes.menstshirts),
            Category(title: 'Polo Shirts', path: AppRoutes.menspoloshirts),
            Category(title: 'Shirts & Pants', path: AppRoutes.mensshirtspants),
            Category(title: 'Shorts & Cargo', path: AppRoutes.mensshortscargo),
            Category(title: 'Jackets', path: AppRoutes.mensjackets),
            Category(title: 'Sweaters', path: AppRoutes.menssweaters),
            // Category(title: 'Shirts', path: AppRoutes.mensshirtspants),
            // Category(title: 'Pants', path: AppRoutes.mensjeans),
          ],
        ),
        Category(
          title: 'Womens',
          path: "",
          categories: [
            Category(title: 'Jens', path: AppRoutes.womensjeans),
            Category(title: 'T-Shirts', path: AppRoutes.womenstshirts),
            Category(title: 'Polo Shirt', path: AppRoutes.womenspoloshirts),
            Category(title: 'Shirts & Pants', path: AppRoutes.womensshirtspants),
            Category(title: 'Hoodies', path: AppRoutes.womenshoodies),
            Category(title: 'Shorts & Cargo', path: AppRoutes.womensshortscargo),
            Category(title: 'Sweaters', path: AppRoutes.womenssweaters),
          ],
        ),
        Category(
          title: 'Boys',
          path: "",
          categories: [
            Category(title: 'Jens', path: AppRoutes.boysjeans),
            Category(title: 'T-Shirts', path: AppRoutes.boystshirts),
            Category(title: 'Polo Shirts', path: AppRoutes.boyspoloshirts),
            Category(title: 'Shirts & Pants', path: AppRoutes.boysshirtspants),
            Category(title: 'Hoodies', path: AppRoutes.boyshoodies),
            Category(title: 'Shorts & Cargo', path: AppRoutes.boyshortscargo),
            Category(title: 'Sweaters', path: AppRoutes.boyssweaters),
          ],
        ),
        Category(
          title: 'Girls',
          path: "",
          categories: [
            Category(title: 'T-Shirts', path: AppRoutes.girlstshirts),
            Category(title: 'Shirts', path: AppRoutes.girlsshirtspants),
            Category(title: 'Pants', path: AppRoutes.girlsjeans),
            Category(title: 'Jackets', path: AppRoutes.girlsjackets),
          ],
        ),

      ],
    ),
    AppBarAction(
      title: 'Services',
      path: AppRoutes.services,
    ),
    AppBarAction(title: 'Our Client', path: AppRoutes.clients),
    AppBarAction(title: 'Contact', path: AppRoutes.contact),
  ];

  List<PlutoMenuItem> convertAppBarActionsToPlutoMenuItems(
      List<AppBarAction> actions) {
    return actions.map((action) {
      if (action.categories != null && action.categories!.isNotEmpty) {
        return PlutoMenuItem(
          title: action.title,
          children: action.categories!.map((category) {
            if (category.categories != null &&
                category.categories!.isNotEmpty) {
              return PlutoMenuItem(
                title: category.title,
                children: category.categories!.map((subCategory) {
                  return PlutoMenuItem(
                    title: subCategory.title,
                    onTap: () {
                      if (subCategory.path != "" &&
                          subCategory.path.isNotEmpty) {
                        Get.toNamed(subCategory.path);
                      }
                    },
                  );
                }).toList(),
              );
            } else {
              return PlutoMenuItem(
                title: category.title,
                onTap: () {
                  if (category.path != "" && category.path.isNotEmpty) {
                    Get.toNamed(category.path);
                  }
                },
              );
            }
          }).toList(),
        );
      } else {
        return PlutoMenuItem(
          title: action.title,
          onTap: () {
            if (action.path != "" && action.path.isNotEmpty) {
              Get.toNamed(action.path);
            }
          },
        );
      }
    }).toList();
  }



  final CarouselController carouselController = CarouselController();
}
