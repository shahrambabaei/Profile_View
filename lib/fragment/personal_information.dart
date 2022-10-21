import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:profile/configs/color_theme.dart';

class PersonalInformation extends StatelessWidget {
  const PersonalInformation({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 20, 20, 15),
      child: Form(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Personal Information',
              style: Theme.of(context)
                  .textTheme
                  .bodyText2!
                  .copyWith(fontWeight: FontWeight.w900)),
          const SizedBox(
            height: 15,
          ),
          TextFormField(
            decoration: const InputDecoration(
                prefixIcon: Icon(CupertinoIcons.at), label: Text('Email')),
          ),
          const SizedBox(height: 10),
          TextFormField(
            decoration: const InputDecoration(
                prefixIcon: Icon(CupertinoIcons.lock), label: Text('Password')),
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
                child: const Text(
                  'Save',
                  style: TextStyle(fontSize: 18),
                )),
          ),
        ],
      )),
    );
  }
}
