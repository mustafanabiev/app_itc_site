import 'package:app_itc_site/theme/text_styles/text_styles.dart';
import 'package:flutter/material.dart';

class TeamsWiget extends StatelessWidget {
  const TeamsWiget({
    super.key,
    this.image,
    required this.text1,
    required this.text2,
  });
  final String text1;
  final String text2;
  final dynamic image;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 325,
        height: 400,
        child: Column(
          children: [
            Image.asset(
              image,
              width: 325,
              height: 302,
            ),
            const SizedBox(height: 39),
            Text(
              text1,
              style: AppTextStyles.tafhim,
            ),
            const SizedBox(height: 10),
            Text(
              text2,
              style: AppTextStyles.web,
            ),
          ],
        ));
  }
}
