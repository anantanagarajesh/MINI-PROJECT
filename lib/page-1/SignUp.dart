import 'package:flutter/material.dart';
import 'package:myapp/utils.dart';
import 'package:myapp/page-1/login.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  bool _isPasswordVisible = false;

  void _togglePasswordVisibility() {
    setState(() {
      _isPasswordVisible = !_isPasswordVisible;
    });
  }

  String? _confirmPasswordValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please confirm your password';
    } else if (value != _passwordController.text) {
      return 'Passwords do not match';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    double baseWidth = 390;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return SingleChildScrollView(
      child: Material(
        child: Form(
          key: _formKey,
          child: SizedBox(
            width: double.infinity,
            child: SizedBox(
              // signupowr (90:248)
              width: double.infinity,
              height: 844 * fem,
              child: Stack(
                children: [
                  Positioned(
                    // rectangle1237S (39:32)
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
                    // password8ua (84:35)
                    left: 24 * fem,
                    top: 297.9692306519 * fem,
                    child: Align(
                      child: SizedBox(
                        width: 105 * fem,
                        height: 52 * fem,
                        child: Text(
                          'Password',
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
                  Positioned(
                    // phonenoBcx (87:33)
                    left: 29 * fem,
                    top: 492 * fem,
                    child: Align(
                      child: SizedBox(
                        width: 110 * fem,
                        height: 52 * fem,
                        child: Text(
                          'Phone no.',
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
                  Positioned(
                    // confirmpasswordeFe (84:38)
                    left: 23 * fem,
                    top: 396 * fem,
                    child: Align(
                      child: SizedBox(
                        width: 202 * fem,
                        height: 52 * fem,
                        child: Text(
                          'Confirm Password',
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
                  Positioned(
                    // emailiWQ (84:32)
                    left: 24 * fem,
                    top: 201.4710063934 * fem,
                    child: Align(
                      child: SizedBox(
                        width: 65 * fem,
                        height: 52 * fem,
                        child: Text(
                          'Email',
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
                  Positioned(
                    // rectangle18QPE (84:31)
                    left: 0 * fem,
                    top: 0 * fem,
                    child: Align(
                      child: SizedBox(
                        width: 390 * fem,
                        height: 194.77 * fem,
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
                    left: 120.5 * fem,
                    top: 60 * fem,
                    child: Center(
                      child: Align(
                        child: SizedBox(
                          width: 134 * fem,
                          height: 83 * fem,
                          child: Text(
                            'Sign Up',
                            textAlign: TextAlign.center,
                            style: SafeGoogleFont(
                              'Inknut Antiqua',
                              fontSize: 26 * ffem,
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
                    top: 48 * fem,
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
                              print("going back");
                            },
                            style: TextButton.styleFrom(
                              padding: EdgeInsets.zero,
                            ),
                            child: Image.asset(
                              'assets/page-1/images/vector-bS4.png',
                              width: 12 * fem,
                              height: 20 * fem,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // rectangle19RxY (84:33)
                    left: 26.5 * fem,
                    top: 252 * fem,
                    child: Align(
                      child: SizedBox(
                        width: 337 * fem,
                        height: 46.94 * fem,
                        child: Material(
                          borderRadius: BorderRadius.circular(20 * fem),
                          elevation:
                              2, // Optional: Adds a subtle shadow for depth (remove if not needed)
                          child: TextFormField(
                            controller: emailController,
                            keyboardType: TextInputType
                                .emailAddress, // Optimizes the keyboard for email input
                            decoration: InputDecoration(
                              hintText:
                                  'example@gmail.com', // Placeholder text for email
                              filled:
                                  true, // Fill the field with a background color
                              fillColor: const Color(
                                  0xffd9d9d9), // Background color for the input field
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20 * fem),
                                borderSide: BorderSide
                                    .none, // Removes the default underline border
                              ),
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 20 * fem,
                                  vertical:
                                      12 * fem), // Padding inside the field
                            ),
                            style: TextStyle(
                              fontFamily: 'Inknut Antiqua',
                              fontSize: 20 * ffem,
                              fontWeight: FontWeight.w400,
                              color: Colors.black, // Text color for the input
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter your email';
                              } else if (!RegExp(r'\S+@\S+\.\S+')
                                  .hasMatch(value)) {
                                return 'Please enter a valid email';
                              }
                              return null;
                            },
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // rectangle20aix (84:36)
                    left: 24 * fem,
                    top: 349 * fem,
                    child: Align(
                      child: SizedBox(
                        width: 337 * fem,
                        height: 46.94 * fem,
                        child: Material(
                          borderRadius: BorderRadius.circular(20 * fem),
                          elevation:
                              2, // Optional: Adds a subtle shadow for depth (remove if not needed)
                          child: TextFormField(
                            controller: _passwordController,
                            obscureText:
                                !_isPasswordVisible, // Ensures the text is hidden for password input
                            decoration: InputDecoration(
                              hintText:
                                  'Password', // Placeholder text for password
                              filled:
                                  true, // Fill the field with a background color
                              fillColor: const Color(
                                  0xffd9d9d9), // Background color for the input field
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20 * fem),
                                borderSide: BorderSide
                                    .none, // Removes the default underline border
                              ),
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 20 * fem,
                                  vertical:
                                      12 * fem), // Padding inside the field
                              suffixIcon: IconButton(
                                icon: Icon(
                                  _isPasswordVisible
                                      ? Icons.visibility
                                      : Icons.visibility_off,
                                ), // Toggle visibility icon
                                onPressed: _togglePasswordVisibility,
                              ),
                            ),
                            style: TextStyle(
                              fontFamily:
                                  'Inknut Antiqua', // Specify your font family
                              fontSize: 20 * ffem,
                              fontWeight: FontWeight.w400,
                              color: Colors.black, // Text color for the input
                            ),
                            validator: (password) {
                              if (password == null || password.isEmpty) {
                                return 'Password required';
                              }
                              //password length should be greater than 6
                              if (password.length < 6) {
                                return 'Password must be longer than 6 characters';
                              }
                              if (!password.contains(RegExp(r'[A-Z]'))) {
                                return 'Password should contain atleast one uppercase character';
                              }
                              if (!password.contains(RegExp(r'[0-9]'))) {
                                return 'Password should contain atleast one digit';
                              }
                              if (!password
                                  .contains(RegExp(r'[!@#%^&*(),.?":{}|<>]'))) {
                                return 'Password should contain atleast one speical character\n';
                              }
                              return null;
                            },
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // rectangle20aix (84:36)
                    left: 24 * fem,
                    top: 445 * fem,
                    child: Align(
                      child: SizedBox(
                        width: 337 * fem,
                        height: 46.94 * fem,
                        child: Material(
                          borderRadius: BorderRadius.circular(20 * fem),
                          elevation: 2,
                          child: TextFormField(
                            controller:
                                _confirmPasswordController, // Add this line
                            obscureText: !_isPasswordVisible,
                            decoration: InputDecoration(
                              hintText: 'Confirm Password',
                              filled: true,
                              fillColor: const Color(0xffd9d9d9),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20 * fem),
                                borderSide: BorderSide.none,
                              ),
                              contentPadding: EdgeInsets.symmetric(
                                horizontal: 20 * fem,
                                vertical: 12 * fem,
                              ),
                              suffixIcon: IconButton(
                                icon: Icon(
                                  _isPasswordVisible
                                      ? Icons.visibility
                                      : Icons.visibility_off,
                                ),
                                onPressed: _togglePasswordVisibility,
                              ),
                            ),
                            style: TextStyle(
                              fontFamily: 'Inknut Antiqua',
                              fontSize: 20 * ffem,
                              fontWeight: FontWeight.w400,
                              color: Colors.black,
                            ),
                            validator: _confirmPasswordValidator,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // group34na8 (87:34)
                    left: 27 * fem,
                    top: 532.5 * fem,
                    child: Container(
                      width: 337 * fem,
                      height: 52 * fem,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20 * fem),
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            left: 0 * fem,
                            top: 2.5 * fem,
                            child: Align(
                              child: SizedBox(
                                width: 337 * fem,
                                height: 47 * fem,
                                child: Material(
                                  borderRadius: BorderRadius.circular(20 * fem),
                                  elevation: 2,
                                  child: TextFormField(
                                    controller: phoneNumberController,
                                    keyboardType: TextInputType.phone,
                                    decoration: InputDecoration(
                                      hintText: '+91-XXXXXXXXXX',
                                      filled: true,
                                      fillColor: const Color(0xffd9d9d9),
                                      border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(20 * fem),
                                        borderSide: BorderSide.none,
                                      ),
                                      contentPadding: EdgeInsets.symmetric(
                                        horizontal: 20 * fem,
                                        vertical: 12 * fem,
                                      ),
                                    ),
                                    validator: (phno) {
                                      const pattern =
                                          r'^[+]*[(]{0,1}[0-9]{1,4}[)]{0,1}[-\s\./0-9]*$';
                                      final regExp = RegExp(pattern);
                                      if (phno == null || phno.isEmpty) {
                                        return 'Phone number required';
                                      } else if (phno.length < 10 ||
                                          phno.length > 10) {
                                        return 'Phone number must contain 10 digits';
                                      } else if (!regExp.hasMatch(phno)) {
                                        return 'Invalid phone number';
                                      }
                                      return null;
                                    },
                                    style: TextStyle(
                                      fontFamily: 'Inknut Antiqua',
                                      fontSize: 20 * ffem,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black,
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
                    left: 23 * fem,
                    top: 636 * fem,
                    child: GestureDetector(
                      onTap: () {
                        if (_formKey.currentState!.validate()) {
                          print("Success");
                        } else {
                          print("Not success");
                        }
                      },
                      child: TextButton(
                        onPressed: () async {
                          final SharedPreferences prefs =
                              await SharedPreferences.getInstance();

                          if (_formKey.currentState!.validate()) {
                            String email = emailController.value.text;
                            String phoneNumber =
                                phoneNumberController.value.text;
                            String password = _passwordController.value.text;
                            if (email.isEmpty ||
                                phoneNumber.isEmpty ||
                                password.isEmpty) {
                              print(
                                  'Email, Phone Number, and Password must not be empty.');
                              return;
                            }

                            FirebaseFirestore db = FirebaseFirestore.instance;
                            final docRef = db.collection("signup").doc(email);

                            try {
                              DocumentSnapshot doc = await docRef.get();
                              if (doc.exists) {
                                print("Email already exists");
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                    content: Text("Email already exists."),
                                    duration: Duration(seconds: 3),
                                  ),
                                );
                              } else {
                                final userData = {
                                  "email": email,
                                  "phone number": phoneNumber,
                                  "password": password,
                                };
                                await db
                                    .collection("signup")
                                    .doc(email)
                                    .set(userData);
                                print("Signup successful");
                                await prefs.setString('user_email', email);
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Login()),
                                );
                              }
                            } catch (e) {
                              print(e.toString());
                              // Handle the error, show an alert or a snackbar
                            }
                          }
                        },
                        style: TextButton.styleFrom(
                          padding: EdgeInsets.zero,
                        ),
                        child: SizedBox(
                          width: 349 * fem,
                          height: 64 * fem,
                          child: Container(
                            width: double.infinity,
                            height: double.infinity,
                            decoration: BoxDecoration(
                              color: const Color(0xffff3737),
                              borderRadius: BorderRadius.circular(20 * fem),
                            ),
                            child: Center(
                              child: Text(
                                'Sign Up',
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
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
