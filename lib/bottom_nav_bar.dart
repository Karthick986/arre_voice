import 'package:arre_voice/color_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomNavBar extends StatelessWidget {
  final int playVideo;
  const BottomNavBar({super.key,required this.playVideo});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75,
      decoration: BoxDecoration(
        borderRadius: playVideo == -1
            ? const BorderRadius.vertical(
            top: Radius.circular(16))
            : null,
        border: playVideo == -1
            ? const Border(
            top: BorderSide(
                color: ColorConstants.borderColor))
            : null,
        color: playVideo != -1
            ? ColorConstants.appBarColor
            : ColorConstants.appBarColor.withOpacity(0.8),
        boxShadow: [
          if (playVideo != -1)
            BoxShadow(
              blurStyle: BlurStyle.normal,
              color:
              ColorConstants.shadowColor.withOpacity(0.2),
              offset: Offset.zero,
            ),
        ],
      ),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.only(left: 4),
              child: SvgPicture.asset('assets/svgs/home.svg'),
            ),
            Container(
              margin: const EdgeInsets.only(left: 8),
              child: SvgPicture.asset('assets/svgs/search.svg'),
            ),
            ClipOval(
              child: Container(
                width: 48,
                height: 48,
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        colors: [
                          Color(0xffFFA553),
                          Color(0xffEE8C34),
                          ColorConstants.primaryColor,
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight)),
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child:
                  SvgPicture.asset('assets/svgs/mike.svg'),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(right: 8),
              child:
              SvgPicture.asset('assets/svgs/network.svg'),
            ),
            Container(
              margin: const EdgeInsets.only(right: 4),
              child: Image.asset('assets/images/profile.png'),
            ),
          ],
        ),
      ),
    );
  }
}
