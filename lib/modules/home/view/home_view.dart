import 'package:app_itc_site/components/components.dart';
import 'package:app_itc_site/constants/constants.dart';
import 'package:app_itc_site/models/model.dart';
import 'package:app_itc_site/theme/text_styles/text_styles.dart';
import 'package:app_itc_site/theme/theme.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final ScrollController controller = ScrollController();
  int _currentIndex = 0;

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
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 120, vertical: 20),
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 415,
                height: 555,
                color: AppColors.red,
                child: Image.asset("images/info.png", width: 409, height: 474),
              ),
              const SizedBox(width: 111),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    AppText.infoForKompani,
                    style: AppTextStyles.infoForKompaniTextsyle,
                  ),
                  SizedBox(height: 45),
                  Text(
                    'Not all mentors are created equal. The best mentors share some important\nQualities. You’ll want to look for these attributes in anyone you’re thinking\nAbout building a mentor-mentee relationship with. And if you’re\nlooking to be a better mentor yourself, these qualities are worth noting.\n\nNot all mentors are created equal. The best mentors share some important\nQualities. You’ll want to look for these attributes in anyone you’re thinking\nAbout building a mentor-mentee relationship with. And if you’re\nlooking to be a better mentor yourself,',
                    style: TextStyle(
                      fontSize: 16,
                      wordSpacing: 5,
                      height: 1.8,
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 231),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                AppText.jasalgantirkeme,
                style: AppTextStyles.button,
                selectionColor: AppColors.black,
              ),
              Row(
                children: [
                  CustomButton(
                    onPressed: () => list(false),
                    widget: const Icon(Icons.arrow_back),
                  ),
                  const SizedBox(width: 35),
                  CustomButton(
                    onPressed: () => list(true),
                    widget: const Icon(Icons.arrow_forward),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 124),
          Center(
            child: SizedBox(
              width: 475,
              height: 805,
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
                      return Transform.scale(scale: value, child: child);
                    },
                  );
                },
              ),
            ),
          ),
          const SizedBox(height: 262),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                AppText.bizdinkomanda,
                style: AppTextStyles.button,
                selectionColor: AppColors.black,
              ),
              Row(
                children: [
                  CustomButton(
                    onPressed: () => leafThrough(true),
                    widget: const Icon(Icons.arrow_back),
                  ),
                  const SizedBox(width: 35),
                  CustomButton(
                    onPressed: () => leafThrough(false),
                    widget: const Icon(Icons.arrow_forward),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 101),
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
                        Image.asset(item.images, fit: BoxFit.cover),
                        const SizedBox(height: 33),
                        Text(
                          item.name,
                          style: AppTextStyles.tafhim,
                        ),
                        Text(item.work, style: AppTextStyles.web),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          const SizedBox(height: 278),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                AppText.bizdinkomanda,
                style: AppTextStyles.button,
                selectionColor: AppColors.black,
              ),
              Row(
                children: [
                  CustomButton(
                    onPressed: () => leafThrough(true),
                    widget: const Icon(Icons.arrow_back),
                  ),
                  const SizedBox(width: 35),
                  CustomButton(
                    onPressed: () => leafThrough(false),
                    widget: const Icon(Icons.arrow_forward),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 73),
          SizedBox(
            height: 295,
            child: ListView.builder(
              controller: controller,
              scrollDirection: Axis.horizontal,
              itemCount: developers.length,
              itemBuilder: (context, index) {
                final item = developers[index];
                return SizedBox(
                  width: 384,
                  child: Card(
                    color: AppColors.cardColor,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                item.image,
                                width: 80,
                                height: 80,
                                fit: BoxFit.cover,
                              ),
                              const SizedBox(width: 24),
                              Text(item.name, style: AppTextStyles.cardName),
                            ],
                          ),
                          const SizedBox(height: 33),
                          Text(item.description, style: AppTextStyles.cardDesc),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Көп суралуучу суроолор',
                style: AppTextStyles.button,
              ),
              const SizedBox(height: 101),
              const ListContainer(
                text: AppText.theGuestions1,
                text2:
                    'Our designers and engineers know collaboration is the  essence of any project It’s a simple\n philosophy we followed  for nearly two decades philosophy we followed\n for nearly two decades...',
                bottom: true,
              ),
              const SizedBox(height: 40),
              const ListContainer(
                text: AppText.theGuestions1,
                text2:
                    "Our designers and engineers know collaboration is the  essence of any project It’s a simple\n philosophy we followed  for nearly two decades philosophy we followed\n for nearly two decades...",
                bottom: true,
              ),
              const SizedBox(height: 40),
              const ListContainer(
                text: AppText.theGuestions2,
                text2:
                    "Our designers and engineers know collaboration is the  essence of any project It’s a simple\nphilosophy we followed  for nearly two decadesphilosophy we followed",
                bottom: true,
              ),
              const SizedBox(height: 40),
              const ListContainer(
                text: AppText.theGuestions3,
                text2:
                    "Our designers and engineers know collaboration is the  essence of any project It’s a simple\nphilosophy we followed  for nearly two decades philosophy we followed\nfor nearly two decades...",
                bottom: false,
              ),
              const SizedBox(height: 92),
              Row(
                children: const [
                  Text(AppText.theGuestions5),
                  Text(
                    AppText.theGuestions6,
                    style: AppTextStyles.guestionStyletext,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
