import 'dart:ui';
import 'package:arre_voice/color_constants.dart';
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
          height: 101,
          decoration: BoxDecoration(
            borderRadius:
            const BorderRadius.vertical(bottom: Radius.circular(16)),
            color: ColorConstants.appBarColor.withOpacity(0.8),
            boxShadow: [
              BoxShadow(
                blurStyle: BlurStyle.normal,
                color: ColorConstants.shadowColor.withOpacity(0.2),
                offset: Offset.zero,
              ),
            ],
          ),
          child: Container(
            margin: const EdgeInsets.all(12),
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
        ),
      ),
    );
  }
}
