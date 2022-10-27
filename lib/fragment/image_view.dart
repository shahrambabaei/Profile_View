import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:profile/configs/color_theme.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ImageView extends StatelessWidget {
  const ImageView({super.key});

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    final appLocalizations = AppLocalizations.of(context)!;
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
                      appLocalizations.name,
                      style: themeData.textTheme.subtitle1,
                    ),
                    const SizedBox(
                      height: 2,
                    ),
                     Text(appLocalizations.job),
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
                          appLocalizations.location,
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
            appLocalizations.summary,
            style: themeData.textTheme.bodyText1,
          ),
        ],
      ),
    );
  }
}
