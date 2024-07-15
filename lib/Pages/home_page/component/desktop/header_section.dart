import 'package:carousel_slider/carousel_slider.dart';
import 'package:dash_and_tag_web_site/Utils/All_Lists/all_lists.dart';
import 'package:dash_and_tag_web_site/controller/main_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HeaderSection extends StatelessWidget {
  HeaderSection({super.key});

  final MainController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CarouselSlider(
          items: AllListsManager.mainSliderImageList
              .map((e) => Image.network(
                    e,
                    fit: BoxFit.cover,
                    width: Get.width,
                  ))
              .toList(),
          options: CarouselOptions(
            height: 750,
            viewportFraction: 0.999,
            autoPlay: true,
            autoPlayInterval: const Duration(seconds: 3),
            autoPlayAnimationDuration: const Duration(milliseconds: 400),
            autoPlayCurve: Curves.linearToEaseOut,
          ),
          carouselController: controller.carouselController,
        ),
        Positioned(
          right: 0,
          top: 375,
          child: Material(
            color: Colors.transparent,
            shape: const RoundedRectangleBorder(
              side: BorderSide(color: Colors.white),
            ),
            child: InkWell(
              onTap: () {
                controller.carouselController.nextPage(
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.linear,
                );
              },
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Positioned(
          left: 0,
          top: 375,
          child: Material(
            color: Colors.transparent,
            shape: const RoundedRectangleBorder(
              side: BorderSide(color: Colors.white),
            ),
            child: InkWell(
              onTap: () {
                controller.carouselController.previousPage(
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.linear,
                );
              },
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
