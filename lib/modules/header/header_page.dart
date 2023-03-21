// import 'dart:html';

import 'package:app_itc_site/constants/constants.dart';
import 'package:app_itc_site/theme/text_styles/text_styles.dart';
import 'package:app_itc_site/theme/theme.dart';
import 'package:flutter/material.dart';

class HeaderPage extends StatelessWidget {
  const HeaderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        toolbarHeight: 120,
        elevation: 0.0,
        leadingWidth: 200,
        leading: Image.asset('images/logo.png'),
        title: Row(
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: const [
            SizedBox(width: 20),
            AppBarText(
              text: AppText.home,
            ),
            AppBarText(
              text: AppText.aboutTheCompany,
            ),
            AppBarText(
              text: AppText.app,
            ),
            AppBarText(
              text: AppText.ourTeam,
            ),
            AppBarText(
              text: AppText.graduates,
            ),
            AppBarText(
              text: AppText.questions,
            ),
          ],
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 100),
            child: Row(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Курс тууралуу   кызыктуу тема  жазгыла',
                      style: TextStyle(color: AppColors.black, fontSize: 70),
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      '''Not all mentors are created equal. The best mentors share some 
                          Qualities. You’ll want to look for these attributes''',
                      style: TextStyle(fontSize: 18),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          fixedSize: const Size(210, 70),
                          backgroundColor: AppColors.red),
                      onPressed: () {},
                      child: const Text('Жазылуу'),
                    ),
                  ],
                ),
                ColoredBox(
                  color: AppColors.red,
                  child: Image.asset(
                    'images/girlhome.png',
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 240,
            width: double.infinity,
            child: ColoredBox(
              color: AppColors.blue,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  BlueElementList(text: '33k+', text2: 'Студенттер'),
                  BlueElementList(text: '2k+', text2: 'Сын-пикирлер'),
                  BlueElementList(text: '150+', text2: 'Меторлор'),
                  BlueElementList(text: '620+', text2: 'Курстар'),
                  BlueElementList(text: '20k+', text2: 'Сабактар'),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class BlueElementList extends StatelessWidget {
  const BlueElementList({super.key, required this.text, required this.text2});

  final String text;
  final String text2;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(text, style: AppTextStyles.blueList),
        const SizedBox(height: 18),
        Text(text2, style: AppTextStyles.blueList2),
      ],
    );
  }
}

class AppBarText extends StatelessWidget {
  const AppBarText({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 55),
        child: Text(text, style: AppTextStyles.appBar));
  }
}
