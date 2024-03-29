import 'package:flutter/material.dart';
import 'package:myapp/utils.dart';
import 'package:myapp/page-1/Ailments.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class DonationPage extends StatefulWidget {
  const DonationPage({super.key});

  @override
  _DonationPageState createState() => _DonationPageState();
}

class _DonationPageState extends State<DonationPage> {
  // Declare your state variables here
  final _formKey = GlobalKey<FormState>();
  TextEditingController fullnameController = TextEditingController();
  final TextEditingController weightController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController donationdateController = TextEditingController();
  final TextEditingController ageController = TextEditingController();
  bool isButtonPressed1 = false;
  bool isButtonPressed2 = false;
  bool isButtonPressed3 = false;
  bool isButtonPressed4 = false;
  bool isButtonPressed5 = false;
  bool isButtonPressed6 = false;
  bool isButtonPressed7 = false;
  bool isButtonPressed8 = false;

  void _validateAge(BuildContext context) {
    final age = int.tryParse(ageController.text);
    if (age == null || age < 18 || age > 60) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Age must be between 18 and 60.')),
      );
    } else {
      // Age is valid
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Age is valid.')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    double baseWidth = 390;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return SizedBox(
      width: double.infinity,
      child: SizedBox(
        // donationsrt (122:162)
        width: double.infinity,
        height: 844 * fem,
        child: Stack(
          children: [
            Positioned(
              // emailQM2 (122:103)
              left: 63.5 * fem,
              top: 232.5 * fem,
              child: Center(
                child: Align(
                  child: SizedBox(
                    width: 65 * fem,
                    height: 52 * fem,
                    child: Text(
                      'Email',
                      textAlign: TextAlign.center,
                      style: SafeGoogleFont(
                        'Inknut Antiqua',
                        fontSize: 20 * ffem,
                        fontWeight: FontWeight.w400,
                        height: 2.5775 * ffem / fem,
                        color: const Color.fromARGB(255, 0, 0, 0),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // rectangle10skQ (122:104)
              left: 0 * fem,
              top: 0 * fem,
              child: Align(
                child: SizedBox(
                  width: 390 * fem,
                  height: 844 * fem,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(70 * fem),
                      color: const Color(0xfffffefe),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // frame25PTr (122:105)
              left: 30 * fem,
              top: 239 * fem,
              child: SizedBox(
                width: 337 * fem,
                height: 250 * fem,
                child: Stack(
                  children: [
                    Positioned(
                      // group186dA (122:106)
                      left: 0 * fem,
                      top: 0 * fem,
                      child: Material(
                        borderRadius: BorderRadius.circular(20 * fem),
                        color: const Color(0xffd9d9d9),
                        child: SizedBox(
                          width: 337 * fem,
                          height: 40 * fem,
                          child: TextField(
                            controller: fullnameController,
                            decoration: InputDecoration(
                              hintText: 'Type your name',
                              hintStyle: TextStyle(
                                color: Colors.grey, // Placeholder text color
                                fontSize: 12 *
                                    ffem, // You can adjust the size as needed
                              ),
                              filled: true,
                              fillColor: const Color(0xffd9d9d9),
                              contentPadding: EdgeInsets.fromLTRB(
                                  12 * fem, 4.5 * fem, 12 * fem, 4.5 * fem),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20 * fem),
                                borderSide: BorderSide.none,
                              ),
                            ),
                            style: SafeGoogleFont(
                              'Inknut Antiqua',
                              fontSize: 12 * ffem,
                              fontWeight: FontWeight.w400,
                              height: 2.5775 * ffem / fem,
                              color: const Color.fromARGB(255, 0, 0, 0),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // rectangle23LXW (122:107)
                      left: 0 * fem,
                      top: 70 * fem,
                      child: Align(
                        child: SizedBox(
                          width: 337 * fem,
                          height: 40 * fem,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20 * fem),
                              color: const Color(0xffd9d9d9),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // rectangle24SaY (122:108)
                      left: 0 * fem,
                      top: 140 * fem,
                      child: Align(
                        child: SizedBox(
                          width: 337 * fem,
                          height: 40 * fem,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20 * fem),
                              color: const Color(0xffd9d9d9),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // rectangle25MxQ (122:109)
                      left: 0 * fem,
                      top: 210 * fem,
                      child: Align(
                        child: SizedBox(
                          width: 337 * fem,
                          height: 40 * fem,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20 * fem),
                              color: const Color(0xffd9d9d9),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // xxxxxxxxxxUXE (122:110)
                      left: 12 * fem,
                      top: 147 * fem,
                      child: Align(
                        child: SizedBox(
                          width: 136 * fem,
                          height: 31 * fem,
                          child: Material(
                            color: Colors
                                .transparent, // Assuming you want to keep the background transparent
                            child: TextField(
                              controller: phoneController,
                              decoration: InputDecoration(
                                hintText: '+91-XXXXXXXXXX',
                                hintStyle: TextStyle(
                                  color: const Color.fromARGB(255, 98, 97, 97)
                                      .withOpacity(
                                          0.5), // Placeholder text color (adjust opacity as needed)
                                  fontSize: 12 * ffem,
                                ),
                                border: InputBorder
                                    .none, // No border to the TextField
                                contentPadding:
                                    EdgeInsets.zero, // Adjust padding if needed
                              ),

                              style: SafeGoogleFont(
                                'Inknut Antiqua',
                                fontSize: 12 * ffem,
                                fontWeight: FontWeight.w400,
                                height: 2.5775 * ffem / fem,
                                color: const Color.fromARGB(255, 0, 0, 0),
                              ),
                              keyboardType: TextInputType
                                  .phone, // Set keyboard type for phone input
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // mWL (122:111)
                      left: 13 * fem,
                      top: 216 * fem,
                      child: Align(
                        child: SizedBox(
                          width: 68 * fem,
                          height: 31 * fem,
                          child: Material(
                            color: Colors
                                .transparent, // Assuming you want to keep the background transparent
                            child: TextField(
                              controller: donationdateController,
                              decoration: InputDecoration(
                                hintText: '02/12/2022',
                                hintStyle: TextStyle(
                                  color: const Color.fromARGB(255, 100, 99, 99)
                                      .withOpacity(
                                          0.5), // Placeholder text color (adjust opacity as needed)
                                  fontSize: 12 * ffem,
                                ),
                                border: InputBorder
                                    .none, // No border to the TextField
                                contentPadding:
                                    EdgeInsets.zero, // Adjust padding if needed
                              ),
                              style: SafeGoogleFont(
                                'Inknut Antiqua',
                                fontSize: 12 * ffem,
                                fontWeight: FontWeight.w400,
                                height: 2.5775 * ffem / fem,
                                color: const Color.fromARGB(255, 0, 0, 0),
                              ),
                              keyboardType: TextInputType
                                  .datetime, // Set keyboard type for date input
                              // Since we don't have a controller and logic to handle date picking, this is just a simple TextField
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // enteryourweight4kL (122:112)
                      left: 7 * fem,
                      top: 77 * fem,
                      child: Center(
                        child: Align(
                          child: SizedBox(
                            width: 119 * fem,
                            height: 31 * fem,
                            child: Material(
                              borderRadius: BorderRadius.circular(
                                  20 * fem), // Adjust as needed for your design
                              color: Colors
                                  .transparent, // Assuming you want to keep the background transparent
                              child: TextField(
                                controller: weightController,
                                keyboardType: TextInputType
                                    .number, // Ensures numeric input for weight
                                decoration: InputDecoration(
                                  hintText: 'Enter weight',
                                  hintStyle: TextStyle(
                                    color: const Color.fromARGB(
                                            255, 107, 106, 106)
                                        .withOpacity(
                                            0.5), // Placeholder text color (adjust opacity as needed)
                                    fontSize: 12 * ffem,
                                  ),
                                  border: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.circular(20 * fem),
                                    borderSide: BorderSide.none,
                                  ),
                                  contentPadding: EdgeInsets.symmetric(
                                      horizontal: 10 * fem,
                                      vertical: 8 *
                                          fem), // Adjust padding to match your design
                                  filled: true,
                                  fillColor: const Color(
                                      0xffd9d9d9), // Background color of the field
                                ),
                                style: SafeGoogleFont(
                                  'Inknut Antiqua',
                                  fontSize: 12 * ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 2.5775 * ffem / fem,
                                  color: const Color.fromARGB(255, 0, 0, 0),
                                ),
                                // Since we don't have a controller and logic to handle the input, this is just a simple TextField
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // lastdonationdateYfW (122:120)
                      left: 0 * fem,
                      top: 177.5 * fem,
                      child: Align(
                        child: SizedBox(
                          width: 150 * fem,
                          height: 37 * fem,
                          child: Text(
                            'Last Donation Date',
                            style: SafeGoogleFont(
                              'Inknut Antiqua',
                              fontSize: 14 * ffem,
                              fontWeight: FontWeight.w400,
                              height: 2.5775 * ffem / fem,
                              color: const Color.fromARGB(255, 0, 0, 0),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // phonenoSkt (122:119)
                      left: 0 * fem,
                      top: 108.5 * fem,
                      child: Align(
                        child: SizedBox(
                          width: 77 * fem,
                          height: 37 * fem,
                          child: Text(
                            'Phone no.',
                            style: SafeGoogleFont(
                              'Inknut Antiqua',
                              fontSize: 14 * ffem,
                              fontWeight: FontWeight.w400,
                              height: 2.5775 * ffem / fem,
                              color: const Color.fromARGB(255, 0, 0, 0),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // weightY3E (122:118)
                      left: 0 * fem,
                      top: 38.5 * fem,
                      child: Align(
                        child: SizedBox(
                          width: 56 * fem,
                          height: 37 * fem,
                          child: Text(
                            'Weight',
                            style: SafeGoogleFont(
                              'Inknut Antiqua',
                              fontSize: 14 * ffem,
                              fontWeight: FontWeight.w400,
                              height: 2.5775 * ffem / fem,
                              color: const Color.fromARGB(255, 0, 0, 0),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              // locationEwe (122:113)
              left: 43 * fem,
              top: 617.5 * fem,
              child: Center(
                child: Align(
                  child: SizedBox(
                    width: 69 * fem,
                    height: 37 * fem,
                    child: Text(
                      'Location',
                      textAlign: TextAlign.center,
                      style: SafeGoogleFont(
                        'Inknut Antiqua',
                        fontSize: 14 * ffem,
                        fontWeight: FontWeight.w400,
                        height: 2.5775 * ffem / fem,
                        color: const Color.fromARGB(255, 0, 0, 0),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // ageLjn (122:121)
              left: 30 * fem,
              top: 501.5 * fem,
              child: Align(
                child: SizedBox(
                  width: 34 * fem,
                  height: 37 * fem,
                  child: Text(
                    'Age ',
                    style: SafeGoogleFont(
                      'Inknut Antiqua',
                      fontSize: 14 * ffem,
                      fontWeight: FontWeight.w400,
                      height: 2.5775 * ffem / fem,
                      color: const Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // maskgroupqwS (122:122)
              left: 27 * fem,
              top: 652 * fem,
              child: Align(
                child: SizedBox(
                  width: 344 * fem,
                  height: 104 * fem,
                  child: GestureDetector(
                    onTap: () async {
                      const urlString =
                          'https://www.google.com/maps/@12.9322864,77.5733936,15z?entry=ttu'; // Replace with your desired URL
                      final Uri url = Uri.parse(urlString);
                      if (await canLaunchUrl(url)) {
                        await launchUrl(url);
                      } else {
                        throw 'Could not launch $urlString';
                      }
                    },
                    child: Image.asset(
                      'assets/page-1/images/mask-group.png',
                      width: 344 * fem,
                      height: 104 * fem,
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // frame26rLk (122:126)
              left: 0 * fem,
              top: 0 * fem,
              child: Container(
                padding:
                    EdgeInsets.fromLTRB(16 * fem, 47 * fem, 16 * fem, 47 * fem),
                width: 390 * fem,
                height: 194 * fem,
                decoration: BoxDecoration(
                  color: const Color(0xffff3737),
                  borderRadius: BorderRadius.circular(70 * fem),
                ),
                child: SizedBox(
                  // frame34ZW4 (122:127)
                  width: double.infinity,
                  height: double.infinity,
                  child: Stack(
                    children: [
                      Positioned(
                        // blooddonordetailsKEL (122:128)
                        left: 0 * fem,
                        top: 17 * fem,
                        child: Center(
                          child: Align(
                            child: SizedBox(
                              width: 358 * fem,
                              height: 83 * fem,
                              child: Text(
                                'Blood Donor Details',
                                textAlign: TextAlign.center,
                                style: SafeGoogleFont(
                                  'Inknut Antiqua',
                                  fontSize: 28 * ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 2.5775 * ffem / fem,
                                  color: const Color(0xffffffff),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 16 * fem,
                        top: 0 * fem,
                        child: GestureDetector(
                          onTap: () {
                            // Navigate back to the previous page
                            Navigator.pop(context);
                          },
                          child: Align(
                            child: SizedBox(
                              width: 12 * fem,
                              height: 20 * fem,
                              child: TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                style: TextButton.styleFrom(
                                  padding: EdgeInsets.zero,
                                ),
                                child: Image.asset(
                                  'assets/page-1/images/vector-wzt.png',
                                  width: 12 * fem,
                                  height: 20 * fem,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              // bloodgroupVHE (122:130)
              left: 30 * fem,
              top: 534.5 * fem,
              child: Align(
                child: SizedBox(
                  width: 98 * fem,
                  height: 37 * fem,
                  child: Text(
                    'Blood Group',
                    style: SafeGoogleFont(
                      'Inknut Antiqua',
                      fontSize: 14 * ffem,
                      fontWeight: FontWeight.w400,
                      height: 2.5775 * ffem / fem,
                      color: const Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // group46b5N (122:131)
              left: 43 * fem,
              top: 565 * fem,
              child: SizedBox(
                width: 43 * fem,
                height: 37 * fem,
                child: Stack(
                  children: [
                    Positioned(
                      // rectangle337pQ (I122:131;65:109)
                      left: 0 * fem,
                      top: 9 * fem,
                      child: Align(
                        child: SizedBox(
                          width: 43 * fem,
                          height: 18 * fem,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20 * fem),
                              color: const Color(0xffd9d9d9),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // a3CG (I122:131;65:110)
                      left: 11.5 * fem,
                      top: 0 * fem,
                      child: Center(
                        child: Align(
                          child: SizedBox(
                            width: 20 * fem,
                            height: 37 * fem,
                            child: Text(
                              'A+',
                              textAlign: TextAlign.center,
                              style: SafeGoogleFont(
                                'Inknut Antiqua',
                                fontSize: 14 * ffem,
                                fontWeight: FontWeight.w400,
                                height: 2.5775 * ffem / fem,
                                color: const Color(0xff000000),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              // group47iZJ (122:132)
              left: 143 * fem,
              top: 560 * fem,
              child: SizedBox(
                width: 43 * fem,
                height: 37 * fem,
                child: Stack(
                  children: [
                    Positioned(
                      // rectangle33rQc (I122:132;65:109)
                      left: 0 * fem,
                      top: 9 * fem,
                      child: Align(
                        child: SizedBox(
                          width: 43 * fem,
                          height: 18 * fem,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20 * fem),
                              color: const Color(0xffd9d9d9),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // amGg (I122:132;65:110)
                      left: 12 * fem,
                      top: 0 * fem,
                      child: Center(
                        child: Align(
                          child: SizedBox(
                            width: 19 * fem,
                            height: 37 * fem,
                            child: Text(
                              'B+',
                              textAlign: TextAlign.center,
                              style: SafeGoogleFont(
                                'Inknut Antiqua',
                                fontSize: 14 * ffem,
                                fontWeight: FontWeight.w400,
                                height: 2.5775 * ffem / fem,
                                color: const Color(0xff000000),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              // group48FBr (122:133)
              left: 234 * fem,
              top: 560 * fem,
              child: SizedBox(
                width: 43 * fem,
                height: 37 * fem,
                child: Stack(
                  children: [
                    Positioned(
                      // rectangle33qfr (I122:133;65:109)
                      left: 0 * fem,
                      top: 9 * fem,
                      child: Align(
                        child: SizedBox(
                          width: 43 * fem,
                          height: 18 * fem,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20 * fem),
                              color: const Color(0xffd9d9d9),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // aMu6 (I122:133;65:110)
                      left: 11 * fem,
                      top: 0 * fem,
                      child: Center(
                        child: Align(
                          child: SizedBox(
                            width: 21 * fem,
                            height: 37 * fem,
                            child: Text(
                              'O+',
                              textAlign: TextAlign.center,
                              style: SafeGoogleFont(
                                'Inknut Antiqua',
                                fontSize: 14 * ffem,
                                fontWeight: FontWeight.w400,
                                height: 2.5775 * ffem / fem,
                                color: const Color(0xff000000),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              // group49Tx8 (122:134)
              left: 321 * fem,
              top: 560 * fem,
              child: SizedBox(
                width: 43 * fem,
                height: 37 * fem,
                child: Stack(
                  children: [
                    Positioned(
                      // rectangle33bYY (I122:134;65:109)
                      left: 0 * fem,
                      top: 9 * fem,
                      child: Align(
                        child: SizedBox(
                          width: 43 * fem,
                          height: 18 * fem,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20 * fem),
                              color: const Color(0xffd9d9d9),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // aWfW (I122:134;65:110)
                      left: 6 * fem,
                      top: 0 * fem,
                      child: Center(
                        child: Align(
                          child: SizedBox(
                            width: 31 * fem,
                            height: 37 * fem,
                            child: Text(
                              'AB+',
                              textAlign: TextAlign.center,
                              style: SafeGoogleFont(
                                'Inknut Antiqua',
                                fontSize: 14 * ffem,
                                fontWeight: FontWeight.w400,
                                height: 2.5775 * ffem / fem,
                                color: const Color(0xff000000),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              // group50DZv (122:135)
              left: 42 * fem,
              top: 593 * fem,
              child: SizedBox(
                width: 43 * fem,
                height: 37 * fem,
                child: Stack(
                  children: [
                    Positioned(
                      left: 0 * fem,
                      top: 9 * fem,
                      child: Align(
                        child: SizedBox(
                          width: 43 * fem,
                          height: 18 * fem,
                          child: ElevatedButton(
                            onPressed: () {
                              // Toggle the button state on each click
                              setState(() {
                                isButtonPressed1 = !isButtonPressed1;
                              });
                              print("Button pressed!\n");
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: isButtonPressed1
                                  ? Colors.red
                                  : const Color(0xffd9d9d9), // Background color
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20 * fem),
                              ),
                            ),
                            child: Text(
                              'A+',
                              style: TextStyle(
                                // Replace SafeGoogleFont with TextStyle for simplicity
                                fontFamily: 'Inknut Antiqua',
                                fontSize: 14 * ffem,
                                fontWeight: FontWeight.w400,
                                height: 2.5775 * ffem / fem,
                                color: const Color(0xff000000),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // aFWc (I122:135;65:110)
                      left: 11.5 * fem,
                      top: 0 * fem,
                      child: Center(
                        child: Align(
                          child: SizedBox(
                            width: 20 * fem,
                            height: 37 * fem,
                            child: Text(
                              'A-',
                              textAlign: TextAlign.center,
                              style: SafeGoogleFont(
                                'Inknut Antiqua',
                                fontSize: 14 * ffem,
                                fontWeight: FontWeight.w400,
                                height: 2.5775 * ffem / fem,
                                color: const Color(0xff000000),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              // group50DZv (122:135)
              left: 143 * fem,
              top: 593 * fem,
              child: SizedBox(
                width: 43 * fem,
                height: 37 * fem,
                child: Stack(
                  children: [
                    Positioned(
                      left: 0 * fem,
                      top: 9 * fem,
                      child: Align(
                        child: SizedBox(
                          width: 43 * fem,
                          height: 18 * fem,
                          child: ElevatedButton(
                            onPressed: () {
                              // Toggle the button state on each click
                              setState(() {
                                isButtonPressed6 = !isButtonPressed6;
                              });
                              print("Button pressed!\n");
                            },
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20 * fem),
                              ),
                              backgroundColor: isButtonPressed6
                                  ? Colors.red
                                  : const Color(0xffd9d9d9),
                            ),
                            child: Text(
                              'B-',
                              style: SafeGoogleFont(
                                'Inknut Antiqua',
                                fontSize: 14 * ffem,
                                fontWeight: FontWeight.w400,
                                height: 2.5775 * ffem / fem,
                                color: const Color(0xff000000),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // aFWc (I122:135;65:110)
                      left: 11.5 * fem,
                      top: 0 * fem,
                      child: Center(
                        child: Align(
                          child: SizedBox(
                            width: 20 * fem,
                            height: 37 * fem,
                            child: Text(
                              'B-',
                              textAlign: TextAlign.center,
                              style: SafeGoogleFont(
                                'Inknut Antiqua',
                                fontSize: 14 * ffem,
                                fontWeight: FontWeight.w400,
                                height: 2.5775 * ffem / fem,
                                color: const Color(0xff000000),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              // group526fe (122:137)
              left: 234 * fem,
              top: 593 * fem,
              child: SizedBox(
                width: 43 * fem,
                height: 37 * fem,
                child: Stack(
                  children: [
                    Positioned(
                      // rectangle33Rhv (I122:137;65:109)
                      left: 0 * fem,
                      top: 9 * fem,
                      child: Align(
                        child: SizedBox(
                          width: 43 * fem,
                          height: 18 * fem,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20 * fem),
                              color: const Color(0xffd9d9d9),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // axC4 (I122:137;65:110)
                      left: 11 * fem,
                      top: 0 * fem,
                      child: Center(
                        child: Align(
                          child: SizedBox(
                            width: 21 * fem,
                            height: 37 * fem,
                            child: Text(
                              'O-',
                              textAlign: TextAlign.center,
                              style: SafeGoogleFont(
                                'Inknut Antiqua',
                                fontSize: 14 * ffem,
                                fontWeight: FontWeight.w400,
                                height: 2.5775 * ffem / fem,
                                color: const Color(0xff000000),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              // group50DZv (122:135)
              left: 321 * fem,
              top: 593 * fem,
              child: SizedBox(
                width: 43 * fem,
                height: 37 * fem,
                child: Stack(
                  children: [
                    Positioned(
                      left: 0 * fem,
                      top: 9 * fem,
                      child: Align(
                        child: SizedBox(
                          width: 43 * fem,
                          height: 18 * fem,
                          child: ElevatedButton(
                            onPressed: () {
                              // Toggle the button state on each click
                              setState(() {
                                isButtonPressed8 = !isButtonPressed8;
                              });
                              print("Button pressed!\n");
                            },
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20 * fem),
                              ),
                              backgroundColor: isButtonPressed8
                                  ? Colors.red
                                  : const Color(0xffd9d9d9),
                            ),
                            child: Text(
                              'AB-',
                              style: SafeGoogleFont(
                                'Inknut Antiqua',
                                fontSize: 14 * ffem,
                                fontWeight: FontWeight.w400,
                                height: 2.5775 * ffem / fem,
                                color: const Color(0xff000000),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // aFWc (I122:135;65:110)
                      left: 11.5 * fem,
                      top: 0 * fem,
                      child: Center(
                        child: Align(
                          child: SizedBox(
                            width: 31 * fem,
                            height: 37 * fem,
                            child: Text(
                              'AB-',
                              textAlign: TextAlign.center,
                              style: SafeGoogleFont(
                                'Inknut Antiqua',
                                fontSize: 14 * ffem,
                                fontWeight: FontWeight.w400,
                                height: 2.5775 * ffem / fem,
                                color: const Color(0xff000000),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              // group31n4c (122:140)
              left: 78 * fem,
              top: 502.2902832031 * fem,
              child: SizedBox(
                width: 95 * fem,
                height: 38.25 * fem,
                child: Stack(
                  children: [
                    Positioned(
                      // rectangle337Mn (I122:140;65:109)
                      left: 0 * fem,
                      top: 0 * fem,
                      child: Align(
                        child: SizedBox(
                          width: 95 * fem,
                          height: 37.42 * fem,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20 * fem),
                              color: const Color(0xffd9d9d9),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 17.3656005859 * fem,
                      top: 3.2097167969 * fem,
                      child: Align(
                        child: SizedBox(
                          width: 60 * fem,
                          height: 31 * fem,
                          child: Material(
                            color: Colors
                                .transparent, // Set the Material color to transparent to maintain the design
                            child: TextFormField(
                              controller: ageController,
                              style: TextStyle(
                                fontFamily: 'Inknut Antiqua',
                                fontSize: 12 * ffem,
                                fontWeight: FontWeight.w400,
                                color: Colors.grey, // Text color
                              ),
                              decoration: const InputDecoration(
                                hintText: "15-70",
                                border:
                                    InputBorder.none, // Removes the underline
                                contentPadding:
                                    EdgeInsets.zero, // Adjusts the padding
                                // You might want to adjust the padding or other styles to match your design
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              left: 133 * fem,
              top: 780 * fem,
              child: TextButton(
                onPressed: () async {
                  try {
                    final SharedPreferences prefs =
                        await SharedPreferences.getInstance();
                    // Get the current user's email from SharedPreferences
                    String userEmail = prefs.getString('user_email').toString();

                    print(userEmail);

                    print("it is working");
                    // Reference to the user's document in Firestore
                    DocumentReference userDoc = FirebaseFirestore.instance
                        .collection('DonorDetails')
                        .doc(userEmail);

                    // Collect additional information from the form
                    String fullname = fullnameController
                        .text; // Assuming you have a TextEditingController for fullname
                    String weight = weightController
                        .text; // Assuming you have a TextEditingController for weight
                    String phoneNumber = phoneController
                        .text; // Assuming you have a TextEditingController for phone number
                    String donationDate = donationdateController
                        .text; // Assuming you have a TextEditingController for donationDate
                    String age = ageController
                        .text; // Assuming you have a TextEditingController for age

                    // Save the collected information to Firestore
                    FirebaseFirestore.instance
                        .collection('DonorDetails')
                        .doc(userEmail)
                        .set(
                            {
                              'Fullname': fullname,
                              'EmailId': userEmail,
                              'Weight': weight,
                              'PhoneNumber': phoneNumber,
                              'LastDonationDate': donationDate,
                              'Age': age,
                              // Assuming selectedBloodGroup is already defined
                            },
                            SetOptions(
                                merge:
                                    true)) // Merge true to update the document without overwriting other fields
                        .then(
                            (value) => print("Document successfully written!"))
                        .catchError(
                            (error) => print("Error writing document: $error"));

                    // Navigate to the DonationPage or show a success message
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Ailments()));
                  } catch (e) {
                    // Handle errors, e.g., show an error message
                    print("Error updating donor details: $e");
                  }
                },
                style: TextButton.styleFrom(
                  padding: EdgeInsets.zero,
                ),
                child: Container(
                  width: 124 * fem,
                  height: 52 * fem,
                  decoration: BoxDecoration(
                    color: const Color(0xffff3737),
                    borderRadius: BorderRadius.circular(20 * fem),
                  ),
                  child: Center(
                    child: Text(
                      'Save',
                      textAlign: TextAlign.center,
                      style: SafeGoogleFont(
                        'Inknut Antiqua',
                        fontSize: 20 * ffem,
                        fontWeight: FontWeight.w400,
                        height: 2.5775 * ffem / fem,
                        color: const Color(0xffffffff),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // fullnamekp4 (122:117)
              left: 32 * fem,
              top: 195.5 * fem,
              child: Align(
                child: SizedBox(
                  width: 79 * fem,
                  height: 37 * fem,
                  child: Text(
                    'Full Name',
                    style: SafeGoogleFont(
                      'Inknut Antiqua',
                      fontSize: 14 * ffem,
                      fontWeight: FontWeight.w400,
                      height: 2.5775 * ffem / fem,
                      color: const Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
