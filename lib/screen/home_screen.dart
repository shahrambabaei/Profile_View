import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:profile/fragment/image_view.dart';
import 'package:profile/fragment/personal_information.dart';
import 'package:profile/fragment/skills__view.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key, required this.onClick});
  final GestureTapCallback onClick;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('curricumlum vitae'),
        actions: [
          IconButton(
              splashRadius: 20,
              padding: const EdgeInsets.all(0),
              constraints: const BoxConstraints(maxWidth: 35),
              onPressed: () {},
              icon: const Icon(CupertinoIcons.chat_bubble)),
          IconButton(
              splashRadius: 20,
              onPressed: onClick,
              icon: const Icon(CupertinoIcons.circle_lefthalf_fill)),
        ],
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              ImageView(),
              Divider(thickness: 1),
              SkillsView(),
              Divider(thickness: 1),
              PersonalInformation()
            ]),
      ),
    );
  }
}
