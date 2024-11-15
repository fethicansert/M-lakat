import 'package:flutter/material.dart';

class LogoutButton extends StatelessWidget {
  const LogoutButton({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // ignore: avoid_print
        print("Log Out Button Pressed");
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        width: double.infinity,
        height: 53.31,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            border: Border.all(color: const Color.fromRGBO(62, 63, 76, .3))),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Çıkış Yap",
              style: TextStyle(
                  color: Color.fromRGBO(62, 63, 76, 1),
                  fontFamily: "Ambit",
                  fontSize: 15,
                  fontWeight: FontWeight.w600),
            ),
            Image(
              image: AssetImage('assets/images/icons/logout.png'),
              width: 24,
            )
          ],
        ),
      ),
    );
  }
}
