import 'package:dash_and_tag_web_site/Utils/All_Texts/Contact_Us_Page_Text/contact_us_page_text.dart';
import 'package:dash_and_tag_web_site/utils/All_Images/all_images.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class FooterInfo extends StatelessWidget {
  const FooterInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        getValueForScreenType<bool>(
          context: context,
          mobile: true,
          tablet: false,
          desktop: false,
        )
            ? Row(
                children: [
                  Image.asset(
                    AllImages.webSiteLogo,
                    width: 20.sw,
                    height: 20.sh,
                    fit: BoxFit.contain,
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Dash&Tag',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                            height: 1.5,
                          ),
                        ),
                        Text(
                          ContactUsPageText.bdBranchTextAddress,
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 13,
                            height: 1.5,
                          ),
                        ),
                        SizedBox(
                            height: getValueForScreenType<double>(
                          context: context,
                          mobile: 10,
                          tablet: 20,
                          desktop: 20,
                        )),
                        Text(
                          ContactUsPageText.phoneNumber,
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                            height: 1.5,
                          ),
                        ),
                        SizedBox(
                          height: getValueForScreenType<double>(
                            context: context,
                            mobile: 8,
                            tablet: 8,
                            desktop: 16,
                          ),
                        ),
                        Text(
                          ContactUsPageText.emailAddress,
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                            height: 1.5,
                          ),
                        ),
                        SizedBox(
                          height: getValueForScreenType<double>(
                            context: context,
                            mobile: 8,
                            tablet: 8,
                            desktop: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              )
            : Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    AllImages.webSiteLogo,
                    width: 20.sw,
                    height: 20.sh,
                    fit: BoxFit.contain,
                  ),
                  const SizedBox(width: 10),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Dash&Tag',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                          height: 1.5,
                        ),
                      ),
                      Text(
                        ContactUsPageText.bdBranchTextAddress,
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 13,
                          height: 1.5,
                        ),
                      ),
                      SizedBox(
                          height: getValueForScreenType<double>(
                        context: context,
                        mobile: 10,
                        tablet: 20,
                        desktop: 20,
                      )),
                      Text(
                        ContactUsPageText.phoneNumber,
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                          height: 1.5,
                        ),
                      ),
                      SizedBox(
                        height: getValueForScreenType<double>(
                          context: context,
                          mobile: 8,
                          tablet: 8,
                          desktop: 16,
                        ),
                      ),
                      Text(
                        ContactUsPageText.emailAddress,
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                          height: 1.5,
                        ),
                      ),
                      SizedBox(
                        height: getValueForScreenType<double>(
                          context: context,
                          mobile: 8,
                          tablet: 8,
                          desktop: 16,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
      ],
    );
  }
}
