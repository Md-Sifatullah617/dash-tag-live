import 'package:flutter/material.dart';
import '../../Universal_Widgets/custom_text.dart';
import '../../Utils/All_Colors/all_colors.dart';
import '../../Utils/All_Texts/HomePageText/home_page_text.dart';

class ProductsPageHeaderImage extends StatelessWidget {

  String? title;
  double? fontSize;

  ProductsPageHeaderImage({super.key, this.title, this.fontSize});

  @override
  Widget build(BuildContext context) {

    var size = MediaQuery.of(context).size;

    return Container(
      height: size.height*0.2,
      width: size.width,
      color: ColorManager.nutMegColor,
      child: Center(
        child: CustomText(
          title: title,
          fontWeight: FontWeight.bold,
          fontSize: fontSize,
          fontColor: ColorManager.whiteColor,
          fontFamily: HomePageText.fontFamilyNameRajdhani,
        ),
      ),
    );
  }
}


