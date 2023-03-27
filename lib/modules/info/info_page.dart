import 'package:app_itc_site/constants/constants.dart';
import 'package:app_itc_site/theme/text_styles/text_styles.dart';
import 'package:app_itc_site/theme/theme.dart';
import 'package:flutter/material.dart';

class InfoPage extends StatelessWidget {
  const InfoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
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
    );
  }
}
