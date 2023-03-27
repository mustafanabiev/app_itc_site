import 'package:app_itc_site/constants/app_text.dart';
import 'package:app_itc_site/modules/the_questions/divider_guestion.dart';
import 'package:app_itc_site/modules/the_questions/list_container.dart';

import 'package:app_itc_site/theme/color/app_colors.dart';
import 'package:app_itc_site/theme/text_styles/text_styles.dart';

import 'package:flutter/material.dart';

class TheQuestionsPage extends StatefulWidget {
  const TheQuestionsPage({Key? key}) : super(key: key);
import 'package:app_itc_site/components/button/custom_button.dart';
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
  State<TheQuestionsPage> createState() => _TheQuestionsPageState();
}

class _TheQuestionsPageState extends State<TheQuestionsPage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 121.0, vertical: 12.0),
      child: Scaffold(
        appBar: AppBar(
          title: const Text(AppText.theGuestions,
              style: AppTextStyles.guestionsStyleAppBar),
          elevation: 0,
          backgroundColor: AppColors.white,
        ),
        body: Column(
          children: [
            const SizedBox(height: 50),
            const ListContainer(
              text: AppText.theGuestions1,
              text2:
                  "Our designers and engineers know collaboration is the  essence of any project It’s a simple\n philosophy we followed  for nearly two decades philosophy we followed\n for nearly two decades...",
            ),
            const SizedBox(height: 50),
            const DividerGuestions(),
            const SizedBox(height: 10),
            const ListContainer(
              text: AppText.theGuestions2,
              text2:
                  "Our designers and engineers know collaboration is the  essence of any project It’s a simple\nphilosophy we followed  for nearly two decadesphilosophy we followed",
            ),
            const SizedBox(height: 50),
            const DividerGuestions(),
            const SizedBox(height: 10),
            const ListContainer(
                text: AppText.theGuestions3,
                text2:
                    "Our designers and engineers know collaboration is the  essence of any project It’s a simple\nphilosophy we followed  for nearly two decades philosophy we followed\nfor nearly two decades..."),
            const SizedBox(height: 50),
            const DividerGuestions(),
            const SizedBox(height: 10),
            const ListContainer(
                text: AppText.theGuestions4,
                text2:
                    "Our designers and engineers know collaboration is the  essence of any project It’s a simple\nphilosophy we followed  for nearly two decades..."),
            Row(
              children: const [
                SizedBox(
                  height: 180,
                  width: 18,
                ),
                Text(AppText.theGuestions5),
                Text(
                  AppText.theGuestions6,
                  style: AppTextStyles.guestionStyletext,
                ),
              ],
            ),
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
