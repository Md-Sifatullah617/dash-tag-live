import 'package:dash_and_tag_web_site/Utils/All_Colors/all_colors.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class HeaderLeft extends StatelessWidget {
  const HeaderLeft({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Expanded(
      child: Column(
        // crossAxisAlignment: isBigScreen
        //     ? CrossAxisAlignment.start
        //     : CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          HeaderLeftTitle(isBigScreen: true),
          SizedBox(height: 24),
          HeaderLeftSubtitle(pad: 10, isBigScreen: true),
          SizedBox(height: 52),
          HeaderLeftInput(pad: 10),
        ],
      ),
    );
  }
}

class HeaderLeftInput extends StatelessWidget {
  const HeaderLeftInput({
    super.key,
    required this.pad,
  });

  final double pad;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 72,
      // margin:
      //     EdgeInsets.only(right: (72 * pad) + (120 * pad1), left: 120 * pad1),
      padding: const EdgeInsets.all(8),

      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: ColorManager.webBackgroundColor.withOpacity(0.5), // Shadow color
            spreadRadius: 5, // Spread radius
            blurRadius: 7, // Blur radius
            offset: const Offset(0, 3), // Shadow position
          ),
        ],
      ),
      child: Row(
        children: [
          Expanded(
            child: Card(
              color: Colors.amber,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0), // Adjust the border radius as needed
              ),
              elevation: 10,
              child: Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: TextField(
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    height: 1.30,
                  ),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Type your email',
                    hintStyle: GoogleFonts.poppins(
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Material(
            color: Colors.blue,
            child: InkWell(
              onTap: () {},
              child: const SizedBox(
                height: 72 - 16,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 32),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // 'Get a quote'.poppins(
                        //   color: white,
                        //   height: 1.75,
                        //   fontWeight: FontWeight.w500,
                        // ),
                        Text('Get a quote',
                            style: TextStyle(
                                color: Colors.white,
                                height: 1.75,
                                fontWeight: FontWeight.w500,
                                fontSize: 16)),
                        SizedBox(width: 10),
                        Icon(
                          FontAwesomeIcons.chevronRight,
                          color: Colors.white,
                          size: 12,
                        )
                      ],
                    ),
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

class HeaderLeftSubtitle extends StatelessWidget {
  const HeaderLeftSubtitle({
    super.key,
    required this.pad,
    required this.isBigScreen,
  });

  final double pad;
  final bool isBigScreen;

  @override
  Widget build(BuildContext context) {
    return Text(
      'We are a team of talented designers making the best fashion for you.',
      textAlign: isBigScreen ? TextAlign.left : TextAlign.center,
      style: GoogleFonts.poppins(
        fontSize: 24,
        fontWeight: FontWeight.w500,
        color: Colors.blueGrey,
        height: 1.5,
      ),
    );
    // 'We are a team of talented designers making the best fashion for you.'
    //     .poppins(
    //         textAlign: isBigScreen ? TextAlign.left : TextAlign.center,
    //         fontSize: 24,
    //         fontWeight: FontWeight.w500,
    //         color: white,
    //         height: 1.5,
    //       );
  }
}

class HeaderLeftTitle extends StatelessWidget {
  const HeaderLeftTitle({super.key, required this.isBigScreen});
  final bool isBigScreen;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 120),
      child: Text(
        'Unleashing Fashion, One Piece at a Time',
        textAlign: isBigScreen ? TextAlign.left : TextAlign.center,
        style: GoogleFonts.stixTwoText(
          fontSize: 90,
          fontWeight: FontWeight.bold,
          color: ColorManager.blackColor,
          height: 1.1,
        ),
      ),
      // 'Unleashing Fashion, One Piece at a Time'.stixTwoText(
      //   textAlign: isBigScreen ? TextAlign.left : TextAlign.center,
      //   fontSize: 90,
      //   fontWeight: FontWeight.bold,
      //   color: greenlight,
      //   height: 1.1,
      // ),
    );
  }
}
