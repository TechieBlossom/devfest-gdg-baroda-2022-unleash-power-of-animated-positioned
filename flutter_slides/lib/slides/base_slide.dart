import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_slides/slides/slide1.dart';
import 'package:flutter_slides/slides/slide10.dart';
import 'package:flutter_slides/slides/slide11.dart';
import 'package:flutter_slides/slides/slide12.dart';
import 'package:flutter_slides/slides/slide13.dart';
import 'package:flutter_slides/slides/slide14.dart';
import 'package:flutter_slides/slides/slide2.dart';
import 'package:flutter_slides/slides/slide3.dart';
import 'package:flutter_slides/slides/slide4.dart';
import 'package:flutter_slides/slides/slide5.dart';
import 'package:flutter_slides/slides/slide6.dart';
import 'package:flutter_slides/slides/slide7.dart';
import 'package:flutter_slides/slides/slide8.dart';
import 'package:flutter_slides/slides/slide9.dart';
import 'package:flutter_slides/theme/text_theme.dart';
import 'package:flutter_slides/widgets/text_box/text_box.dart';
import 'package:flutter_slides/widgets/text_box/text_box_item.dart';
import 'package:url_launcher/url_launcher.dart';

class BaseSlide extends StatefulWidget {
  const BaseSlide({super.key});

  @override
  State<BaseSlide> createState() => _BaseSlideState();
}

class _BaseSlideState extends State<BaseSlide> {
  final ValueNotifier<int> _currentIndex = ValueNotifier(0);

  void _navigateToNextSlide(BuildContext context) {
    _currentIndex.value++;
  }

  void _navigateToPreviousSlide(BuildContext context) {
    _currentIndex.value--;
  }

  void _navigateToFirstSlide(BuildContext context) {
    _currentIndex.value = 0;
  }

  static const _slides = [
    Slide1(),
    Slide2(),
    Slide3(),
    Slide4(),
    Slide5(),
    Slide6(),
    Slide7(),
    Slide8(),
    Slide9(),
    Slide10(),
    Slide11(),
    Slide12(),
    Slide13(),
    Slide14(),
  ];

  @override
  Widget build(BuildContext context) {
    return RawKeyboardListener(
      autofocus: true,
      focusNode: FocusNode(),
      onKey: (event) {
        if (event.isKeyPressed(LogicalKeyboardKey.arrowLeft)) {
          if (_currentIndex.value != 0) {
            _navigateToPreviousSlide(context);
          }
        } else if (event.isKeyPressed(LogicalKeyboardKey.arrowRight)) {
          if (_currentIndex.value < _slides.length - 1) {
            _navigateToNextSlide(context);
          }
        }
      },
      child: Scaffold(
        body: ValueListenableBuilder(
          valueListenable: _currentIndex,
          builder: (BuildContext context, int value, Widget? child) {
            return Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 64,
                    top: 64,
                    bottom: 32,
                    right: 64,
                  ),
                  child: IndexedStack(
                    index: value,
                    children: _slides,
                  ),
                ),
                Positioned(
                  top: 10,
                  right: 0,
                  width: 360,
                  height: 60,
                  child: TextBox(
                    items: [
                      TextBoxItem(
                        text: 'Digital clock animation',
                        link: 'https://youtu.be/XaeVq1Cbe94',
                        style: italicHeadlineMedium(context)
                            ?.copyWith(color: Colors.blue),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  left: 0,
                  bottom: 0,
                  child: ClipRRect(
                    borderRadius:
                        const BorderRadius.only(topRight: Radius.circular(10)),
                    child: ColoredBox(
                      color: Colors.black12,
                      child: Row(
                        children: [
                          if (_currentIndex.value != 0)
                            IconButton(
                              iconSize: 40,
                              icon: const Icon(Icons.navigate_before_rounded),
                              onPressed: () =>
                                  _navigateToPreviousSlide(context),
                            ),
                          SizedBox(width: _currentIndex.value == 0 ? 90 : 50),
                          if (_currentIndex.value < _slides.length - 1)
                            IconButton(
                              iconSize: 40,
                              icon: const Icon(Icons.navigate_next_rounded),
                              onPressed: () => _navigateToNextSlide(context),
                            ),
                          const SizedBox(width: 50),
                          if (_currentIndex.value != 0)
                            IconButton(
                              iconSize: 40,
                              icon: const Icon(Icons.first_page),
                              onPressed: () => _navigateToFirstSlide(context),
                            ),
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  right: 0,
                  bottom: 0,
                  child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(10),
                    ),
                    child: ColoredBox(
                      color: Colors.black12,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 32.0),
                        child: Text(
                          '${_currentIndex.value + 1}',
                          style: Theme.of(context)
                              .textTheme
                              .displaySmall
                              ?.copyWith(color: Theme.of(context).primaryColor),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

Future<void> openLink(Uri uri) async {
  if (!await launchUrl(uri)) {
    throw 'Could not launch $uri';
  }
}
