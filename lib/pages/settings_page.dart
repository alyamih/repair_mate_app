import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:repair_mate_app/pages/show_screen.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        const Padding(
          padding: EdgeInsets.fromLTRB(16, 60, 16, 27),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Settings',
                style: TextStyle(
                    fontFamily: 'SF Pro Text',
                    fontSize: 40,
                    fontWeight: FontWeight.w800),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Container(
            margin: const EdgeInsets.only(bottom: 8),
            width: double.infinity,
            padding: const EdgeInsets.all(17),
            decoration: BoxDecoration(
                color: const Color(0xFFF3F3F3),
                border: Border.all(color: const Color(0xFFECECEC), width: 1),
                borderRadius: BorderRadius.circular(16)),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Share with friends',
                  style: TextStyle(
                      fontFamily: 'SF Pro Text',
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                ),
                Icon(
                  Icons.chevron_right,
                  color: Color(0xFF0075FF),
                )
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: InkWell(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute<void>(
                    builder: (BuildContext context) =>
                        const ReadTermsOrPrivacyScreenView(
                          link: 'google.com',
                        )),
              );
            },
            child: Container(
              margin: const EdgeInsets.only(bottom: 8),
              width: double.infinity,
              padding: const EdgeInsets.all(17),
              decoration: BoxDecoration(
                  color: const Color(0xFFF3F3F3),
                  border: Border.all(color: const Color(0xFFECECEC), width: 1),
                  borderRadius: BorderRadius.circular(16)),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Privacy Policy',
                    style: TextStyle(
                        fontFamily: 'SF Pro Text',
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ),
                  Icon(
                    Icons.chevron_right,
                    color: Color(0xFF0075FF),
                  )
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: InkWell(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute<void>(
                    builder: (BuildContext context) =>
                        const ReadTermsOrPrivacyScreenView(
                          link: 'google.com',
                        )),
              );
            },
            child: Container(
              margin: const EdgeInsets.only(bottom: 8),
              width: double.infinity,
              padding: const EdgeInsets.all(17),
              decoration: BoxDecoration(
                  color: const Color(0xFFF3F3F3),
                  border: Border.all(color: const Color(0xFFECECEC), width: 1),
                  borderRadius: BorderRadius.circular(16)),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Terms of Use',
                    style: TextStyle(
                        fontFamily: 'SF Pro Text',
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ),
                  Icon(
                    Icons.chevron_right,
                    color: Color(0xFF0075FF),
                  )
                ],
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
