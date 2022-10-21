import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:profile/configs/color_theme.dart';

class ImageView extends StatelessWidget {
  const ImageView({super.key});

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 30, 20, 20),
      child: Column(
        children: [
          Row(
            children: [
              ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                    'assets/images/profile_image.png',
                    width: 60,
                    height: 60,
                  )),
              const SizedBox(width: 15),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Brice Séraphin',
                      style: themeData.textTheme.subtitle1,
                    ),
                    const SizedBox(
                      height: 2,
                    ),
                    const Text('Product& Product Designer'),
                    const SizedBox(
                      height: 4,
                    ),
                    Row(
                      children: [
                        Icon(
                          CupertinoIcons.location_solid,
                          size: 14,
                          color: themeData.textTheme.bodyText1!.color,
                        ),
                        Text(
                          'Paris, France',
                          style: themeData.textTheme.caption,
                        )
                      ],
                    )
                  ],
                ),
              ),
              Icon(
                CupertinoIcons.heart,
                color: ColorTheme.primaryColor,
              )
            ],
          ),
          const SizedBox(height: 20),
          Text(
            'Enthusiastic young computer Geek,Freelance Designer in love of independence,I have alot of experience in graphical projects,and always give the best of myself to bring you to success.',
            style: themeData.textTheme.bodyText1,
          ),
        ],
      ),
    );
  }
}
