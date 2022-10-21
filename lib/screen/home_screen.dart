import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:profile/fragment/image_view.dart';
import 'package:profile/fragment/personal_information.dart';
import 'package:profile/fragment/skills__view.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('curricumlum vitae'),
        actions: const [
          Icon(CupertinoIcons.chat_bubble),
          SizedBox(width: 8),
          Padding(
            padding: EdgeInsets.only(right: 14),
            child: Icon(CupertinoIcons.ellipsis_vertical),
          )
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
