import 'dart:ui';
import 'package:arre_voice/bottom_nav_bar.dart';
import 'package:arre_voice/color_constants.dart';
import 'package:arre_voice/common_appbar.dart';
import 'package:arre_voice/time_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int playVideo = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black54,
      body: Stack(
        children: [
          CustomScrollView(
            physics: const BouncingScrollPhysics(),
            slivers: [
              SliverAppBar(
                title: const CommonAppbar(),
                floating: true,
                shape: const RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.vertical(bottom: Radius.circular(16)),
                ),
                titleSpacing: 4,
                backgroundColor: ColorConstants.appBarColor.withOpacity(0.9),
              ),
              SliverList(
                  delegate: SliverChildBuilderDelegate(
                      (context, index) => GestureDetector(
                            onTap: () {
                              setState(() {
                                playVideo = index;
                              });
                            },
                            child: Container(
                              margin: const EdgeInsets.only(top: 16),
                              child: Image.asset(
                                  'assets/images/voicepod_card.png'),
                            ),
                          ),
                      childCount: 10)),
            ],
          ),

          ///bottom bar
          Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: ClipRRect(
                child: BackdropFilter(
                  filter: ImageFilter.blur(
                    sigmaX: 0,
                    sigmaY: 4,
                  ),
                  child: Column(
                    children: [
                      ///player dock behaviour
                      if (playVideo != -1)
                        Dismissible(
                          key: Key('$playVideo'),
                          direction: DismissDirection.down,
                          onDismissed: (direction) {
                            setState(() {
                              playVideo = -1;
                            });
                          },
                          child: Column(
                            children: [
                              Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 12, vertical: 16),
                                decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.vertical(
                                      top: Radius.circular(16)),
                                  border: const Border(
                                      top: BorderSide(
                                          color: ColorConstants.borderColor)),
                                  color: ColorConstants.appBarColor,
                                  boxShadow: [
                                    BoxShadow(
                                      blurStyle: BlurStyle.normal,
                                      color: ColorConstants.shadowColor
                                          .withOpacity(0.2),
                                      offset: Offset.zero,
                                    ),
                                  ],
                                ),
                                child: Row(
                                  children: [
                                    const Expanded(
                                        child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'How to make your business grow faster',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 14,
                                              color: Colors.white),
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                        Text(
                                          '@ShellyShah',
                                          style: TextStyle(
                                              fontWeight: FontWeight.w700,
                                              fontSize: 12,
                                              color: ColorConstants.greenColor),
                                        )
                                      ],
                                    )),
                                    const SizedBox(
                                      width: 16,
                                    ),
                                    SvgPicture.asset('assets/svgs/love.svg'),
                                    const SizedBox(
                                      width: 16,
                                    ),
                                    ClipOval(
                                      child: Container(
                                        width: 40,
                                        height: 40,
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
                                          padding: const EdgeInsets.all(12),
                                          child: SvgPicture.asset(
                                              'assets/svgs/play.svg'),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 16,
                                    ),
                                    SvgPicture.asset('assets/svgs/menu.svg'),
                                  ],
                                ),
                              ),
                              const TimerBar(
                                currentTime: 3.5,
                                totalTime: 10,
                              ),
                            ],
                          ),
                        ),
                      BottomNavBar(
                        playVideo: playVideo,
                      )
                    ],
                  ),
                ),
              )),
        ],
      ),
    );
  }
}
