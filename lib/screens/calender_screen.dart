import 'package:flutter/material.dart';
import 'package:football_app/widgets/categories.dart';
import 'package:football_app/widgets/calender_Match.dart';

// Mock data for matches categorized by age group
const matches = {
  "Senior": [
    {
      "awayLogo": "assets/images/WB.OUED-RHIOU.png",
      "awayTitle": "WB.ORhiou",
      "homeLogo": "assets/images/RMB.MATMAR.png",
      "homeTitle": "RMB.Matmar",
      "date": "30 Dec",
      "time": "06:30",
      "week": "week 1",
      "isFavorite": true,
    },
    {
      "awayLogo": "assets/images/RC-KALAA.png",
      "awayTitle": "RC-KALAA",
      "homeLogo": "assets/images/OM.RELIZANE.png",
      "homeTitle": "OM.Relizane",
      "date": "02 jui",
      "time": "04:30",
      "week": "week 2",
      "isFavorite": false,
    },
    {
      "awayLogo": "assets/images/CRB.Sidi_.Med_.Benaouda.png",
      "awayTitle": "CRB.S.Med.Benaouda",
      "homeLogo": "assets/images/J SIDI LAZREG.png",
      "homeTitle": "J SIDI LAZREG",
      "date": "02 Dec",
      "time": "07:30",
      "week": "week 3",
      "isFavorite": false,
    },
    {
      "awayLogo": "assets/images/CRB.HAMADNA.png",
      "awayTitle": "CRB.HAMADNA",
      "homeLogo": "assets/images/OM.RELIZANE.png",
      "homeTitle": "OM.Relizane",
      "date": "12 may",
      "time": "04:00",
      "week": "week 1",
      "isFavorite": false,
    },
    {
      "awayLogo": "assets/images/AR .AMMI MOUSSA.png",
      "awayTitle": "AR.AmiMousa",
      "homeLogo": "assets/images/AR.AIN-TARIk.png",
      "homeTitle": "AR.AIN-TARIK",
      "date": "12 jan",
      "time": "07:30",
      "week": "week 3",
      "isFavorite": false,
    },
    // Add more matches...
  ],
  "Under 19": [
    {
      "awayLogo": "assets/images/CRB.HAMADNA.png",
      "awayTitle": "CRB.HAMADNA",
      "homeLogo": "assets/images/CRB.OUARIZANE.png",
      "homeTitle": "CRB.OUARIZANE",
      "date": "1 Jan",
      "time": "04:30",
      "week": "week 1",
      "isFavorite": false,
    },
    {
      "awayLogo": "assets/images/RC-KALAA.png",
      "awayTitle": "RC-KALAA",
      "homeLogo": "assets/images/MB.BELHACEL.png",
      "homeTitle": "MB.BELHACEL",
      "date": "15 fev",
      "time": "04:30",
      "week": "week 3",
      "isFavorite": false,
    },
    {
      "awayLogo": "assets/images/CRB.OUARIZANE.png",
      "awayTitle": "CRB.OUARIZANE",
      "homeLogo": "assets/images/RMB.MATMAR.png",
      "homeTitle": "RMB.MATMAR",
      "date": "14 Jan",
      "time": "07:30",
      "week": "week 1",
      "isFavorite": false,
    },
    {
      "awayLogo": "assets/images/CRB.HAMADNA.png",
      "awayTitle": "CRB.HAMADNA",
      "homeLogo": "assets/images/WB.OUED-RHIOU.png",
      "homeTitle": "WB.OUED-RHIOU",
      "date": "1 Jan",
      "time": "04:30",
      "week": "week 1",
      "isFavorite": false,
    },
  ],
  "Under 17": [
    {
      "awayLogo": "assets/images/OM.RELIZANE.png",
      "awayTitle": "OM.RELIZANE",
      "homeLogo": "assets/images/AR .AMMI MOUSSA.png",
      "homeTitle": "AR .AMMI MOUSSA",
      "date": "1 Jan",
      "time": "04:30",
      "week": "week 1",
      "isFavorite": false,
    },
    {
      "awayLogo": "assets/images/CRB.HAMADNA.png",
      "awayTitle": "CRB.HAMADNA",
      "homeLogo": "assets/images/CRB.OUARIZANE.png",
      "homeTitle": "CRB.OUARIZANE",
      "date": "11 may",
      "time": "04:30",
      "week": "week 3",
      "isFavorite": false,
    },
    {
      "awayLogo": "assets/images/OM.RELIZANE.png",
      "awayTitle": "OM.RELIZANE",
      "homeLogo": "assets/images/J SIDI LAZREG.png",
      "homeTitle": "J SIDI LAZREG",
      "date": "13 Jan",
      "time": "07:30",
      "week": "week 2",
      "isFavorite": false,
    },
    {
      "awayLogo": "assets/images/CRB.HAMADNA.png",
      "awayTitle": "CRB.HAMADNA",
      "homeLogo": "assets/images/WB.OUED-RHIOU.png",
      "homeTitle": "WB.OUED-RHIOU",
      "date": "1 Jan",
      "time": "04:30",
      "week": "week 1",
      "isFavorite": false,
    },
  ],
  "Under 15": [
    {
      "awayLogo": "assets/images/IRB Sidi Khateb.png",
      "awayTitle": "IRB Sidi Khateb",
      "homeLogo": "assets/images/WB.OUED-RHIOU.png",
      "homeTitle": "WB.OUED-RHIOU",
      "date": "1 Jan",
      "time": "04:30",
      "week": "week 1",
      "isFavorite": false,
    },
    {
      "awayLogo": "assets/images/RC-KALAA.png",
      "awayTitle": "RC-KALAA",
      "homeLogo": "assets/images/MB.BELHACEL.png",
      "homeTitle": "MB.BELHACEL",
      "date": "1 Jan",
      "time": "04:30",
      "week": "week 1",
      "isFavorite": false,
    },
    {
      "awayLogo": "assets/images/AR.AIN-TARIk.png",
      "awayTitle": "AR.AIN-TARIk",
      "homeLogo": "assets/images/CRB.OUARIZANE.png",
      "homeTitle": "CRB.OUARIZANE",
      "date": "11 may",
      "time": "04:30",
      "week": "week 3",
      "isFavorite": false,
    },
    {
      "awayLogo": "assets/images/OM.RELIZANE.png",
      "awayTitle": "OM.RELIZANE",
      "homeLogo": "assets/images/J SIDI LAZREG.png",
      "homeTitle": "J SIDI LAZREG",
      "date": "13 Jan",
      "time": "07:30",
      "week": "week 2",
      "isFavorite": false,
    },
    {
      "awayLogo": "assets/images/AR .AMMI MOUSSA.png",
      "awayTitle": "AR .AMMI MOUSSA",
      "homeLogo": "assets/images/IRB Sidi Khateb.png",
      "homeTitle": "IRB Sidi Khateb",
      "date": "1 Jan",
      "time": "04:30",
      "week": "week 1",
      "isFavorite": false,
    },
  ],
};

