import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../../Utils/All_Lists/all_lists.dart';

class OurProductSectionMobile extends StatelessWidget {
  const OurProductSectionMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 240.sh,
      // color: Colors.amber,
      padding: EdgeInsets.symmetric(horizontal: 5.screenWidth),
      child: Column(
        children: [
          Text('Our Products',
              style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline,
                  )),
          SizedBox(
            height: 5.sh,
          ),

          Card(
            elevation: 10,
            child: Column(
              children: [
                Text('Mens',
                    style: GoogleFonts.rajdhani().copyWith(
                      fontWeight: FontWeight.bold,
                      fontSize: 10.sw,
                      color: Colors.redAccent,
                    )),
                SizedBox(height: 3.sh),
                Container(
                  width: Get.width,
                  height: 60.sh,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    border: Border(
                        top: BorderSide(
                          width: 2,
                          color: Colors.black,
                        )
                    ),
                  ),
                  child: CarouselSlider(
                      items: AllListsManager.mensJeansList
                          .map((e) => Image.asset(e,
                              width: Get.width, height: 60.sh, fit: BoxFit.cover))
                          .toList(),
                      options: CarouselOptions(
                        aspectRatio: 0.8,
                        viewportFraction: 1,
                        enableInfiniteScroll: true,
                        reverse: false,
                        autoPlay: true,
                        autoPlayInterval: const Duration(seconds: 3),
                        autoPlayAnimationDuration:
                            const Duration(milliseconds: 800),
                        autoPlayCurve: Curves.fastOutSlowIn,
                        enlargeCenterPage: true,
                        scrollDirection: Axis.horizontal,
                      )),
                ),
              ],
            ),
          ),
          SizedBox(height: 5.sh),

          Card(
            elevation: 10,
            child: Column(
              children: [
                Text('Womens',
                    style: GoogleFonts.rajdhani().copyWith(
                      fontWeight: FontWeight.bold,
                      fontSize: 10.sw,
                      color: Colors.redAccent,
                    )),
                SizedBox(height: 3.sh),
                Container(
                  width: Get.width,
                  height: 60.sh,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    border: Border(
                        top: BorderSide(
                          width: 2,
                          color: Colors.black,
                        )
                    ),
                  ),
                  child: CarouselSlider(
                      items: AllListsManager.mensJeansList
                          .map((e) => Image.asset(e,
                              width: Get.width, height: 60.sh, fit: BoxFit.cover))
                          .toList(),
                      options: CarouselOptions(
                        aspectRatio: 0.8,
                        viewportFraction: 1,
                        enableInfiniteScroll: true,
                        reverse: false,
                        autoPlay: true,
                        autoPlayInterval: const Duration(seconds: 3),
                        autoPlayAnimationDuration:
                            const Duration(milliseconds: 800),
                        autoPlayCurve: Curves.fastOutSlowIn,
                        enlargeCenterPage: true,
                        scrollDirection: Axis.horizontal,
                      )),
                ),
              ],
            ),
          ),
          SizedBox(height: 5.sh),

          Card(
            elevation: 10,
            child: Column(
              children: [
                Text('Kids',
                    style: GoogleFonts.rajdhani().copyWith(
                      fontWeight: FontWeight.bold,
                      fontSize: 10.sw,
                      color: Colors.redAccent,
                    )),
                SizedBox(height: 3.sh),
                Container(
                  width: Get.width,
                  height: 60.sh,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    border: Border(
                        top: BorderSide(
                          width: 2,
                          color: Colors.black,
                        )
                    ),
                  ),
                  child: CarouselSlider(
                      items: AllListsManager.mensJeansList
                          .map((e) => Image.asset(
                                e,
                                fit: BoxFit.cover,
                                width: Get.width,
                                height: 60.sh,
                              ))
                          .toList(),
                      options: CarouselOptions(
                        aspectRatio: 0.8,
                        viewportFraction: 1,
                        enableInfiniteScroll: true,
                        reverse: false,
                        autoPlay: true,
                        autoPlayInterval: const Duration(seconds: 3),
                        autoPlayAnimationDuration:
                            const Duration(milliseconds: 800),
                        autoPlayCurve: Curves.fastOutSlowIn,
                        enlargeCenterPage: true,
                        scrollDirection: Axis.horizontal,
                      )),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
