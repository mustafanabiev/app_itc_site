import 'package:flutter/material.dart';

class DividerGuestions extends StatelessWidget {
  const DividerGuestions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Divider(
      height: 20,
      thickness: 2,
      indent: 21,
      endIndent: 19,
    );
  }
}
