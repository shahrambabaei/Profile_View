import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:profile/widget/skill.dart';

class SkillsView extends StatefulWidget {
  const SkillsView({super.key});

  @override
  State<SkillsView> createState() => _SkillsViewState();
}

enum SkillType {
  photoshop,
  adobexd,
  illustrator,
  afterEffect,
  lightRoom,
}

class _SkillsViewState extends State<SkillsView> {
  SkillType skillType = SkillType.photoshop;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 25, 20, 20),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('Skills',
                  style: Theme.of(context)
                      .textTheme
                      .bodyText2!
                      .copyWith(fontWeight: FontWeight.w900)),
              const SizedBox(
                width: 5,
              ),
              const Icon(
                CupertinoIcons.chevron_down,
                size: 13,
              )
            ],
          ),
          const SizedBox(height: 15),
          Center(
            child: Wrap(
              direction: Axis.horizontal,
              spacing: 8,
              runSpacing: 8,
              children: [
                Skill(
                    title: 'PhotoShop',
                    imagePath: 'assets/images/photo_shop.png',
                    shadowColor: Colors.blue,
                    isActive: skillType == SkillType.photoshop,
                    onClick: (() {
                      setState(() {
                        skillType = SkillType.photoshop;
                      });
                    })),
                Skill(
                    title: 'Adobe Xd',
                    imagePath: 'assets/images/app_icon_05.png',
                    shadowColor: Colors.pink,
                    isActive: skillType == SkillType.adobexd,
                    onClick: (() {
                      setState(() {
                        skillType = SkillType.adobexd;
                      });
                    })),
                Skill(
                  title: 'Illustrator',
                  imagePath: 'assets/images/app_icon_04.png',
                  shadowColor: Colors.orange.shade100,
                  isActive: skillType == SkillType.illustrator,
                  onClick: (() {
                    setState(() {
                      skillType = SkillType.illustrator;
                    });
                  }),
                ),
                Skill(
                  title: 'After Efect',
                  imagePath: 'assets/images/app_icon_03.png',
                  shadowColor: Colors.blue.shade800,
                  isActive: skillType == SkillType.afterEffect,
                  onClick: (() {
                    setState(() {
                      skillType = SkillType.afterEffect;
                    });
                  }),
                ),
                Skill(
                  title: 'Lightroom',
                  imagePath: 'assets/images/app_icon_02.png',
                  shadowColor: Colors.blue,
                  isActive: skillType == SkillType.lightRoom,
                  onClick: () {
                    setState(() {
                      skillType = SkillType.lightRoom;
                    });
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
