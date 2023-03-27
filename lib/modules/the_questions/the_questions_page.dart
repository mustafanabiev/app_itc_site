import 'package:app_itc_site/constants/app_text.dart';
import 'package:app_itc_site/modules/the_questions/divider_guestion.dart';
import 'package:app_itc_site/modules/the_questions/list_container.dart';

import 'package:app_itc_site/theme/color/app_colors.dart';
import 'package:app_itc_site/theme/text_styles/text_styles.dart';

import 'package:flutter/material.dart';

class TheQuestionsPage extends StatefulWidget {
  const TheQuestionsPage({Key? key}) : super(key: key);

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
          ],
        ),
      ),
    );
  }
}
