import 'package:dars_8_rtsep/ui/auth/forgotpassword_creen.dart';
import 'package:dars_8_rtsep/ui/auth/regester_screen.dart';
import 'package:dars_8_rtsep/ui/screens/home_screen.dart';
import 'package:dars_8_rtsep/ui/splash/create_an_account.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  final String savedEmail;
  final String savedPassword;

  LoginPage({required this.savedEmail, required this.savedPassword});

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _passwordVisible = false;
  String? _emailError;
  String? _passwordError;

  void _login() {
    setState(() {
      _emailError = null;
      _passwordError = null;
    });

    if (_emailController.text == widget.savedEmail &&
        _passwordController.text == widget.savedPassword) {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => HomeScreen()));
    } else {
      setState(() {
        if (_emailController.text != widget.savedEmail) {
          _emailError = "Email xato!";
        }
        if (_passwordController.text != widget.savedPassword) {
          _passwordError = "Parol xato!";
        }
      });
    }
  }

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
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Spacer(),
              Text(
                "Login",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text("Lorem ipsum dolor sit amet, consectetur."),
              SizedBox(height: 30),
              TextFormField(
                controller: _emailController,
                decoration: InputDecoration(
                  labelText: "Email",
                  filled: true,
                  fillColor: Colors.grey[100],
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  ),
                  errorText: _emailError,
                ),
              ),
              SizedBox(height: 20),
              TextFormField(
                controller: _passwordController,
                obscureText: !_passwordVisible,
                decoration: InputDecoration(
                  labelText: "Password",
                  filled: true,
                  fillColor: Colors.grey[100],
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
                  errorText: _passwordError,
                ),
              ),
              SizedBox(height: 10),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ForgotPasswordScreen()),
                    );
                  },
                  child: Text("Forgot password?"),
                ),
              ),
              Spacer(),
              ElevatedButton(
                onPressed: _login,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.teal,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  minimumSize: Size(double.infinity, 50),
                ),
                child: Text("Login"),
              ),
              SizedBox(height: 20),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (ctx) => RegisterPage(),
                          ),
                        );
                      },
                      child:
                          Image.asset(width: 160, "assets/tugmalar/google.png"),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (ctx) => RegisterPage(),
                          ),
                        );
                      },
                      child:
                          Image.asset(width: 160, "assets/tugmalar/apple.png"),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
