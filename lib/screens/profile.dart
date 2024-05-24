// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:football_app/constants.dart';
import 'package:football_app/screens/welcome_screen.dart';
import 'package:iconsax/iconsax.dart';

class Homeprofile extends StatelessWidget {
  Homeprofile({super.key, required this.onpressed});
  void Function() onpressed;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kbackgroundColor,
        body: Center(
            child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0, 100, 0, 50),
              child: Container(
                width: 160,
                height: 160,
                clipBehavior: Clip.antiAlias,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                ),
                child: Image.asset(
                  'assets/images/sticker.webp',
                  fit: BoxFit.fill,
                ),
              ),
            ),
            const Align(
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                child: Text(
                  'Welcome',
                  style: TextStyle(
                    color: kboxColor,
                    fontSize: 60,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const Text(
              'To your Profile',
              style: TextStyle(
                  color: kprimaryColor,
                  fontSize: 23,
                  fontWeight: FontWeight.w500),
            ),
            const Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 50, 0, 0),
              child: Text(
                'Click on "Details" for more imformations',
                style: TextStyle(
                    color: kprimaryColor,
                    fontSize: 18,
                    fontWeight: FontWeight.w400),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 60),
              child: ElevatedButton(
                onPressed: () {
                  onpressed();
                },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  backgroundColor: kprimaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: Container(
                  width: 200,
                  height: 50,
                  alignment: Alignment.center,
                  child: const Text(
                    'Details!',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            )
          ],
        )));
  }
}

class MyProfilePage extends StatelessWidget {
  const MyProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kbackgroundColor,
        appBar: AppBar(
          title: const Text(
            'Profile',
            style: TextStyle(
              color: kprimaryColor,
              fontSize: 26,
            ),
          ),
          centerTitle: false,
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: const BoxDecoration(),
                child: Align(
                  alignment: Alignment.center,
                  child: Container(
                    width: 160,
                    height: 160,
                    clipBehavior: Clip.antiAlias,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: Image.asset(
                      'assets/images/sticker.webp',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              const Center(
                child: Padding(
                  padding: EdgeInsets.only(top: 12),
                  child: Text(
                    'Lamri Laadjel',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
                child: SizedBox(
                    height: 70,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: const Offset(0, 2),
                          ),
                        ],
                      ),
                      child: const Padding(
                        padding: EdgeInsets.only(left: 15),
                        child: Row(
                          children: [
                            Icon(
                              Icons.mail_rounded,
                              color: kprimaryColor,
                              size: 28,
                            ),
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.only(top: 8, left: 25),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Email',
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(top: 5),
                                      child: Text(
                                        'Lamri.Laadjel@gmail.com',
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
                child: SizedBox(
                  height: 70,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: const Offset(0, 2),
                        ),
                      ],
                    ),
                    child: const Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: Row(
                        children: [
                          Icon(
                            Iconsax.star5,
                            color: kprimaryColor,
                            size: 28,
                          ),
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.only(top: 8, left: 25),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    'Favorite',
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 5),
                                    child: Text(
                                      'Check your favorites matchs',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
                child: SizedBox(
                    height: 70,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: const Offset(0, 2),
                          ),
                        ],
                      ),
                      child: const Padding(
                        padding: EdgeInsets.only(left: 15),
                        child: Row(
                          children: [
                            Icon(
                              Iconsax.notification,
                              color: kprimaryColor,
                              size: 28,
                            ),
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.only(top: 8, left: 25),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Notification',
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(top: 5),
                                      child: Text(
                                        'Check your notifications',
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
                child: SizedBox(
                    height: 70,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: const Offset(0, 2),
                          ),
                        ],
                      ),
                      child: const Padding(
                        padding: EdgeInsets.only(left: 15),
                        child: Row(
                          children: [
                            Icon(
                              Icons.settings,
                              color: kprimaryColor,
                              size: 28,
                            ),
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.only(top: 8, left: 25),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Setting',
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(top: 5),
                                      child: Text(
                                        'Light mode',
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 12),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(horizontal: 30), //mm24
                    backgroundColor: kprimaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 55,
                    alignment: Alignment.center,
                    child: const Text(
                      'Edit Profile',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 6),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const WelcomeScreen()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(horizontal: 30), //mm24
                    backgroundColor: kprimaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 55,
                    alignment: Alignment.center,
                    child: const Text(
                      'LOGOUT',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
