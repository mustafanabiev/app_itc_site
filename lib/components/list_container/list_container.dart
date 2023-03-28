import 'package:app_itc_site/theme/color/app_colors.dart';
import 'package:app_itc_site/theme/text_styles/text_styles.dart';
import 'package:flutter/material.dart';

class ListContainer extends StatelessWidget {
  const ListContainer({
    super.key,
    required this.text,
    required this.text2,
    required this.bottom,
  });
  final String text;
  final String text2;
  final bool bottom;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      shape: Border(
        bottom: bottom ? const BorderSide() : BorderSide.none,
      ),
      title: Padding(
        padding: const EdgeInsets.only(top: 39, bottom: 63),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(text),
            const Spacer(flex: 2),
            const Card(
              color: AppColors.cardColor,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: Text("Ans", style: AppTextStyles.cardTextStyle),
              ),
            ),
            const SizedBox(width: 22),
            Text(text2),
          ],
        ),
      ),
    );
  }
}