class CalenderHomeScreen extends StatefulWidget {
  const CalenderHomeScreen({Key? key}) : super(key: key);

  @override
  State<CalenderHomeScreen> createState() => _CalenderHomeScreenState();
}

class _CalenderHomeScreenState extends State<CalenderHomeScreen> {
  String currentCat = "Senior";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // the AppBar
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        title: const Text(
          "Calender",
          style: TextStyle(color: Colors.orange),
        ),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(1), //mmm16
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Categories",
                    style: TextStyle(
                      fontSize: 26.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Categories(
                    currentCat: currentCat,
                    onCategorySelected: (category) {
                      setState(() {
                        currentCat = category;
                      });
                    },
                  ),
                  const SizedBox(height: 20), // Add spacing here
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 15), //mmmm20
                    child: ListView(
                      shrinkWrap: true,
                      primary: false,
                      physics: const NeverScrollableScrollPhysics(),
                      children: matches[currentCat]!.map<Widget>((match) {
                        return calenderMatch(
                          awayLogo: match["awayLogo"] as String,
                          awayTitle: match["awayTitle"] as String,
                          homeLogo: match["homeLogo"] as String,
                          homeTitle: match["homeTitle"] as String,
                          date: match["date"] as String,
                          time: match["time"] as String,
                          week: match["week"] as String,
                          isFavorite: match["isFavorite"] as bool,
                        );
                      }).toList(),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
