import 'package:flutter/material.dart';
import '../widget/screen_content.dart';

class Health extends StatelessWidget {
  const Health({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ScreenContent(
      type: 'health',
    );
  }
}
