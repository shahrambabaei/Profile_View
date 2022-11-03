import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:profile/configs/color_theme.dart';

import 'package:profile/fragment/image_view.dart';
import 'package:profile/fragment/personal_information.dart';
import 'package:profile/fragment/skills__view.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

enum Language { en, fa }

class HomeScreen extends StatefulWidget {
  const HomeScreen(
      {super.key,
      required this.onClick,
      required this.selectedLanguageChanged});
  final GestureTapCallback onClick;
  final Function(Language language) selectedLanguageChanged;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late AppLocalizations appLocalizations;
  @override
  void didChangeDependencies() {
    appLocalizations = AppLocalizations.of(context)!;
    super.didChangeDependencies();
  }

  Language _language = Language.en;
  void _updateSelectedLanguage(Language language) {
    widget.selectedLanguageChanged(language);
    setState(() {
      _language = language;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.profileTitle),
        actions: [
          IconButton(
              splashRadius: 20,
              padding: const EdgeInsets.all(0),
              constraints: const BoxConstraints(maxWidth: 35),
              onPressed: () {},
              icon: const Icon(CupertinoIcons.chat_bubble)),
          IconButton(
              splashRadius: 20,
              onPressed: widget.onClick,
              icon: const Icon(CupertinoIcons.circle_lefthalf_fill)),
        ],
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const ImageView(),
          const Divider(thickness: 1),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 12, 20, 12),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(appLocalizations.selectedLanguage),
                  CupertinoSlidingSegmentedControl<Language>(
                    thumbColor: ColorTheme.primaryColor,
                    groupValue: _language,
                    children: {
                      Language.en: Text(appLocalizations.enLanguage,
                          style: const TextStyle(fontSize: 14)),
                      Language.fa: Text(appLocalizations.faLanguage,
                          style: const TextStyle(fontSize: 14))
                    },
                    onValueChanged: (value) {
                      if (value != null) _updateSelectedLanguage(value);
                    },
                  )
                ]),
          ),
          const Divider(thickness: 1),
          const SkillsView(),
          const Divider(thickness: 1),
          const PersonalInformation()
        ]),
      ),
    );
  }
}
