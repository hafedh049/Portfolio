import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher_string.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with TickerProviderStateMixin {
  List<String> animatedTextListPhaseOne = <String>[
    "I'm A",
    "I'm A",
  ];
  List<String> animatedTextListPhaseTwo = <String>[
    "Flutter Developer",
    "Python Developer",
  ];
  late AnimationController menuController;
  List<bool> menu = <bool>[
    false,
    false,
    false,
  ];
  @override
  void dispose() {
    menuController.dispose();
    animatedTextListPhaseOne.clear();
    animatedTextListPhaseTwo.clear();
    super.dispose();
  }

  @override
  void initState() {
    menuController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Wrap(
              crossAxisAlignment: WrapCrossAlignment.center,
              alignment: WrapAlignment.center,
              runAlignment: WrapAlignment.center,
              spacing: 20,
              children: [
                Container(
                  height: MediaQuery.of(context).size.width * .4,
                  width: MediaQuery.of(context).size.width * .3,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: const DecorationImage(
                      scale: 3.5,
                      fit: BoxFit.cover,
                      image: AssetImage(
                        "assets/1.jpeg",
                      ),
                    ),
                  ),
                ),
                RichText(
                  text: TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                        text: "Hi, I'm\n",
                        style: GoogleFonts.robotoSerif(
                          textStyle: const TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      ),
                      TextSpan(
                        text: "Hafedh Gunichi",
                        style: GoogleFonts.robotoSerif(
                          textStyle: const TextStyle(
                            color: Color.fromARGB(255, 17, 255, 160),
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      TextSpan(
                        text: ", \n",
                        style: GoogleFonts.robotoSerif(
                          textStyle: const TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      ),
                      TextSpan(
                        text: "A Developer\nBased in Tunisia.",
                        style: GoogleFonts.robotoSerif(
                          textStyle: const TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Center(
              child: Wrap(
                crossAxisAlignment: WrapCrossAlignment.center,
                alignment: WrapAlignment.center,
                runAlignment: WrapAlignment.center,
                spacing: 1,
                children: [
                  AnimatedTextKit(
                    repeatForever: true,
                    pause: const Duration(milliseconds: 1100),
                    animatedTexts: [
                      for (String text in animatedTextListPhaseOne)
                        TypewriterAnimatedText(
                          text,
                          speed: const Duration(milliseconds: 100),
                          curve: Curves.linear,
                          textStyle: GoogleFonts.robotoSerif(
                            textStyle: const TextStyle(
                              color: Colors.white,
                              fontSize: 44,
                            ),
                          ),
                        ),
                    ],
                  ),
                  AnimatedTextKit(
                    pause: const Duration(milliseconds: 800),
                    repeatForever: true,
                    animatedTexts: [
                      for (String text in animatedTextListPhaseTwo)
                        TyperAnimatedText(
                          text,
                          speed: const Duration(milliseconds: 100),
                          curve: Curves.linear,
                          textStyle: GoogleFonts.robotoSerif(
                            textStyle: const TextStyle(
                              color: Color.fromARGB(255, 17, 255, 160),
                              fontSize: 44,
                            ),
                          ),
                        ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onPressed: () async {
                    await launchUrlString("https://github.com/Shadow-Waves");
                  },
                  icon: Image.asset(
                    "assets/github.png",
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                IconButton(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onPressed: () async {
                    await launchUrlString(
                        "https://www.linkedin.com/in/hafedh-gunichi-a18a60222/");
                  },
                  icon: Image.asset(
                    "assets/ln.png",
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                IconButton(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onPressed: () async {
                    await launchUrlString(
                        "https://www.facebook.com/sagittarius.aurora.25.12.2020");
                  },
                  icon: const Icon(
                    Icons.facebook,
                    size: 25,
                    color: Colors.blue,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
