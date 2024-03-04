// import 'dart:js';
// //
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/material.dart';
// import 'package:myapp/page-1/donors-BqN.dart';
// import 'package:myapp/page-1/donors.dart';
// import 'package:myapp/utils.dart';
// import 'package:url_launcher/url_launcher.dart';
//
// class BloodRequest {
//   String hospitalName;
//   String doctorName;
//   // ...other fields
//
//   BloodRequest({this.hospitalName = '', this.doctorName = ''});
//
//   Map<String, dynamic> toJson() {
//     return {
//       'hospitalName': hospitalName,
//       'doctorName': doctorName,
//       // ...other fields
//     };
//   }
// }
//
// class HospitalDetails extends StatelessWidget {
//   final TextEditingController _hospitalNameController = TextEditingController();
//   final TextEditingController _doctorNameController = TextEditingController();
//   // Define a method to launch URLs
//   void _launchURL() async {
//     final Uri url = Uri.parse(
//         'https://www.google.com/maps'); // Parse the URL into a Uri object
//     if (await canLaunchUrl(url)) {
//       await launchUrl(url);
//     } else {
//       throw 'Could not launch $url';
//     }
//   }
//
//   void _submitRequest() async {
//     final bloodRequest = BloodRequest(
//       hospitalName: _hospitalNameController.text,
//       doctorName: _doctorNameController.text,
//       // ...other fields
//     );
//
//     try {
//       await FirebaseFirestore.instance
//           .collection('bloodRequests')
//           .add(bloodRequest.toJson());
//       print('Request submitted successfully');
//       Navigator.of(context as BuildContext)
//           .push(MaterialPageRoute(builder: (context) => Donors()));
//     } catch (e) {
//       print('Error submitting request: $e');
//       // Handle the error, show a snackbar or alert dialog
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     double baseWidth = 390.0000305176;
//     double fem = MediaQuery.of(context).size.width / baseWidth;
//     double ffem = fem * 0.97;
//
//     // Function to create text field decoration
//     InputDecoration textFieldDecoration(String label) {
//       return InputDecoration(
//         labelText: label,
//         fillColor: Color(0xffd9d9d9),
//         filled: true,
//         border: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(20 * fem),
//           borderSide: BorderSide.none,
//         ),
//         labelStyle: SafeGoogleFont(
//           'Inknut Antiqua',
//           fontSize: 20 * ffem,
//           fontWeight: FontWeight.w400,
//           height: 2.5775 * ffem / fem,
//           color: Color(0xff555555), // Changed to a darker color for visibility
//         ),
//       );
//     }
//
//     return SizedBox(
//       width: double.infinity,
//       child: SizedBox(
//         width: double.infinity,
//         height: 844 * fem,
//         child: Stack(
//           children: [
//             Positioned(
//               // rectangle10CzY (142:107)
//               left: 0 * fem,
//               top: 0 * fem,
//               child: Align(
//                 child: SizedBox(
//                   width: 390 * fem,
//                   height: 844 * fem,
//                   child: Material(
//                     borderRadius: BorderRadius.circular(70 * fem),
//                     color: Color(
//                         0xfffffefe), // Assuming this is the color you want for the material
//                     child: Container(
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(70 * fem),
//                         color: Color(0xfffffefe),
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//
//             Positioned(
//               left: 26 * fem,
//               top: 452 * fem,
//               child: Material(
//                 color: Colors
//                     .transparent, // Use a transparent color to maintain the image visibility
//                 child: InkWell(
//                   onTap: _launchURL, // Add the launch URL function here
//                   child: Image.asset(
//                     'assets/page-1/images/mask-group-E36.png',
//                     width: 344 * fem,
//                     height: 141 * fem,
//                   ),
//                 ),
//               ),
//             ),
//             Positioned(
//               // doctornameR6c (142:112)
//               left: 24 * fem,
//               top: 303 * fem,
//               child: Align(
//                 child: SizedBox(
//                   width: 146 * fem,
//                   height: 52 * fem,
//                   child: Text(
//                     'Doctor Name',
//                     style: SafeGoogleFont(
//                       'Inknut Antiqua',
//                       fontSize: 20 * ffem,
//                       fontWeight: FontWeight.w400,
//                       height: 2.5775 * ffem / fem,
//                       color: Color.fromARGB(255, 0, 0, 0),
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//             Positioned(
//               // hospitallocationWdr (142:121)
//               left: 24 * fem,
//               top: 400 * fem,
//               child: Align(
//                 child: SizedBox(
//                   width: 200 * fem,
//                   height: 52 * fem,
//                   child: Text(
//                     'Hospital Location',
//                     style: SafeGoogleFont(
//                       'Inknut Antiqua',
//                       fontSize: 20 * ffem,
//                       fontWeight: FontWeight.w400,
//                       height: 2.5775 * ffem / fem,
//                       color: Color.fromARGB(255, 0, 0, 0),
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//             Positioned(
//               // hospitalnameo7A (142:113)
//               left: 24 * fem,
//               top: 206.5 * fem,
//               child: Align(
//                 child: SizedBox(
//                   width: 165 * fem,
//                   height: 52 * fem,
//                   child: Text(
//                     'Hospital Name',
//                     style: SafeGoogleFont(
//                       'Inknut Antiqua',
//                       fontSize: 20 * ffem,
//                       fontWeight: FontWeight.w400,
//                       height: 2.5775 * ffem / fem,
//                       color: Color.fromARGB(255, 0, 0, 0),
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//             Positioned(
//               left: 26.5 * fem,
//               top: 257 * fem,
//               child: Material(
//                 elevation:
//                     0, // You can adjust this value for shadow effect if you want
//                 borderRadius: BorderRadius.circular(20 * fem),
//                 child: Container(
//                   width: 337 * fem,
//                   height: 46.94 * fem,
//                   child: TextField(
//                     controller: _hospitalNameController,
//                     decoration: textFieldDecoration('Hospital Name'),
//                   ),
//                 ),
//               ),
//             ),
//
//             // Replace Positioned container with a TextField for doctor name
//             Positioned(
//               left: 29 * fem,
//               top: 353 * fem,
//               child: Material(
//                 borderRadius: BorderRadius.circular(
//                     20 * fem), // Set border radius for Material
//                 color: Colors
//                     .transparent, // Assuming you want to keep the container color
//                 child: Container(
//                   width: 337 * fem,
//                   height: 46.94 * fem,
//                   child: TextField(
//                     controller: _doctorNameController,
//                     decoration: textFieldDecoration('Doctor Name'),
//                   ),
//                 ),
//               ),
//             ),
//
//             Positioned(
//               // group46Wfn (142:129)
//               left: 133 * fem,
//               top: 760 * fem,
//               child: TextButton(
//                 onPressed: () {
//                   _submitRequest;
//                   // Navigator.of(context)
//                   //     .push(MaterialPageRoute(builder: (context) => Donors()));
//                 },
//                 style: TextButton.styleFrom(
//                   padding: EdgeInsets.zero,
//                 ),
//                 child: Container(
//                   width: 124 * fem,
//                   height: 52 * fem,
//                   decoration: BoxDecoration(
//                     color: Color(0xffff3737),
//                     borderRadius: BorderRadius.circular(20 * fem),
//                   ),
//                   child: Center(
//                     child: Center(
//                       child: Text(
//                         'Request',
//                         textAlign: TextAlign.center,
//                         style: SafeGoogleFont(
//                           'Inknut Antiqua',
//                           fontSize: 20 * ffem,
//                           fontWeight: FontWeight.w400,
//                           height: 2.5775 * ffem / fem,
//                           color: Color(0xffffffff),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//             Positioned(
//               // group32Y6g (142:108)
//               left: 0 * fem,
//               top: 0 * fem,
//               child: Container(
//                 width: 390 * fem,
//                 height: 194 * fem,
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(70 * fem),
//                 ),
//                 child: Stack(
//                   children: [
//                     Positioned(
//                       // rectangle18d88 (142:109)
//                       left: 0.0051269531 * fem,
//                       top: 0 * fem,
//                       child: Align(
//                         child: SizedBox(
//                           width: 389.99 * fem,
//                           height: 194 * fem,
//                           child: Container(
//                             decoration: BoxDecoration(
//                               borderRadius: BorderRadius.circular(70 * fem),
//                               color: Color(0xffff3737),
//                             ),
//                           ),
//                         ),
//                       ),
//                     ),
//                     Positioned(
//                       // hospitaldetailsw8p (142:110)
//                       left: 46.9975128174 * fem,
//                       top: 51.2435913086 * fem,
//                       child: Center(
//                         child: Align(
//                           child: SizedBox(
//                             width: 287 * fem,
//                             height: 83 * fem,
//                             child: Text(
//                               'Hospital Details',
//                               textAlign: TextAlign.center,
//                               style: SafeGoogleFont(
//                                 'Inknut Antiqua',
//                                 fontSize: 32 * ffem,
//                                 fontWeight: FontWeight.w400,
//                                 height: 2.5775 * ffem / fem,
//                                 color: Color(0xffffffff),
//                               ),
//                             ),
//                           ),
//                         ),
//                       ),
//                     ),
//                     Positioned(
//                       // vectordXS (142:111)
//                       left: 36 * fem,
//                       top: 33 * fem,
//                       child: Align(
//                         child: SizedBox(
//                           width: 12 * fem,
//                           height: 20 * fem,
//                           child: TextButton(
//                             onPressed: () {
//                               Navigator.pop(context);
//                             },
//                             style: TextButton.styleFrom(
//                               padding: EdgeInsets.zero,
//                             ),
//                             child: Image.asset(
//                               'assets/page-1/images/vector-o1e.png',
//                               width: 12 * fem,
//                               height: 20 * fem,
//                             ),
//                           ),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'donors.dart';

