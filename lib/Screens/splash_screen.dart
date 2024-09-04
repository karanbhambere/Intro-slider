import 'dart:developer';

import 'package:flutter/widgets.dart';
import 'package:intro_slider/intro_slider.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  List<ContentConfig> listContentConfig = [];
  @override
  void initState() {
    listContentConfig.add(
      const ContentConfig(
        title: 'ERASER',
        description:
            "Allow miles wound place the leave had. To sitting subject no improve studied limited",
        pathImage: 'assets/photo_eraser.png',
        backgroundColor: Color(0xfff5a623),
      ),
    );
    listContentConfig.add(const ContentConfig(
      title: 'RULER',
      description:
          "Much evil soon high in hope do view. Out may few northward believing attempted. Yet timed being songs marry one defer men our. Although finished blessing do of",
      pathImage: 'assets/photo_ruler (1).png',
      backgroundColor: Color(0xff9932CC),
    ));
    listContentConfig.add(const ContentConfig(
      title: 'PENCIL',
      description: "Ye indulgence unreserved connection alteration appearance",
      pathImage: 'assets/photo_pencil.png',
      backgroundColor: Color(0xff9932CC),
    ));
    super.initState();
  }

  void onDonePress() {
    log("End of slides");
  }

  @override
  Widget build(BuildContext context) {
    return IntroSlider(
      key: UniqueKey(),
      listContentConfig: listContentConfig,
      onDonePress: onDonePress,
    );
  }
}
