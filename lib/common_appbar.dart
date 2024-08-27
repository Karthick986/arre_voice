import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CommonAppbar extends StatelessWidget {
  const CommonAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
        child: BackdropFilter(
      filter: ImageFilter.blur(
        sigmaX: 0,
        sigmaY: 4,
      ),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Image.asset('assets/images/arre_voice_logo.png'),
            Row(
              children: [
                SvgPicture.asset('assets/svgs/notification.svg'),
                const SizedBox(
                  width: 16,
                ),
                SvgPicture.asset('assets/svgs/audio_message.svg')
              ],
            )
          ],
        ),
      ),
    ));
  }
}
