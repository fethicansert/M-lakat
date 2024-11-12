// ignore_for_file: deprecated_member_use, prefer_const_constructors

import 'package:flutter/material.dart';

//Model Imports
import '/models/user.dart';

//Custom Widget Imports
import '/widgets/custom_header.dart';
import '/widgets/sexual_personality_modes.dart';
import 'widgets/custom_notifaction_option.dart';
import 'widgets/custom_app_bar.dart';
import 'widgets/custom_user_info.dart';
import 'widgets/custom_dropdown.dart';
import 'widgets/custom_gender_radio_buttons.dart';
import 'widgets/custom_logout_button.dart';

//Style Imports
import './styles/text_styles.dart';

//Dummy Data Imports
import './data/dummy_datas.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  //VARIABLES
  User user = User(
      id: 001,
      image: 'assets/images/avatar_image.png',
      username: "Ferdi Akkaya",
      email: "ferdiakkaya@mama.com",
      messageCount: 10,
      imageCount: 5);

  @override
  void initState() {
    super.initState();
  }

  //FUNCTIONS
  void onListValueChange(Map<String, String> value, String type) {
    // ignore: avoid_print
    print("${value['label']} selected in $type list");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(
          title: "Ayarlar",
          showBackButton: true,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.fromLTRB(22, 30, 22, 40),
            child: Column(
              children: [
                //UserInfos Section
                UserInfo(
                  user: user,
                ),

                //Set Friend Dropdown Section
                CustomHeader(
                  text: "Arkadaşları Ayarla",
                  style: CustomTextStyles.subheader,
                  isCentered: true,
                  padding: EdgeInsets.only(bottom: 20, top: 60),
                ),

                CustomDropdown(
                  type: 'friends',
                  setSelected: onListValueChange,
                  list: userFriends,
                ),

                //Genders Radios Buttons Section

                CustomHeader(
                  text: "Cinsiyet Tercihi",
                  style: CustomTextStyles.subheader2,
                  padding: const EdgeInsets.only(bottom: 17, top: 25),
                ),

                GenderRadioButtons(),

                //BDSM Mode Dropdown Section
                CustomHeader(
                  text: "BDSM modu",
                  style: CustomTextStyles.subheader2,
                  padding: EdgeInsets.only(left: 10, bottom: 22, top: 22),
                ),

                CustomDropdown(
                  type: 'bdsm',
                  setSelected: onListValueChange,
                  list: bdsmModes,
                ),

                //Rol Play Dropdown Section
                CustomHeader(
                  text: "Rol Yapma",
                  style: CustomTextStyles.subheader2,
                  padding: EdgeInsets.only(left: 10, bottom: 22, top: 22),
                ),

                CustomDropdown(
                  type: 'roleplay',
                  setSelected: onListValueChange,
                  list: rolePlays,
                ),

                //Pet Play Dropdown Section
                CustomHeader(
                  text: "Pet Play",
                  style: CustomTextStyles.subheader2,
                  padding: EdgeInsets.only(left: 10, bottom: 22, top: 22),
                ),

                CustomDropdown(
                  type: 'petplay',
                  setSelected: onListValueChange,
                  list: petPlays,
                ),

                //Sexual Personality Modes Section
                CustomHeader(
                  text: "Cinsel Kisilik Modlari",
                  style: CustomTextStyles.subheader2,
                  padding: const EdgeInsets.only(bottom: 17, top: 25),
                ),

                SexualPersonalityModes(
                    sexualPersonalityModes: sexualPersonalityModes),

                //Notfication Options Section
                CustomHeader(
                  text: "Bildirim Ayarları",
                  style: CustomTextStyles.subheader,
                  isCentered: true,
                  padding: EdgeInsets.only(bottom: 20, top: 60),
                ),

                //Message Notfication Option
                NotifactionOption(
                  imageIcon: "assets/images/icons/messageThin.png",
                  label: "Mesajlar",
                ),

                //Images Notfication Option
                NotifactionOption(
                  imageIcon: "assets/images/icons/imageThin.png",
                  label: "Fotoğraflar",
                ),

                //Clothe Gifts Notfication Option
                NotifactionOption(
                  imageIcon: "assets/images/icons/hatThin.png",
                  label: "Kıyafet Hediyeleri",
                ),

                SizedBox(
                  height: 45,
                ),

                //Loguot Button
                LogoutButton()
              ],
            ),
          ),
        ));
  }
}