class BloodRequest {
  String hospitalName;
  String doctorName;

  BloodRequest({this.hospitalName = '', this.doctorName = ''});

  Map<String, dynamic> toJson() {
    return {
      'hospitalName': hospitalName,
      'doctorName': doctorName,
    };
  }
}

class HospitalDetails extends StatelessWidget {
  final TextEditingController _hospitalNameController = TextEditingController();
  final TextEditingController _doctorNameController = TextEditingController();

  HospitalDetails({super.key});

  void _launchURL() async {
    final Uri url = Uri.parse('https://www.google.com/maps');
    if (await canLaunch(url.toString())) {
      await launch(url.toString());
    } else {
      throw 'Could not launch $url';
    }
  }

  void _submitRequest(BuildContext context) async {
    final bloodRequest = BloodRequest(
      hospitalName: _hospitalNameController.text,
      doctorName: _doctorNameController.text,
    );

    // try {
    //   await FirebaseFirestore.instance
    //       .collection('HospitalDetails')
    //       .add(bloodRequest.toJson());

    //   print('Request submitted successfully');
    //   Navigator.of(context)
    //       .push(MaterialPageRoute(builder: (context) => Donors()));
    // } catch (e) {
    //   print('Error submitting request: $e');
    //   // Handle the error, show a snackbar or alert dialog
    // }
    try {
      // Assuming bloodRequest is an object that has a 'hospitalName' field
      // and a toJson() method for serialization
      String hospitalName = bloodRequest.hospitalName;

      // Check if the hospital name is not empty and is a valid document ID
      if (hospitalName.isEmpty) {
        throw 'Hospital name cannot be empty';
      }

      // Set the document with the hospitalName as the ID
      await FirebaseFirestore.instance
          .collection('HospitalDetails')
          .doc(hospitalName) // This sets the hospital name as the document ID
          .set(bloodRequest.toJson());

      print('Request submitted successfully with hospital name as the ID');
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => Donors()));
    } catch (e) {
      print('Error submitting request: $e');

      // Show a Snackbar if the hospital name is empty
      if (e == 'Hospital name cannot be empty') {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Error: Hospital name cannot be empty.'),
            duration: Duration(seconds: 3),
          ),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double fem = screenWidth / 390.0;
    double ffem = fem * 0.97;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Hospital Details'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0 * fem),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hospital Name',
              style: TextStyle(fontSize: 20.0 * ffem),
            ),
            TextField(
              controller: _hospitalNameController,
              decoration: InputDecoration(
                hintText: 'Enter hospital name',
                filled: true,
                fillColor: const Color(0xffd9d9d9),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0 * fem),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            SizedBox(height: 20.0 * fem),
            Text(
              'Doctor Name',
              style: TextStyle(fontSize: 20.0 * ffem),
            ),
            TextField(
              controller: _doctorNameController,
              decoration: InputDecoration(
                hintText: 'Enter doctor name',
                filled: true,
                fillColor: const Color(0xffd9d9d9),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0 * fem),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            SizedBox(height: 20.0 * fem),
            InkWell(
              onTap: _launchURL,
              child: Image.asset(
                'assets/page-1/images/mask-group-E36.png',
                width: screenWidth - 40.0 * fem,
                height: 141.0 * fem,
              ),
            ),
            SizedBox(height: 20.0 * fem),
            ElevatedButton(
              onPressed: () {
                _submitRequest(context);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xffff3737),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0 * fem),
                ),
              ),
              child: SizedBox(
                width: screenWidth - 40.0 * fem,
                height: 52.0 * fem,
                child: Center(
                  child: Text(
                    'Request',
                    style: TextStyle(fontSize: 20.0 * ffem),
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
