// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_application_1/styles/color_styles.dart';

import '../models/user.dart';

class UserInfo extends StatelessWidget {
  final User user;
  const UserInfo({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          SizedBox(
            width: 104.63,
            height: 104.63,
            child: CircleAvatar(
              backgroundImage: AssetImage(user.image),
            ),
          ),
          const SizedBox(height: 20),
          Text(
            user.username,
            style: const TextStyle(
                fontFamily: "Ambit SemiBold",
                fontSize: 15,
                fontWeight: FontWeight.w600),
          ),
          const SizedBox(
            height: 3,
          ),
          Text(
            user.email,
            style: const TextStyle(
                fontFamily: "Ambit Light",
                fontSize: 12,
                fontWeight: FontWeight.w300),
          ),
          const SizedBox(height: 12),

          Container(
            decoration: BoxDecoration(
                color: const Color.fromRGBO(0, 0, 0, .03),
                borderRadius: BorderRadius.circular(20)),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(15, 9, 15, 9),
              child: IntrinsicHeight(
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/icons/messageIcon.png',
                      width: 18,
                    ),
                    const SizedBox(
                      width: 6,
                    ),
                    Text(
                      user.messageCount.toString(),
                      style: const TextStyle(
                          fontFamily: "Ambit SemiBold",
                          fontSize: 12.89,
                          fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(
                      height: 23,
                      child: VerticalDivider(
                        width: 24,
                        color: Color.fromRGBO(0, 0, 0, .2),
                        thickness: 2,
                      ),
                    ),
                    Image.asset(
                      'assets/images/icons/imageIcon.png',
                      width: 18,
                    ),
                    const SizedBox(
                      width: 6,
                    ),
                    //if image count smaller than 10 add 0 as string
                    Text(
                      user.imageCount < 10
                          ? "0${user.imageCount}"
                          : user.imageCount.toString(),
                      style: const TextStyle(
                          fontFamily: "Ambit SemiBold",
                          fontSize: 12.89,
                          fontWeight: FontWeight.w600),
                    )
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(height: 28),
          InkWell(
            onTap: () {
              print("Premium Button Clicked");
            },
            child: Container(
              decoration: BoxDecoration(
                  border:
                      Border.all(color: const Color.fromRGBO(231, 28, 113, .3)),
                  borderRadius: BorderRadius.circular(100)),
              child: Padding(
                padding: const EdgeInsets.all(3),
                child: Container(
                  height: 37,
                  width: 154,
                  decoration: BoxDecoration(
                      boxShadow: [
                        const BoxShadow(
                            color: Color.fromRGBO(255, 255, 255, .7)),
                        BoxShadow(
                            blurStyle: BlurStyle.inner,
                            blurRadius: 13,
                            color: CustomColorStyles.primaryColor)
                      ],
                      image: const DecorationImage(
                        image: AssetImage('assets/images/grain2.png'),
                        fit: BoxFit.fill,
                      ),
                      borderRadius: BorderRadius.circular(100)),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image(
                        image: AssetImage('assets/images/icons/lightening.png'),
                        width: 13.5,
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      Text(
                        "Premiuma Yükselt",
                        style: TextStyle(
                            fontFamily: "Neue Plak",
                            fontSize: 11,
                            fontWeight: FontWeight.w400,
                            color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          //Button Profili Duzenle
          InkWell(
            onTap: () {
              print("Edin Profile Button Clicked");
            },
            child: Container(
              height: 42.1,
              width: 162.3,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  border: Border.all(color: const Color.fromRGBO(0, 0, 0, .3))),
              child: const Center(
                child: Text(
                  "Profili Düzenle",
                  style: TextStyle(
                      fontFamily: "Ambit Regular",
                      fontSize: 11,
                      fontWeight: FontWeight.w400,
                      color: Colors.black),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
