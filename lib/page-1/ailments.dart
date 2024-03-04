import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:myapp/page-1/Thanks.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Ailments extends StatefulWidget {
  const Ailments({super.key});

  @override
  _AilmentsState createState() => _AilmentsState();
}

class _AilmentsState extends State<Ailments> {
  final _formKey = GlobalKey<FormState>();

  // State variables to store yes/no answers as strings for easier Firestore storage
  Map<String, String> responses = {
    'hasAnaemia': 'NO',
    'hasThyroid': 'NO',
    'hasAidsHIV': 'NO',
    'hasHepatitis': 'NO',
    'hadCardiacArrest': 'NO',
    'takesMedication': 'NO',
  };
  String bloodPressure = '';

  Future<void> saveDetails() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    String userEmail = prefs.getString('user_email').toString();

    bool isEligible = checkEligibility();

    if (isEligible) {
      await FirebaseFirestore.instance
          .collection('UserHealthDetails')
          .doc(userEmail)
          .set({
        'bloodPressure': bloodPressure,
        ...responses,
      });
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => Thanks()));
    } else {
      showNotEligibleDialog();
    }
    }

  bool checkEligibility() {
    // Check if any of the responses is 'YES'
    return !responses.containsValue('YES');
  }

  void showNotEligibleDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Not Eligible to Donate'),
          content:
              const Text('You are not eligible to donate based on your responses.'),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('OK'),
            ),
          ],
        );
      },
    );
  }

  Widget yesNoQuestion(String question, String key) {
    return Card(
      elevation: 2.0,
      margin: const EdgeInsets.all(8.0),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(question),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('YES'),
                Radio<String>(
                  value: 'YES',
                  groupValue: responses[key],
                  onChanged: (value) {
                    setState(() {
                      responses[key] = value!;
                    });
                  },
                  activeColor: Colors.red,
                ),
                const Text('NO'),
                Radio<String>(
                  value: 'NO',
                  groupValue: responses[key],
                  onChanged: (value) {
                    setState(() {
                      responses[key] = value!;
                    });
                  },
                  activeColor: Colors.red,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Other Details'),
        backgroundColor: Colors.red,
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Blood Pressure',
                  hintText: 'Low/Normal/High',
                  border: OutlineInputBorder(),
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                ),
                onSaved: (value) => bloodPressure = value ?? '',
                validator: (value) => value == null || value.isEmpty
                    ? 'Please enter your blood pressure status'
                    : null,
              ),
              yesNoQuestion('Are you suffering from Anaemia?', 'hasAnaemia'),
              yesNoQuestion('Are you suffering from Thyroid?', 'hasThyroid'),
              yesNoQuestion('Are you suffering from AIDS/HIV?', 'hasAidsHIV'),
              yesNoQuestion(
                  'Are you suffering from Hepatitis B or C?', 'hasHepatitis'),
              yesNoQuestion(
                  'Did you have a cardiac arrest in past?', 'hadCardiacArrest'),
              yesNoQuestion('Do you take medications for any ailments?',
                  'takesMedication'),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors
                        .red, // Use onPrimary for text color with Flutter < 2.0
                    padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                  ),
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      _formKey.currentState!.save();
                      saveDetails();
                    }
                  },
                  child: const Text('Save'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
