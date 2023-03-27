import 'package:app_itc_site/theme/color/app_colors.dart';
import 'package:app_itc_site/theme/text_styles/text_styles.dart';
import 'package:flutter/material.dart';

class ListContainer extends StatelessWidget {
  const ListContainer({
    super.key,
    required this.text,
    required this.text2,
  });
  final String text;
  final String text2;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: Row(
            children: [
              Text(text),
              Spacer(flex: 2),
              Container(
                height: 29,
                width: 56,
                color: AppColors.cardColor,
                child: const Center(
                  child: Text(
                    "Ans",
                    style: AppTextStyles.cardTextStyle,
                  ),
                ),
              ),
            ],
          ),
          trailing: Text(text2),
        ),
      ],
    );
  }
}
