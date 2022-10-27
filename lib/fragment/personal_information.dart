import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:profile/configs/color_theme.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class PersonalInformation extends StatelessWidget {
  const PersonalInformation({super.key});

  @override
  Widget build(BuildContext context) {
    final appLocalizations = AppLocalizations.of(context)!;
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 20, 20, 15),
      child: Form(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(appLocalizations.personalInformation,
              style: Theme.of(context)
                  .textTheme
                  .bodyText2!
                  .copyWith(fontWeight: FontWeight.w900)),
          const SizedBox(
            height: 15,
          ),
          TextFormField(
            decoration: InputDecoration(
                prefixIcon: const Icon(CupertinoIcons.at),
                label: Text(appLocalizations.email)),
          ),
          const SizedBox(height: 10),
          TextFormField(
            decoration: InputDecoration(
                prefixIcon: const Icon(CupertinoIcons.lock),
                label: Text(appLocalizations.password)),
          ),
          const SizedBox(height: 10),
          SizedBox(
            height: 48,
            width: double.infinity,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)),
                  backgroundColor: ColorTheme.primaryColor,
                ),
                onPressed: () {},
                child: Text(
                  appLocalizations.save,
                  style: const TextStyle(fontSize: 18),
                )),
          ),
        ],
      )),
    );
  }
}
