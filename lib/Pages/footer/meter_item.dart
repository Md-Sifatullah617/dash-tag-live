import 'package:flutter/material.dart';

class MeterItem extends StatelessWidget {
  const MeterItem({
    super.key,
    required this.isTall,
    required this.metric,
  });
  final bool isTall;
  final String metric;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Container(
            width: 1 + 1,
            margin: EdgeInsets.only(
                top: isTall ? 0 : 12 + 12, left: 2 + 3, right: 2 + 3),
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
