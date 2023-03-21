import 'package:app_itc_site/components/components.dart';
import 'package:app_itc_site/constants/constants.dart';
import 'package:app_itc_site/models/developers_model.dart';
import 'package:app_itc_site/theme/color/app_colors.dart';
import 'package:app_itc_site/theme/text_styles/text_styles.dart';
import 'package:flutter/material.dart';

class TheQuestionsPage extends StatefulWidget {
  const TheQuestionsPage({super.key});

  @override
  State<TheQuestionsPage> createState() => _TheQuestionsPageState();
}

class _TheQuestionsPageState extends State<TheQuestionsPage> {
  final ScrollController controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
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
                                Text(item.name, style: AppTextStyles.cardName),
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
