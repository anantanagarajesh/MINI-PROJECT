import 'package:flutter/material.dart';
import 'package:myapp/page-1/Requestdetails.dart';
import 'package:myapp/utils.dart';

class PatientDetails extends StatefulWidget {
  // Remove 'const' from the constructor since we have non-final fields
  const PatientDetails({super.key});

  @override
  // Correct the state class name
  _PatientDetailsState createState() => _PatientDetailsState();
}

class _PatientDetailsState extends State<PatientDetails> {
  bool _isToggled = false;
  @override
  Widget build(BuildContext context) {
    double baseWidth = 393.0000305176;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return SizedBox(
      width: double.infinity,
      child: SizedBox(
        // requeste3v (105:168)
        width: double.infinity,
        height: 844 * fem,
        child: Stack(
          children: [
            Positioned(
              // emailZwa (105:107)
              left: 36.5 * fem,
              top: 213.5 * fem,
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
                        color: const Color(0xffffffff),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // rectangle9F3i (105:108)
              left: 3 * fem,
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
              // group28MsS (105:112)
              left: 0 * fem,
              top: 0 * fem,
              child: Container(
                width: 393 * fem,
                height: 194 * fem,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(70 * fem),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      // rectangle18fNL (105:113)
                      left: 3.0051269531 * fem,
                      top: 0 * fem,
                      child: Align(
                        child: SizedBox(
                          width: 389.99 * fem,
                          height: 194 * fem,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(70 * fem),
                              color: const Color(0xffff3737),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // requestforbloodmRN (105:114)
                      left: 33.4975128174 * fem,
                      top: 51.0025634766 * fem,
                      child: Center(
                        child: Align(
                          child: SizedBox(
                            width: 314 * fem,
                            height: 83 * fem,
                            child: Text(
                              'Request for blood',
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
                    Positioned(
                      left: 31 * fem,
                      top: 43 * fem,
                      child: Align(
                        child: SizedBox(
                          width: 11.88 * fem,
                          height: 19.84 * fem,
                          child: TextButton(
                            onPressed: () {
                              // Navigate back to the previous page
                              Navigator.pop(context);
                            },
                            style: TextButton.styleFrom(
                              padding: EdgeInsets.zero,
                            ),
                            child: Image.asset(
                              'assets/page-1/images/vector-KN4.png',
                              width: 11.88 * fem,
                              height: 19.84 * fem,
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
              // frame30Lsn (105:115)
              left: 24 * fem,
              top: 225 * fem,
              child: SizedBox(
                width: 337 * fem,
                height: 336 * fem,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // group21Sfv (105:116)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 0 * fem, 34 * fem),
                      width: double.infinity,
                      height: 40 * fem,
                      decoration: BoxDecoration(
                        color: const Color(0xffd9d9d9),
                        borderRadius: BorderRadius.circular(20 * fem),
                      ),
                    ),
                    Container(
                      // group18ZVe (105:117)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 0 * fem, 34 * fem),
                      width: double.infinity,
                      height: 40 * fem,
                      decoration: BoxDecoration(
                        color: const Color(0xffd9d9d9),
                        borderRadius: BorderRadius.circular(20 * fem),
                      ),
                    ),
                    Container(
                      // group18tXv (105:118)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 0 * fem, 108 * fem),
                      width: double.infinity,
                      height: 40 * fem,
                      decoration: BoxDecoration(
                        color: const Color(0xffd9d9d9),
                        borderRadius: BorderRadius.circular(20 * fem),
                      ),
                    ),
                    Container(
                      // group18R24 (105:119)
                      padding: EdgeInsets.fromLTRB(
                          12 * fem, 14 * fem, 12 * fem, 6 * fem),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: const Color(0xffd9d9d9),
                        borderRadius: BorderRadius.circular(20 * fem),
                      ),
                      child: Align(
                        // vectorwm6 (105:120)
                        alignment: Alignment.centerLeft,
                        child: SizedBox(
                          width: 16 * fem,
                          height: 20 * fem,
                          child: Image.asset(
                            'assets/page-1/images/location.png',
                            width: 16 * fem,
                            height: 20 * fem,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              // group29Fmn (105:121)
              left: 27 * fem,
              top: 600 * fem,
              child: Container(
                padding: EdgeInsets.fromLTRB(
                    12 * fem, 4.5 * fem, 29.2 * fem, 4.5 * fem),
                width: 337 * fem,
                height: 40 * fem,
                decoration: BoxDecoration(
                  color: const Color(0xffd9d9d9),
                  borderRadius: BorderRadius.circular(20 * fem),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // typeyournameLoE (I105:121;56:8)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 208 * fem, 0 * fem),
                      child: Text(
                        '02/12/2022',
                        style: SafeGoogleFont(
                          'Inknut Antiqua',
                          fontSize: 12 * ffem,
                          fontWeight: FontWeight.w400,
                          height: 2.5775 * ffem / fem,
                          color: const Color(0xffffffff),
                        ),
                      ),
                    ),
                    // Container(
                    //   // autogroupd22y3he (9DStVUxd93s5zLS489D22Y)
                    //   margin: EdgeInsets.fromLTRB(
                    //       0 * fem, 0 * fem, 0 * fem, 6.16 * fem),
                    //   width: 19.8 * fem,
                    //   height: 19.84 * fem,
                    //   child: Image.asset(
                    //     'assets/page-1/images/auto-group-d22y.png',
                    //     width: 19.8 * fem,
                    //     height: 19.84 * fem,
                    //   ),
                    // ),
                  ],
                ),
              ),
            ),
            Positioned(
              // frame31jqN (105:123)
              left: 33 * fem,
              top: 190.5 * fem,
              child: SizedBox(
                width: 160 * fem,
                height: 413 * fem,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      // patientsnameeSY (105:124)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 0 * fem, 39 * fem),
                      child: Text(
                        'Patient’s Name',
                        style: SafeGoogleFont(
                          'Inknut Antiqua',
                          fontSize: 14 * ffem,
                          fontWeight: FontWeight.w400,
                          height: 2.5775 * ffem / fem,
                          color: const Color.fromARGB(255, 0, 0, 0),
                        ),
                      ),
                    ),
                    Container(
                      // attendeesnameVi4 (105:125)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 0 * fem, 39 * fem),
                      child: Text(
                        "Attendee’s Name",
                        style: SafeGoogleFont(
                          'Inknut Antiqua',
                          fontSize: 14 * ffem,
                          fontWeight: FontWeight.w400,
                          height: 2.5775 * ffem / fem,
                          color: const Color.fromARGB(255, 0, 0, 0),
                        ),
                      ),
                    ),
                    Container(
                      // phonenoZT2 (105:126)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 0 * fem, 1.5 * fem),
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
                    Container(
                      // xxxxxxxxxxqQY (105:132)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 0 * fem, 6.5 * fem),
                      child: Text(
                        '+91 -XXXXXXXXXX',
                        style: SafeGoogleFont(
                          'Inknut Antiqua',
                          fontSize: 12 * ffem,
                          fontWeight: FontWeight.w400,
                          height: 2.5775 * ffem / fem,
                          color: const Color(0xffffffff),
                        ),
                      ),
                    ),
                    Container(
                      // noofunitsrequiredjVv (105:127)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 0 * fem, 37 * fem),
                      child: Text(
                        'No. of units required',
                        style: SafeGoogleFont(
                          'Inknut Antiqua',
                          fontSize: 14 * ffem,
                          fontWeight: FontWeight.w400,
                          height: 2.5775 * ffem / fem,
                          color: const Color.fromARGB(255, 0, 0, 0),
                        ),
                      ),
                    ),
                    Container(
                      // locationFDN (105:128)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 0 * fem, 37 * fem),
                      child: Text(
                        'Location',
                        style: SafeGoogleFont(
                          'Inknut Antiqua',
                          fontSize: 14 * ffem,
                          fontWeight: FontWeight.w400,
                          height: 2.5775 * ffem / fem,
                          color: const Color.fromARGB(255, 0, 0, 0),
                        ),
                      ),
                    ),
                    Text(
                      // requireddateZUx (105:129)
                      'Required date',
                      style: SafeGoogleFont(
                        'Inknut Antiqua',
                        fontSize: 14 * ffem,
                        fontWeight: FontWeight.w400,
                        height: 2.5775 * ffem / fem,
                        color: const Color.fromARGB(255, 0, 0, 0),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              // criticalW9J (105:131)
              left: 37 * fem,
              top: 657.5 * fem,
              child: Align(
                child: SizedBox(
                  width: 59 * fem,
                  height: 37 * fem,
                  child: Text(
                    'Critical',
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
              // group23nsW (105:135)
              left: 24 * fem,
              top: 447 * fem,
              child: Container(
                padding:
                    EdgeInsets.fromLTRB(279 * fem, 0 * fem, 22 * fem, 0 * fem),
                width: 338 * fem,
                height: 40 * fem,
                decoration: BoxDecoration(
                  color: const Color(0xffd9d9d9),
                  borderRadius: BorderRadius.circular(20 * fem),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // line1fgQ (105:137)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 20 * fem, 0 * fem),
                      width: 1 * fem,
                      height: 40 * fem,
                      decoration: const BoxDecoration(
                        color: Color(0xff000000),
                      ),
                    ),
                    Container(
                      // vectorPsJ (105:136)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 6.81 * fem, 0 * fem, 0 * fem),
                      width: 16 * fem,
                      height: 9.36 * fem,
                      child: Image.asset(
                        'assets/page-1/images/vector-9ak.png',
                        width: 16 * fem,
                        height: 9.36 * fem,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              left: 319.6799316406 * fem,
              top: 661.4559326172 * fem,
              child: Align(
                child: SizedBox(
                  width: 30.69 * fem,
                  height: 16.86 * fem,
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        _isToggled = !_isToggled; // Toggle the state
                      });
                    },
                    child: Material(
                      borderRadius: BorderRadius.circular(
                          8.0 * fem), // Customizable border radius
                      color: _isToggled
                          ? Colors.red
                          : Colors.grey, // Change color based on toggle state
                      child: Center(
                        child: Text(
                          _isToggled
                              ? 'ON'
                              : 'OFF', // Display text based on toggle state
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12.0 * fem, // Customizable font size
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // frame33Cpk (105:149)
              left: 198 * fem,
              top: 711 * fem,
              child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  padding: EdgeInsets.zero,
                ),
                child: Container(
                  padding: EdgeInsets.fromLTRB(
                      10 * fem, 4.5 * fem, 10 * fem, 6.5 * fem),
                  width: 144 * fem,
                  height: 73 * fem,
                  child: Container(
                    // group97Rv (105:151)
                    width: double.infinity,
                    height: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20 * fem),
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          // rectangle14ruJ (105:152)
                          left: 0 * fem,
                          top: 5.5000591278 * fem,
                          child: Align(
                            child: SizedBox(
                              width: 124 * fem,
                              height: 51 * fem,
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
                          left: 16.4999084473 * fem,
                          top: 0 * fem,
                          child: Center(
                            child: Align(
                              child: SizedBox(
                                width: 91 * fem,
                                height: 62 * fem,
                                child: Material(
                                  color: Colors
                                      .transparent, // to avoid any additional coloring
                                  child: InkWell(
                                    onTap: () {
                                      Navigator.pop(context);
                                    },
                                    child: Center(
                                      child: Text(
                                        'Cancel',
                                        textAlign: TextAlign.center,
                                        style: SafeGoogleFont(
                                          'Inknut Antiqua',
                                          fontSize: 24 * ffem,
                                          fontWeight: FontWeight.w400,
                                          height: 2.5775 * ffem / fem,
                                          color: const Color(0xff000000),
                                        ),
                                      ),
                                    ),
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
            ),
            Positioned(
              left: 46 * fem,
              top: 720 * fem,
              child: TextButton(
                onPressed: () {
                  // Implement navigation logic here. Replace 'NextPage()' with the widget you want to navigate to.
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const RequestDetails()),
                  );
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
                      'Next',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        // Changed to TextStyle for simplicity
                        fontFamily: 'Inknut Antiqua', // Specify the font family
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
    );
  }
}
