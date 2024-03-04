import 'package:flutter/material.dart';
import 'package:myapp/utils.dart';
import 'package:myapp/page-1/DonationPage.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DonorBG extends StatefulWidget {
  const DonorBG({super.key});

  @override
  _DonorBGState createState() => _DonorBGState();
}

class _DonorBGState extends State<DonorBG> {
  String? selectedBloodGroup;
  Widget bloodGroupButton(String bloodType) {
    double baseWidth = 391;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    bool isSelected = selectedBloodGroup == bloodType;
    return TextButton(
      onPressed: () {
        setState(() {
          selectedBloodGroup = isSelected ? null : bloodType;
        });
      },
      style: TextButton.styleFrom(
        padding: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20 * fem),
        ),
        backgroundColor:
            isSelected ? const Color(0xffff3737) : const Color(0xffd9d9d9),
      ),
      child: Container(
        width: 70 * fem,
        height: 70 * fem,
        alignment: Alignment.center,
        child: Text(
          bloodType,
          style: SafeGoogleFont(
            'Inknut Antiqua',
            fontSize: 32 * ffem,
            fontWeight: FontWeight.w400,
            color: isSelected ? Colors.white : const Color(0xff000000),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    double baseWidth = 391;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return SizedBox(
      width: double.infinity,
      child: SizedBox(
        // bloodgroupTFa (94:98)
        width: double.infinity,
        height: 844 * fem,
        child: Container(
          // group451H6 (94:97)
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(70 * fem),
          ),
          child: Stack(
            children: [
              Positioned(
                // rectangle4jit (37:12)
                left: 1 * fem,
                top: 0 * fem,
                child: Align(
                  child: SizedBox(
                    width: 390 * fem,
                    height: 844 * fem,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(70 * fem),
                        color: const Color(0xffffffff),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                // bloodqmv (17:7)
                left: 0 * fem,
                top: 0 * fem,
                child: Container(
                  padding:
                      EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 0 * fem),
                  width: 391 * fem,
                  height: 844 * fem,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(70 * fem),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        // autogroupud3iLig (9DSpGbzeqw87cZJqzSud3i)
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 0 * fem, 0 * fem, 119.5 * fem),
                        width: double.infinity,
                        height: 296 * fem,
                        child: Stack(
                          children: [
                            Positioned(
                              // rectangle4C8c (40:126)
                              left: 0 * fem,
                              top: 0 * fem,
                              child: Align(
                                child: SizedBox(
                                  width: 390 * fem,
                                  height: 296 * fem,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.circular(70 * fem),
                                      color: const Color(0xffff3737),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              left: 26 * fem,
                              top: 50.0593261719 * fem,
                              child: GestureDetector(
                                onTap: () {
                                  // Navigate back to the previous page
                                  Navigator.pop(context);
                                },
                                child: Align(
                                  child: SizedBox(
                                    width: 12 * fem,
                                    height: 21.02 * fem,
                                    child: TextButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      style: TextButton.styleFrom(
                                        padding: EdgeInsets.zero,
                                      ),
                                      child: Image.asset(
                                        'assets/page-1/images/vector-h3i.png',
                                        width: 12 * fem,
                                        height: 21.02 * fem,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              // bloodgroupAzY (39:75)
                              left: 77.5 * fem,
                              top: 111 * fem,
                              child: Center(
                                child: Align(
                                  child: SizedBox(
                                    width: 224 * fem,
                                    height: 83 * fem,
                                    child: Text(
                                      'Blood Group',
                                      textAlign: TextAlign.center,
                                      style: SafeGoogleFont(
                                        'Inknut Antiqua',
                                        fontSize: 32 * ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 2.5775 * ffem / fem,
                                        color: const Color(0xffffffff),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        // frame32G1z (90:245)
                        margin: EdgeInsets.fromLTRB(
                            20 * fem, 0 * fem, 20 * fem, 0 * fem),
                        width: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // group57zig (189:1553)
                              margin: EdgeInsets.fromLTRB(
                                  50 * fem, 0 * fem, 0 * fem, 0 * fem),
                              width: double.infinity,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // autogroupmqtnXic (9DSpd1aKNMrMyhuHAkmQTn)
                                    margin: EdgeInsets.fromLTRB(
                                        20 * fem, 0 * fem, 19 * fem, 0 * fem),
                                    width: double.infinity,
                                    height: 83 * fem,
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          // group1Fec (I189:1553;193:561)
                                          margin: EdgeInsets.fromLTRB(0 * fem,
                                              0 * fem, 0 * fem, 0 * fem),
                                          child: TextButton(
                                            onPressed: () {},
                                            style: TextButton.styleFrom(
                                              padding: EdgeInsets.zero,
                                            ),
                                            child: Container(
                                              width: 70 * fem,
                                              height: double.infinity,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        20 * fem),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Positioned(
                                top: 300 *
                                    fem, // You can adjust this value to move the buttons up
                                left: 0,
                                right: 0,
                                child: Container(
                                  // margin: EdgeInsets.fromLTRB(20 * fem, 0, 19 * fem, 0),
                                  child: Wrap(
                                    spacing:
                                        25, // Space between horizontal buttons
                                    runSpacing:
                                        15, // Space between lines of buttons
                                    children: [
                                      bloodGroupButton('A+'),
                                      bloodGroupButton('B+'),
                                      bloodGroupButton('O+'),
                                      bloodGroupButton('AB+'),
                                      bloodGroupButton('A-'),
                                      bloodGroupButton('B-'),
                                      bloodGroupButton('O-'),
                                      bloodGroupButton('AB-'),
                                    ],
                                  ),
                                )),
                            Container(
                              // group55MF2 (157:258)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 20 * fem, 0 * fem, 0 * fem),
                              width: double.infinity,
                              height: 83 * fem,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20 * fem),
                              ),
                              child: Stack(
                                children: [
                                  Positioned(
                                    top: 20 *
                                        fem, // Adjust the top property as needed to place the button
                                    bottom: 0 * fem, // This is an example value
                                    left: 50 *
                                        fem, // Center the button horizontally
                                    right: 50 * fem,
                                    child: ElevatedButton(
                                      onPressed: selectedBloodGroup != null
                                          ? () async {
                                              try {
                                                final SharedPreferences prefs =
                                                    await SharedPreferences
                                                        .getInstance();
                                                // Get the current user

                                                String userEmail = prefs
                                                    .getString('user_email')
                                                    .toString();

                                                print(userEmail);

                                                // User? user = FirebaseAuth
                                                //     .instance.currentUser;

                                                print("it is working");
                                                // Path to the user's document in Firestore
                                                DocumentReference userDoc =
                                                    FirebaseFirestore.instance
                                                        .collection(
                                                            'DonorBloodGroup')
                                                        .doc(userEmail);

                                                FirebaseFirestore.instance
                                                    .collection(
                                                        'DonorBloodGroup')
                                                    .doc(userEmail)
                                                    .set({
                                                      'bloodGroup':
                                                          selectedBloodGroup,
                                                      'emailId': userEmail,
                                                      // other fields if needed
                                                    })
                                                    .then((value) => print(
                                                        "Document successfully written!"))
                                                    .catchError((error) => print(
                                                        "Error writing document: $error"));

                                                // Update the user's profile with the selected blood group
                                                await userDoc.set(
                                                    {
                                                      'BloodGroup':
                                                          selectedBloodGroup,
                                                    },
                                                    SetOptions(
                                                        merge:
                                                            true)); // Merge true to update the document without overwriting other fields
                                                // Navigate to the DonationPage or show a success message

                                                Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (context) =>
                                                            const DonationPage()));
                                              } catch (e) {
                                                // Handle errors, e.g., show an error message
                                                print(
                                                    "Error updating blood group: $e");
                                              }
                                            }
                                          : null, // Button is disabled if no blood group is selected

                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: const Color(
                                            0xffff3737), // Button background color
                                        disabledBackgroundColor:
                                            const Color.fromARGB(255, 236, 135,
                                                135), // Button disabled color
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(20 * fem),
                                        ),
                                        padding: EdgeInsets.symmetric(
                                            vertical: 20 * fem),
                                      ),
                                      child: Text(
                                        'Donate',
                                        style: TextStyle(
                                          fontSize: 24 * ffem,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
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
    );
  }
}
