import 'package:flutter/material.dart';
import 'package:myapp/page-1/HospitalDetails.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class RequestDetails extends StatefulWidget {
  const RequestDetails({super.key});

  @override
  _HospitalState createState() => _HospitalState();
}

class _HospitalState extends State<RequestDetails> {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final TextEditingController _patientNameController = TextEditingController();
  final TextEditingController _attendeeNameController = TextEditingController();
  final TextEditingController _phoneNumberController = TextEditingController();
  final TextEditingController _locationController = TextEditingController();

  String _selectedUnit = '1';
  bool _isCritical = false;
  final TextEditingController _dateController = TextEditingController();

  @override
  void dispose() {
    _dateController.dispose();
    super.dispose();
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2024), // Change this to your required start date
      lastDate: DateTime(2030), // Change this to your required end date
    );
    if (picked != null && picked != DateTime.now()) {
      setState(() {
        _dateController.text = "${picked.toLocal()}".split(' ')[
            0]; // Formats the selected date and assigns it to the text field controller
      });
    }
  }

  void _navigateBack() {
    Navigator.pop(context);
  }

  Future<void> _submitRequest() async {
    //   try {
    //     String attendeeNameKey = _attendeeNameController.text.trim();
    //     if (attendeeNameKey.isEmpty) {
    //       throw 'Attendee name cannot be empty';
    //     }
    //     await _firestore.collection("requests").add({
    //       'patient_name': _patientNameController.text,
    //       'attendee_name': _attendeeNameController.text,
    //       'phone_number': _phoneNumberController.text,
    //       'units_required': _selectedUnit,
    //       'location': _locationController.text,
    //       'required_date': _dateController.text,
    //       'is_critical': _isCritical,
    //       // Add other fields as required
    //     });

    //     // Navigator.of(context)
    //     //     .push(MaterialPageRoute(builder: (context) => HospitalDetails()));
    //     // Navigator.push(
    //     //   context,
    //     //   MaterialPageRoute(
    //     //       builder: (context) =>
    //     //           HospitalDetails()), // Replace with your target page
    //     // );
    //     print('Request submitted successfully');
    //   } catch (e) {
    //     print('Error submitting request: $e');
    //     // Handle the error, perhaps show a snackbar/message to the user
    //   }

    try {
      String PatientName = _patientNameController.text.trim();

      // Check if attendeeName is empty or not suitable as a document ID
      if (PatientName.isEmpty) {
        throw 'Attendee name cannot be empty';
      }

      // Firestore document IDs should not contain certain characters
      // You might want to include additional logic to ensure that attendeeName is a valid document ID

      DocumentReference docRef =
          _firestore.collection("PatientDetails").doc(PatientName);

      // Check if a document with this ID already exists
      var docSnapshot = await docRef.get();
      if (docSnapshot.exists) {
        // Handle the case where a document with this ID already exists
        throw 'A request for this attendee already exists';
      }

      // If not, create a new document with attendeeName as the ID
      await docRef.set({
        'patient_name': PatientName,
        'attendee_name': _attendeeNameController.text,
        'phone_number': _phoneNumberController.text,
        'units_required': _selectedUnit,
        'location': _locationController.text,
        'required_date': _dateController.text,
        'is_critical': _isCritical,
        // Add other fields as required
      });

      print('Request submitted successfully with attendee name as the ID');
    } catch (e) {
      print('Error submitting request: $e');
      // Handle the error, show a snackbar or alert dialog
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Request for Blood'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: _navigateBack,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              TextField(
                controller: _patientNameController,
                decoration: const InputDecoration(
                  labelText: "Patient's Name",
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 16),
              TextField(
                controller: _attendeeNameController,
                decoration: const InputDecoration(
                  labelText: "Attendee's Name",
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 16),
              TextField(
                controller: _phoneNumberController,
                decoration: const InputDecoration(
                  labelText: "Phone no.",
                  border: OutlineInputBorder(),
                  prefixText: '+91 ',
                ),
                keyboardType: TextInputType.phone,
              ),
              const SizedBox(height: 16),
              DropdownButtonFormField<String>(
                decoration: const InputDecoration(
                  labelText: 'No. of units required',
                  border: OutlineInputBorder(),
                ),
                value: _selectedUnit,
                items: ['1', '2', '3', '4', '5'].map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
                onChanged: (newValue) {
                  setState(() {
                    _selectedUnit = newValue!;
                  });
                },
              ),
              const SizedBox(height: 16),
              TextField(
                controller: _locationController,
                decoration: const InputDecoration(
                  labelText: "Location",
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 16),
              TextField(
                controller: _dateController,
                decoration: const InputDecoration(
                  labelText: "Required Date",
                  border: OutlineInputBorder(),
                  suffixIcon: Icon(Icons.calendar_today),
                ),
                readOnly: true, // Prevents keyboard from appearing
                onTap: () =>
                    _selectDate(context), // Call the date picker on tap
              ),
              const SizedBox(height: 16),
              SwitchListTile(
                title: const Text('Critical'),
                value: _isCritical,
                onChanged: (bool value) {
                  setState(() {
                    _isCritical = value;
                  });
                },
                secondary: Icon(
                  Icons.priority_high,
                  color: _isCritical
                      ? const Color.fromARGB(255, 243, 66, 53)
                      : Colors.grey,
                ),
              ),
              const SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () async {
                        // Call the `_submitRequest` function before navigating.
                        await _submitRequest();

                        // Navigate to the next page.
                        Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (context) => HospitalDetails()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red,
                        padding: const EdgeInsets.symmetric(vertical: 16),
                      ),
                      child: const Text('Next'),
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: OutlinedButton(
                      onPressed: _navigateBack,
                      style: OutlinedButton.styleFrom(
                        foregroundColor: Colors.red,
                        padding: const EdgeInsets.symmetric(vertical: 16),
                      ),
                      child: const Text('Cancel'),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
// import 'package:flutter/material.dart';
// import 'package:myapp/utils.dart';

// class Hospital extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     double baseWidth = 390.0000305176;
//     double fem = MediaQuery.of(context).size.width / baseWidth;
//     double ffem = fem * 0.97;
//     return Scaffold(
//       body: SizedBox(
//         width: double.infinity,
//         height: 844 * fem,
//         child: Stack(
//           children: [
//             // ... your existing code ...

//             // Replace rectangle1966G with a TextField for hospital name
//             Positioned(
//               left: 26.5 * fem,
//               top: 257 * fem,
//               child: Container(
//                 width: 337 * fem,
//                 height: 46.94 * fem,
//                 padding: EdgeInsets.symmetric(horizontal: 12 * fem),
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(20 * fem),
//                   color: Color(0xffd9d9d9),
//                 ),
//                 child: TextField(
//                   decoration: InputDecoration(
//                     border: InputBorder.none,
//                     hintText: 'Hospital Name',
//                     hintStyle: TextStyle(
//                       fontSize: 20 * ffem,
//                       color: Color.fromARGB(255, 0, 0, 0).withOpacity(0.5),
//                     ),
//                   ),
//                   style: TextStyle(
//                     fontSize: 20 * ffem,
//                     color: Color.fromARGB(255, 0, 0, 0),
//                   ),
//                 ),
//               ),
//             ),

//             // Replace rectangle20oFa with a TextField for doctor name
//             Positioned(
//               left: 29 * fem,
//               top: 353 * fem,
//               child: Container(
//                 width: 337 * fem,
//                 height: 46.94 * fem,
//                 padding: EdgeInsets.symmetric(horizontal: 12 * fem),
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(20 * fem),
//                   color: Color(0xffd9d9d9),
//                 ),
//                 child: TextField(
//                   decoration: InputDecoration(
//                     border: InputBorder.none,
//                     hintText: 'Doctor Name',
//                     hintStyle: TextStyle(
//                       fontSize: 20 * ffem,
//                       color: Color.fromARGB(255, 0, 0, 0).withOpacity(0.5),
//                     ),
//                   ),
//                   style: TextStyle(
//                     fontSize: 20 * ffem,
//                     color: Color.fromARGB(255, 0, 0, 0),
//                   ),
//                 ),
//               ),
//             ), //SizedBox(
//             //   width: double.infinity,
//             //   child: SizedBox(
//             //     // hospitalUHr (142:172)
//             //     width: double.infinity,
//             //     height: 844 * fem,
//             //     child: Stack(
//             //       children: [
//             //         Positioned(
//             //           // rectangle10CzY (142:107)
//             //           left: 0 * fem,
//             //           top: 0 * fem,
//             //           child: Align(
//             //             child: SizedBox(
//             //               width: 390 * fem,
//             //               height: 844 * fem,
//             //               child: Container(
//             //                 decoration: BoxDecoration(
//             //                   borderRadius: BorderRadius.circular(70 * fem),
//             //                   color: Color(0xfffffefe),
//             //                 ),
//             //               ),
//             //             ),
//             //           ),
//             //         ),
//             Positioned(
//               // maskgroupihz (142:122)
//               left: 26 * fem,
//               top: 452 * fem,
//               child: Align(
//                 child: SizedBox(
//                   width: 344 * fem,
//                   height: 141 * fem,
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
//             // Positioned(
//             //   // rectangle1966G (142:114)
//             //   left: 26.5 * fem,
//             //   top: 257 * fem,
//             //   child: Align(
//             //     child: SizedBox(
//             //       width: 337 * fem,
//             //       height: 46.94 * fem,
//             //       child: Container(
//             //         decoration: BoxDecoration(
//             //           borderRadius: BorderRadius.circular(20 * fem),
//             //           color: Color(0xffd9d9d9),
//             //         ),
//             //       ),
//             //     ),
//             //   ),
//             // ),
//             // Positioned(
//             //   // rectangle20oFa (142:117)
//             //   left: 29 * fem,
//             //   top: 353 * fem,
//             //   child: Align(
//             //     child: SizedBox(
//             //       width: 337 * fem,
//             //       height: 46.94 * fem,
//             //       child: Container(
//             //         decoration: BoxDecoration(
//             //           borderRadius: BorderRadius.circular(20 * fem),
//             //           color: Color(0xffd9d9d9),
//             //         ),
//             //       ),
//             //     ),
//             //   ),
//             // ),
//             Positioned(
//               // group46Wfn (142:129)
//               left: 133 * fem,
//               top: 760 * fem,
//               child: TextButton(
//                 onPressed: () {},
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
//                     // Positioned(
//                     //   // vectordXS (142:111)
//                     //   left: 36 * fem,
//                     //   top: 33 * fem,
//                     //   child: Align(
//                     //     child: SizedBox(
//                     //       width: 12 * fem,
//                     //       height: 20 * fem,
//                     //       child: TextButton(
//                     //         onPressed: () {},
//                     //         style: TextButton.styleFrom(
//                     //           padding: EdgeInsets.zero,
//                     //         ),
//                     //         child: Image.asset(
//                     //           'assets/page-1/images/vector-o1e.png',
//                     //           width: 12 * fem,
//                     //           height: 20 * fem,
//                     //         ),
//                     //       ),
//                     //     ),
//                     //   ),
//                     // ),
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
