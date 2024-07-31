import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

class FooterBottomLicence extends StatelessWidget {
  const FooterBottomLicence({super.key});

  @override
  Widget build(BuildContext context) {
    return const AutoSizeText.rich(
      TextSpan(
        children: [
          TextSpan(
            text: '© 2024',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w600,
              height: 1.5,
            ),
          ),
          TextSpan(
            text: ' Dash & Tag Fashion Ltd. ',
            style: TextStyle(
              color: Colors.orangeAccent,
              fontWeight: FontWeight.w600,
              height: 1.5,
            ),
          ),
          TextSpan(
            text: ' All rights reserved.',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w600,
              height: 1.5,
            ),
          ),
        ],
      ),
      maxLines: 1,
      minFontSize: 5,
    );
    // return const Row(
    //   mainAxisAlignment: MainAxisAlignment.center,
    //   children: [
    //     Expanded(
    //       child: AutoSizeText(
    //         '© 2024',
    //         style: TextStyle(
    //           color: Colors.white,
    //           fontWeight: FontWeight.w600,
    //           height: 1.5,
    //         ),
    //         maxLines: 1,
    //         minFontSize: 5,
    //       ),
    //     ),
    //     Expanded(
    //       child: AutoSizeText(
    //         ' Dash & Tag Fashion Ltd. ',
    //         style: TextStyle(
    //           color: Colors.orangeAccent,
    //           fontWeight: FontWeight.w600,
    //           height: 1.5,
    //         ),
    //         maxLines: 1,
    //         minFontSize: 5,
    //       ),
    //     ),
    //     Expanded(
    //       child: AutoSizeText(
    //         ' All rights reserved.',
    //         style: TextStyle(
    //           color: Colors.white,
    //           fontWeight: FontWeight.w600,
    //           height: 1.5,
    //         ),
    //         maxLines: 1,
    //         minFontSize: 5,
    //       ),
    //     ),
    //   ],
    // );
  }
}
