import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Donors extends StatelessWidget {
  const Donors({super.key});

  Future<void> _saveBloodGroup(String bloodGroup) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('bloodGroup', bloodGroup);
  }

  Future<String> _getBloodGroup() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    print(prefs.getString('bloodGroup'));
    return prefs.getString('bloodGroup') ?? 'N/A';
  }

  Future<String> _getPhoneNumber(String emailId) async {
    var collection = FirebaseFirestore.instance.collection('DonorDetails');
    var docSnapshot = await collection.doc(emailId).get();
    if (docSnapshot.exists) {
      Map<String, dynamic> data = docSnapshot.data()!;
      // Assuming 'phoneNumber' is the field name in DonorDetails
      return data['PhoneNumber'] ?? 'N/A';
    }
    return 'N/A';
  }

  @override
  Widget build(BuildContext context) {
    double baseWidth = 390;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Donor Information'),
      ),
      body: StreamBuilder<QuerySnapshot>(
        stream: FirebaseFirestore.instance
            .collection('DonorBloodGroup')
            .snapshots(),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return Center(
              child: Text('Error: ${snapshot.error}'),
            );
          }

          if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
            return const Center(
              child: Text('No data found in the collection.'),
            );
          }

          return ListView.builder(
            itemCount: snapshot.data!.docs.length,
            itemBuilder: (context, index) {
              var document = snapshot.data!.docs[index];
              var donorData = document.data() as Map<String, dynamic>;

              // Extract blood group and user email
              String bloodGroup = donorData['bloodGroup'] ?? 'N/A';
              String userEmail = donorData['emailId'] ?? 'N/A';

              // Save bloodGroup to SharedPreferences
              _saveBloodGroup(bloodGroup);

              return Container(
                margin: const EdgeInsets.all(10),
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 243, 33, 58),
                  borderRadius: BorderRadius.circular(20 * fem),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Blood Group',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 5),
                    FutureBuilder(
                      future: _getBloodGroup(),
                      builder: (context, snapshot) {
                        return Text(
                          snapshot.data.toString(),
                          style: const TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                          ),
                        );
                      },
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'Donor Email',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      userEmail,
                      style: const TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'Phone Number',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 5),
                    FutureBuilder(
                      future: _getPhoneNumber(
                          userEmail), // Fetching the phone number
                      builder: (context, snapshot) {
                        if (snapshot.connectionState == ConnectionState.done) {
                          return Text(
                            snapshot.data.toString(),
                            style: const TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                            ),
                          );
                        } else {
                          return const CircularProgressIndicator();
                        }
                      },
                    ),
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }
}
// import 'package:flutter/material.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:shared_preferences/shared_preferences.dart';

// class Donors extends StatefulWidget {
//   @override
//   _DonorsState createState() => _DonorsState();
// }

// class _DonorsState extends State<Donors> {
//   String _bloodGroup = 'N/A';

//   @override
//   void initState() {
//     super.initState();
//     _loadBloodGroup();
//   }

//   Future<void> _loadBloodGroup() async {
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     setState(() {
//       _bloodGroup = prefs.getString('bloodGroup') ?? 'N/A';
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     double baseWidth = 390;
//      double fem = MediaQuery.of(context).size.width / baseWidth;
//    double ffem = fem * 0.97;
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Donor Information'),
//       ),
//       body: _bloodGroup == 'N/A'
//           ? Center(child: CircularProgressIndicator())
//           : StreamBuilder<QuerySnapshot>(
//               stream: FirebaseFirestore.instance
//                   .collection('DonorBloodGroup')
//                   .where('bloodGroup', isEqualTo: _bloodGroup)
//                   .snapshots(),
//               builder: (context, snapshot) {
//                 if (snapshot.hasError) {
//                   return Center(
//                     child: Text('Error: ${snapshot.error}'),
//                   );
//                 }

//                 if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
//                   return const Center(
//                     child: Text('No matching donors found.'),
//                   );
//                 }

//                 return ListView.builder(
//                   itemCount: snapshot.data!.docs.length,
//                   itemBuilder: (context, index) {
//                     var document = snapshot.data!.docs[index];
//                     var donorData = document.data() as Map<String, dynamic>;

//                     // Extract donor information
//                     String donorBloodGroup = donorData['bloodGroup'] ?? 'N/A';
//                     String userEmail = donorData['emailId'] ?? 'N/A';

//                     return Container(
//                       margin: const EdgeInsets.all(10),
//                       padding: const EdgeInsets.all(15),
//                       decoration: BoxDecoration(
//                         color: Color.fromARGB(255, 236, 99, 110),
//                         borderRadius: BorderRadius.circular(20*fem),
//                       ),
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Text(
//                             'Blood Group: $donorBloodGroup',
//                             style: TextStyle(
//                               fontWeight: FontWeight.bold,
//                               fontSize: 18,
//                               color: Colors.white,
//                             ),
//                           ),
//                           SizedBox(height: 10),
//                           Text(
//                             'Donor Email: $userEmail',
//                             style: TextStyle(
//                               fontSize: 16,
//                               color: Colors.white,
//                             ),
//                           ),
//                         ],
//                       ),
//                     );
//                   },
//                 );
//               },
//             ),
//     );
//   }
// }
