import 'package:arre_voice/color_constants.dart';
import 'package:flutter/material.dart';

class TimerBar extends StatelessWidget {
  final double currentTime, totalTime;

  const TimerBar({super.key, required this.currentTime, required this.totalTime});

  @override
  Widget build(BuildContext context) {
    final double availableWidth = MediaQuery.of(context).size.width;

    return Row(
      children: [
        Container(
          width: currentTime / totalTime * (availableWidth),
          height: 3,
          color: ColorConstants.greenColor,
        ),
        Container(
          width: (totalTime - currentTime) / totalTime * (availableWidth),
          height: 3,
          color: ColorConstants.borderColor,
        ),
      ],
    );
  }
}
