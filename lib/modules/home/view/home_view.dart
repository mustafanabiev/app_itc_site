import 'package:app_itc_site/components/components.dart';
import 'package:app_itc_site/constants/constants.dart';
import 'package:app_itc_site/models/developers_model.dart';
import 'package:app_itc_site/theme/text_styles/text_styles.dart';
import 'package:app_itc_site/theme/theme.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final ScrollController controller = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 20),
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 415,
                height: 555,
                color: AppColors.red,
                child: Image.asset(
                  "images/info.png",
                  width: 409,
                  height: 474,
                ),
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
          const SizedBox(height: 100),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 120),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      AppText.ourGraduates,
                      style: AppTextStyles.ourGraduates,
                    ),
                    Row(
                      children: [
                        CustomButton(
                          onPressed: () => leafThrough(true),
                          widget: const Icon(Icons.arrow_back),
                        ),
                        const SizedBox(width: 20),
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
                  width: 1200,
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
                                    Text(item.name,
                                        style: AppTextStyles.cardName),
                                  ],
                                ),
                                const SizedBox(height: 33),
                                Text(
                                  item.description,
                                  style: AppTextStyles.cardDesc,
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
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
}
