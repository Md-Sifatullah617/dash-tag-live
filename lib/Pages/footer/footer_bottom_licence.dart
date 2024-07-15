import 'package:flutter/material.dart';

class FooterBottomLicence extends StatelessWidget {
  const FooterBottomLicence({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      // children: [
      //   '© 2022'.poppins(
      //     color: Colors.white,
      //     fontWeight: FontWeight.w600,
      //     height: 1.5,
      //   ),
      //   ' Rylic Studio '.poppins(
      //     color: Colors.orangeAccent,
      //     fontWeight: FontWeight.w600,
      //     height: 1.5,
      //   ),
      //   ' All rights reserved.'.poppins(
      //     color: Colors.white,
      //     fontWeight: FontWeight.w600,
      //     height: 1.5,
      //   ),
      // ],
      children: [
        Text(
          '© 2022',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w600,
            height: 1.5,
          ),
        ),
        Text(
          ' Rylic Studio ',
          style: TextStyle(
            color: Colors.orangeAccent,
            fontWeight: FontWeight.w600,
            height: 1.5,
          ),
        ),
        Text(
          ' All rights reserved.',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w600,
            height: 1.5,
          ),
        ),
      ],
    );
  }
}
