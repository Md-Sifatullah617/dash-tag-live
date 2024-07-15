import 'package:carousel_slider/carousel_slider.dart';
import 'package:dash_and_tag_web_site/Utils/All_Lists/all_lists.dart';
import 'package:flutter/material.dart';

class HeaderRight extends StatefulWidget {
  const HeaderRight({
    super.key,
  });

  @override
  _HeaderRightState createState() => _HeaderRightState();
}

class _HeaderRightState extends State<HeaderRight> {
  final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Stack(
        children: [
          Container(
            width: double.infinity,
            child: CarouselSlider(
              items: AllListsManager.mainSliderImageList
                  .map((e) => Image.network(
                        e,
                        fit: BoxFit.fitWidth,
                        width: double.infinity,
                      ))
                  .toList(),
              options: CarouselOptions(
                // height: Metrics.isDesktop(context)
                //     ? Metrics.height(context) * 0.5
                //     : Metrics.height(context),
                viewportFraction: 1,
                autoPlay: true,
                autoPlayInterval: const Duration(seconds: 3),
                autoPlayAnimationDuration: const Duration(milliseconds: 800),
                autoPlayCurve: Curves.fastEaseInToSlowEaseOut,
                // enlargeCenterPage: true,
                scrollDirection: Axis.horizontal,
              ),
              carouselController: _controller,
            ),
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
                  setState(() {
                    _controller.nextPage();
                  });
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
                  setState(() {
                    _controller.previousPage();
                  });
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
      ),
    );
  }
}
