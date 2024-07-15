import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:responsive_builder/responsive_builder.dart';

class FooterBottomSocialButtons extends StatelessWidget {
  const FooterBottomSocialButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: getValueForScreenType<double>(
          context: context,
          mobile: 5,
          tablet: 8,
          desktop: 16,
        ),
      ),
      child: Row(
        children: [
          Material(
            color: Colors.transparent,
            shape: RoundedRectangleBorder(
              side: getValueForScreenType<bool>(
                context: context,
                mobile: false,
                tablet: false,
                desktop: true,
              )
                  ? const BorderSide(color: Color(0xff988968))
                  : BorderSide.none,
            ),
            child: InkWell(
              onTap: () {},
              child: SizedBox(
                height: getValueForScreenType<double>(
                  context: context,
                  mobile: 10,
                  tablet: 20,
                  desktop: 30,
                ),
                width: getValueForScreenType<double>(
                  context: context,
                  mobile: 10,
                  tablet: 20,
                  desktop: 30,
                ),
                child: const Center(
                  child: Icon(
                    FontAwesomeIcons.facebookF,
                    size: 20,
                    color: Color(0xff988968),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            width: getValueForScreenType<double>(
              context: context,
              mobile: 0,
              tablet: 5,
              desktop: 10,
            ),
          ),
          Material(
            color: Colors.transparent,
            shape: RoundedRectangleBorder(
              side: getValueForScreenType<bool>(
                context: context,
                mobile: false,
                tablet: false,
                desktop: true,
              )
                  ? const BorderSide(color: Color(0xff988968))
                  : BorderSide.none,
            ),
            child: InkWell(
              onTap: () {},
              child: SizedBox(
                height: getValueForScreenType<double>(
                  context: context,
                  mobile: 10,
                  tablet: 20,
                  desktop: 30,
                ),
                width: getValueForScreenType<double>(
                  context: context,
                  mobile: 10,
                  tablet: 20,
                  desktop: 30,
                ),
                child: const Center(
                  child: Icon(
                    FontAwesomeIcons.twitter,
                    size: 20,
                    color: Color(0xff988968),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            width: getValueForScreenType<double>(
              context: context,
              mobile: 0,
              tablet: 5,
              desktop: 10,
            ),
          ),
          Material(
            color: Colors.transparent,
            shape: RoundedRectangleBorder(
              side: getValueForScreenType<bool>(
                context: context,
                mobile: false,
                tablet: false,
                desktop: true,
              )
                  ? const BorderSide(color: Color(0xff988968))
                  : BorderSide.none,
            ),
            child: InkWell(
              onTap: () {},
              child: SizedBox(
                height: getValueForScreenType<double>(
                  context: context,
                  mobile: 10,
                  tablet: 20,
                  desktop: 30,
                ),
                width: getValueForScreenType<double>(
                  context: context,
                  mobile: 10,
                  tablet: 20,
                  desktop: 30,
                ),
                child: const Center(
                  child: Icon(
                    FontAwesomeIcons.linkedinIn,
                    size: 20,
                    color: Color(0xff988968),
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
