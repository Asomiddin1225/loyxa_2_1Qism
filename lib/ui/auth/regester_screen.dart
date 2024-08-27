import 'package:dars_8_rtsep/ui/auth/login_screen.dart';
import 'package:dars_8_rtsep/ui/splash/create_an_account.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  String _selectedCountryCode = '+998';
  bool _emailInUse = false;
  bool _phoneNotFound = false;
  bool _weakPassword = false;
  bool _passwordVisible = false;

  // Variables to store user input
  String? _savedEmail;
  String? _savedPhoneNumber;
  String? _savedPassword;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (ctx) => CreateAnAccount(),
                ),
              );
            },
            icon: Image(
              image: AssetImage("assets/tugmalar/orqaga qaytish.png"),
              width: 50,
            )),
        actions: [
          // TextButton(
          //   onPressed: () {
          //     Navigator.pushReplacement(
          //       context,
          //       MaterialPageRoute(
          //         builder: (context) => LoginPage(
          //           savedEmail: _savedEmail!,
          //           savedPassword: _savedPassword!,
          //         ),
          //       ),
          //     );
          //   },
          //   child: Text(
          //     "Login",
          //     style: TextStyle(color: Colors.black, fontSize: 20),
          //   ),
          // ),

          TextButton(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => LoginPage(
                    savedEmail: _savedEmail ??
                        '', // Provide a default empty string if null
                    savedPassword: _savedPassword ??
                        '', // Provide a default empty string if null
                  ),
                ),
              );
            },
            child: Text(
              "Login",
              style: TextStyle(color: Colors.black, fontSize: 20),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20),
                  Text(
                    "Register",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  Text("Lorem ipsum dolor sit amet, consectetur."),
                  SizedBox(height: 30),

                  // Name field
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: "Name",
                      filled: true,
                      fillColor: Colors.grey[100],
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),

                  // Email field with validation
                  TextFormField(
                    controller: _emailController,
                    decoration: InputDecoration(
                      labelText: "Email",
                      filled: true,
                      fillColor:
                          _emailInUse ? Colors.red[50] : Colors.grey[100],
                      errorText: _emailInUse ? "Email already used" : null,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none,
                      ),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Please enter an email";
                      } else if (!RegExp(r'^[^@]+@[^@]+\.[^@]+')
                          .hasMatch(value)) {
                        return "Please enter a valid email address";
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 20),

                  // Phone field with country code dropdown and validation
                  Row(
                    children: [
                      DropdownButton<String>(
                        value: _selectedCountryCode,
                        items: ['+62', '+1', '+91', '+44', '+998', '+7']
                            .map((code) => DropdownMenuItem<String>(
                                  value: code,
                                  child: Text(code),
                                ))
                            .toList(),
                        onChanged: (newValue) {
                          setState(() {
                            _selectedCountryCode = newValue!;
                          });
                        },
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: TextFormField(
                          controller: _phoneController,
                          decoration: InputDecoration(
                            labelText: "Phone",
                            filled: true,
                            fillColor: _phoneNotFound
                                ? Colors.red[50]
                                : Colors.grey[100],
                            errorText: _phoneNotFound
                                ? "Number phone not found"
                                : null,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide.none,
                            ),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "Please enter your phone number";
                            } else if (value.length < 9) {
                              return "Phone number must be at least 9 digits";
                            }
                            return null;
                          },
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),

                  // Password field with visibility toggle and validation
                  TextFormField(
                    controller: _passwordController,
                    obscureText: !_passwordVisible,
                    decoration: InputDecoration(
                      labelText: "Password",
                      filled: true,
                      fillColor:
                          _weakPassword ? Colors.red[50] : Colors.grey[100],
                      errorText: _weakPassword ? "Password is too weak" : null,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none,
                      ),
                      suffixIcon: IconButton(
                        icon: Icon(
                          _passwordVisible
                              ? Icons.visibility
                              : Icons.visibility_off,
                        ),
                        onPressed: () {
                          setState(() {
                            _passwordVisible = !_passwordVisible;
                          });
                        },
                      ),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Please enter a password";
                      } else if (value.length < 6) {
                        return "Password must be at least 6 characters";
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 20),

                  // Register button
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        // Dummy validation logic
                        _emailInUse = _emailController.text ==
                            "amanda.samantha@email.com";
                        _phoneNotFound = _phoneController.text.length < 9;
                        _weakPassword = _passwordController.text.length < 6;

                        // Save user input
                        if (_formKey.currentState!.validate()) {
                          _savedEmail = _emailController.text;
                          _savedPhoneNumber =
                              _selectedCountryCode + _phoneController.text;
                          _savedPassword = _passwordController.text;

                          // Perform registration (Dummy action)
                          print("Registered with Email: $_savedEmail");
                          print("Phone Number: $_savedPhoneNumber");
                          print("Password: $_savedPassword");
                        }
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.teal,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      minimumSize: Size(double.infinity, 50),
                    ),
                    child: Text("Register"),
                  ),

                  SizedBox(height: 20),

                  Center(
                    child: Text(
                      "By registering you agree to our\nTerms and Conditions",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.grey),
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
