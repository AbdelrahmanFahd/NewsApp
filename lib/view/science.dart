import 'package:flutter/material.dart';
import '../widget/screen_content.dart';

class Science extends StatelessWidget {
  const Science({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ScreenContent(
      type: 'science',
    );
  }
}
