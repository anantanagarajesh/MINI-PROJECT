import 'package:flutter/material.dart';
import 'package:myapp/utils.dart';
import 'package:myapp/page-1/RecieveBG.dart';
import 'package:myapp/page-1/Admin.dart';
import 'package:myapp/page-1/DonorBG.dart';

class OccupationPage extends StatefulWidget {
  const OccupationPage({super.key});

  @override
  _OccupationPageState createState() => _OccupationPageState();
}

class _OccupationPageState extends State<OccupationPage> {
  bool _isButtonPressed1 = false;
  bool _isButtonPressed2 = false;
  bool _isButtonPressed3 = false;
  @override
  Widget build(BuildContext context) {
    double baseWidth = 390;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return SizedBox(
      width: double.infinity,
      child: TextButton(
        // occupationt9S (98:98)
        onPressed: () {},
        style: TextButton.styleFrom(
          padding: EdgeInsets.zero,
        ),
        child: Container(
          padding: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 286 * fem),
          width: double.infinity,
          decoration: BoxDecoration(
            color: const Color(0xffffffff),
            borderRadius: BorderRadius.circular(70 * fem),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                // group31a2G (94:107)
                margin:
                    EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 143.2 * fem),
                padding: EdgeInsets.fromLTRB(
                    31 * fem, 42.5 * fem, 49 * fem, 28.27 * fem),
                width: double.infinity,
                height: 194.77 * fem,
                decoration: BoxDecoration(
                  color: const Color(0xffff3737),
                  borderRadius: BorderRadius.circular(0 * fem),
                ),
                child: Center(
                  // whatdescribesyouthebestTbr (94:110)
                  child: Center(
                    child: SizedBox(
                      child: Container(
                        constraints: BoxConstraints(
                          maxWidth: 310 * fem,
                        ),
                        child: Text(
                          'What describes you the best?',
                          textAlign: TextAlign.center,
                          style: SafeGoogleFont(
                            'Inknut Antiqua',
                            fontSize: 24 * ffem,
                            fontWeight: FontWeight.w400,
                            height: 2.5775 * ffem / fem,
                            color: const Color(0xffffffff),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                // frame468T6 (168:204)
                margin:
                    EdgeInsets.fromLTRB(26 * fem, 0 * fem, 27 * fem, 0 * fem),
                child: TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.zero,
                  ),
                  child: Container(
                    padding: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 0 * fem, 9.03 * fem),
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // autogrouppqdwDjS (9DSyLLte2QNxgTvD4tpqDW)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 0 * fem, 25 * fem),
                          width: double.infinity,
                          height: 52 * fem,
                          child: Stack(
                            children: [
                              Positioned(
                                // component3xBE (I168:204;168:152)
                                left: 0 * fem,
                                top: 2.0307693481 * fem,
                                child: TextButton(
                                  onPressed: () {
                                    setState(() {
                                      _isButtonPressed1 =
                                          !_isButtonPressed1; // Toggle the button state
                                    });
                                  },
                                  style: TextButton.styleFrom(
                                    padding: EdgeInsets.zero,
                                  ),
                                  child: Container(
                                    padding: EdgeInsets.fromLTRB(11 * fem,
                                        13 * fem, 11 * fem, 13.94 * fem),
                                    width: 337 * fem,
                                    height: 46.94 * fem,
                                    decoration: BoxDecoration(
                                      color: _isButtonPressed1
                                          ? const Color.fromARGB(
                                              255, 67, 218, 67)
                                          : const Color(
                                              0xffff3737), // Change color based on flag
                                      borderRadius:
                                          BorderRadius.circular(20 * fem),
                                    ),
                                    child: Align(
                                      // ellipse3Rac (I168:204;168:152;94:113)
                                      alignment: Alignment.centerLeft,
                                      child: SizedBox(
                                        width: 20 * fem,
                                        height: 20 * fem,
                                        child: Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10 * fem),
                                            color: const Color(0xffffffff),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 43 * fem,
                                top: 0 * fem,
                                child: GestureDetector(
                                  onTap: () {
                                    // Navigate to the desired page when "Patient" is pressed
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            const RecieveBG(), // Replace 'PatientPage' with the actual class name
                                      ),
                                    );
                                  },
                                  child: Align(
                                    child: SizedBox(
                                      width: 81 * fem,
                                      height: 52 * fem,
                                      child: Text(
                                        'Patient',
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
                            ],
                          ),
                        ),
                        Container(
                          // autogroupln8kdRn (9DSyRLkK3wHvHEdnTYLn8k)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 0 * fem, 30 * fem),
                          width: double.infinity,
                          height: 52 * fem,
                          child: Stack(
                            children: [
                              Positioned(
                                // component8mH6 (I168:204;168:150)
                                left: 0 * fem,
                                top: 5.0307693481 * fem,
                                child: TextButton(
                                  onPressed: () {
                                    setState(() {
                                      _isButtonPressed2 =
                                          !_isButtonPressed2; // Toggle the button state
                                    });
                                  },
                                  style: TextButton.styleFrom(
                                    padding: EdgeInsets.zero,
                                  ),
                                  child: Container(
                                    padding: EdgeInsets.fromLTRB(11 * fem,
                                        13 * fem, 11 * fem, 13.94 * fem),
                                    width: 337 * fem,
                                    height: 46.94 * fem,
                                    decoration: BoxDecoration(
                                      color: _isButtonPressed2
                                          ? const Color.fromARGB(
                                              255, 67, 218, 67)
                                          : const Color(
                                              0xffff3737), // Change color based on flag
                                      borderRadius:
                                          BorderRadius.circular(20 * fem),
                                    ),
                                    child: Align(
                                      // ellipse34GC (I168:204;168:150;94:113)
                                      alignment: Alignment.centerLeft,
                                      child: SizedBox(
                                        width: 20 * fem,
                                        height: 20 * fem,
                                        child: Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10 * fem),
                                            color: const Color(0xffffffff),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 43 * fem,
                                top: 0 * fem,
                                child: GestureDetector(
                                  onTap: () {
                                    // Navigate to the 'Donors' page
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const DonorBG()), // Replace 'DonorsPage' with the actual class name
                                    );
                                  },
                                  child: Align(
                                    child: SizedBox(
                                      width: 70 * fem,
                                      height: 52 * fem,
                                      child: Text(
                                        'Donor',
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
                            ],
                          ),
                        ),
                        SizedBox(
                          // autogroupjkunJAY (9DSyWFmno1bCHbQXveJKuN)
                          width: double.infinity,
                          height: 52 * fem,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0 * fem,
                                top: 3.0307693481 * fem,
                                child: TextButton(
                                  onPressed: () {
                                    setState(() {
                                      _isButtonPressed3 =
                                          !_isButtonPressed3; // Toggle the button state
                                    });
                                  },
                                  style: TextButton.styleFrom(
                                    padding: EdgeInsets.zero,
                                  ),
                                  child: Container(
                                    padding: EdgeInsets.fromLTRB(11 * fem,
                                        13 * fem, 11 * fem, 13.94 * fem),
                                    width: 337 * fem,
                                    height: 46.94 * fem,
                                    decoration: BoxDecoration(
                                      color: _isButtonPressed3
                                          ? const Color.fromARGB(
                                              255, 67, 218, 67)
                                          : const Color(
                                              0xffff3737), // Change color based on flag
                                      borderRadius:
                                          BorderRadius.circular(20 * fem),
                                    ),
                                    child: Align(
                                      alignment: Alignment.centerLeft,
                                      child: SizedBox(
                                        width: 20 * fem,
                                        height: 20 * fem,
                                        child: Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10 * fem),
                                            color: const Color(0xffffffff),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              // Positioned(
                              //   // component7dic (I168:204;168:151)
                              //   left: 0 * fem,
                              //   top: 3.0307693481 * fem,
                              //   child: TextButton(
                              //     onPressed: () {},
                              //     style: TextButton.styleFrom(
                              //       padding: EdgeInsets.zero,
                              //     ),
                              //     child: Container(
                              //       padding: EdgeInsets.fromLTRB(11 * fem,
                              //           13 * fem, 11 * fem, 13.94 * fem),
                              //       width: 337 * fem,
                              //       height: 46.94 * fem,
                              //       decoration: BoxDecoration(
                              //         color: Color(0xffff3737),
                              //         borderRadius:
                              //             BorderRadius.circular(20 * fem),
                              //       ),
                              //       child: Align(
                              //         // ellipse36s6 (I168:204;168:151;94:113)
                              //         alignment: Alignment.centerLeft,
                              //         child: SizedBox(
                              //           width: 20 * fem,
                              //           height: 20 * fem,
                              //           child: Container(
                              //             decoration: BoxDecoration(
                              //               borderRadius:
                              //                   BorderRadius.circular(10 * fem),
                              //               color: Color(0xffffffff),
                              //             ),
                              //           ),
                              //         ),
                              //       ),
                              //     ),
                              //   ),
                              // ),
                              Positioned(
                                // adminq3z (I168:204;168:154)
                                left: 43 * fem,
                                top: 0 * fem,
                                child: GestureDetector(
                                  onTap: () {
                                    // Navigate to the 'Donors' page
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              Admin()), // Replace 'DonorsPage' with the actual class name
                                    );
                                  },
                                  child: Align(
                                    child: SizedBox(
                                      width: 100 * fem,
                                      height: 52 * fem,
                                      child: Text(
                                        'Admin',
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
                            ],
                          ),
                        ),
                      ],
                    ),
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
