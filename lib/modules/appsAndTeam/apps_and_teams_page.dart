import 'package:app_itc_site/components/components.dart';
import 'package:app_itc_site/constants/constants.dart';
import 'package:app_itc_site/modules/appbanner/appbanner.dart';
import 'package:app_itc_site/theme/color/app_colors.dart';
import 'package:app_itc_site/theme/text_styles/text_styles.dart';
import 'package:flutter/material.dart';

class AppsAndTeamsPage extends StatefulWidget {
  const AppsAndTeamsPage({super.key});

  @override
  State<AppsAndTeamsPage> createState() => _AppsAndTeamsPageState();
}

class _AppsAndTeamsPageState extends State<AppsAndTeamsPage> {
  int _currentIndex = 0;
  final ScrollController controller = ScrollController();

  final _pageViewController =
      PageController(initialPage: 0, viewportFraction: 0.8);

  void list(bool reverced) {
    _pageViewController.animateTo(
      reverced
          ? _pageViewController.position.maxScrollExtent
          : _pageViewController.position.minScrollExtent,
      duration: const Duration(seconds: 12),
      curve: Curves.ease,
    );
  }

  void leafThrough(bool reverced) {
    controller.animateTo(
      reverced
          ? controller.position.minScrollExtent
          : controller.position.maxScrollExtent,
      duration: const Duration(seconds: 10),
      curve: Curves.ease,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Padding(
        padding: const EdgeInsets.only(left: 100, right: 100),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  const Text(
                    AppText.jasalgantirkeme,
                    style: AppTextStyles.button,
                    selectionColor: AppColors.black,
                  ),
                  const SizedBox(width: 680),
                  ButtomWiget(
                      onPressed: () => list(false),
                      widget: const Icon(
                        Icons.arrow_back,
                      )),
                  const SizedBox(width: 35),
                  ButtomWiget(
                      onPressed: () => list(true),
                      widget: const Icon(
                        Icons.arrow_forward,
                      )),
                ],
              ),
              const SizedBox(height: 124),
              Center(
                child: SizedBox(
                  height: 805,
                  width: 475,
                  child: PageView.builder(
                    controller: _pageViewController,
                    itemCount: appbannerList.length,
                    onPageChanged: (index) {
                      setState(() {
                        _currentIndex = index;
                      });
                    },
                    itemBuilder: (context, index) {
                      var scale = _currentIndex == index ? 1.0 : 0.8;
                      return TweenAnimationBuilder(
                        tween: Tween(begin: scale, end: scale),
                        duration: const Duration(milliseconds: 100),
                        child: Container(
                          decoration: BoxDecoration(
                            color: AppColors.white,
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                              image: AssetImage(appbannerList[index].images),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        builder: (context, double value, child) {
                          return Transform.scale(
                            scale: value,
                            child: child,
                          );
                        },
                      );
                    },
                  ),
                ),
              ),
              const SizedBox(height: 260),
              Column(
                children: [
                  Row(
                    children: [
                      const Text(
                        AppText.bizdinkomanda,
                        style: AppTextStyles.button,
                        selectionColor: AppColors.black,
                      ),
                      const SizedBox(width: 746),
                      ButtomWiget(
                        onPressed: () => leafThrough(true),
                        widget: const Icon(Icons.arrow_back),
                      ),
                      const SizedBox(width: 35),
                      ButtomWiget(
                        onPressed: () => leafThrough(false),
                        widget: const Icon(Icons.arrow_forward),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 101,
                  ),
                  SizedBox(
                    height: 500,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      controller: controller,
                      itemCount: assetsImages.length,
                      itemBuilder: (context, index) {
                        final item = assetsImages[index];
                        return Card(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 40),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Image.asset(item.images, fit: BoxFit.cover),
                                  ],
                                ),
                                const SizedBox(height: 33),
                                Column(
                                  children: [
                                    Text(
                                      item.name,
                                      style: AppTextStyles.tafhim,
                                    ),
                                    Text(item.work, style: AppTextStyles.web),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );

  }
}
