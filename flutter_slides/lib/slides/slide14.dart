import 'package:devfest_logo/devfest_logo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slides/widgets/text_box/text_box.dart';
import 'package:flutter_slides/widgets/text_box/text_box_item.dart';

class Slide14 extends StatefulWidget {
  const Slide14({super.key});

  @override
  State<Slide14> createState() => _Slide14State();
}

class _Slide14State extends State<Slide14> {
  final double sw = 750;

  final double sh = 350;

  bool _animated = false;

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Positioned(
          top: 0,
          left: 280,
          child: Text(
            'Thank You!',
            style: Theme.of(context)
                .textTheme
                .displayLarge
                ?.copyWith(color: Colors.white),
          ),
        ),
        Positioned(
          top: 200,
          left: 50,
          bottom: 0,
          right: 0,
          child: GestureDetector(
            onTap: () {
              setState(() {
                _animated = !_animated;
              });
            },
            child: DevfestBaroda(
              sw: sw,
              sh: sh,
              animated: _animated,
            ),
          ),
        ),
        Positioned(
          top: 50,
          right: 100,
          child: Image.asset(
            'assets/images/prateek-sharma-twitter.png',
            width: 450,
          ),
        ),
        Positioned(
          top: 520,
          right: 100,
          child: TextBox(
            items: [
              TextBoxItem(
                text: '@SharmaPrateek7',
                link: 'https://twitter.com/SharmaPrateek7',
                style: Theme.of(context)
                    .textTheme
                    .displayMedium
                    ?.copyWith(color: Colors.lightBlueAccent),
              ),
            ],
          ),
        ),
        Positioned(
          top: 650,
          right: 100,
          child: Row(
            children: [
              Image.asset(
                'assets/images/youtube.png',
                width: 80,
                height: 80,
              ),
              const SizedBox(width: 20),
              TextBox(
                items: [
                  TextBoxItem(
                    text: 'Techie Blossom',
                    link: 'http://youtube.com/@iamps',
                    style: Theme.of(context)
                        .textTheme
                        .displayMedium
                        ?.copyWith(color: Colors.redAccent),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
