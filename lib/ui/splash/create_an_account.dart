// import 'package:dars_8_rtsep/ui/auth/login_screen.dart';
// import 'package:dars_8_rtsep/ui/auth/regester_screen.dart';
// import 'package:flutter/material.dart';

// class CreateAnAccount extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         child: Stack(
//           fit: StackFit.expand,
//           children: [
//             // Background image with darkened overlay
//             Stack(
//               fit: StackFit.expand,
//               children: [
//                 Image.asset(
//                   'assets/fon/fon5.png', // Replace with your actual image path
//                   fit: BoxFit.cover,
//                 ),
//                 Container(
//                   color: Colors.black.withOpacity(0.5), // Dark overlay
//                 ),
//               ],
//             ),
//             Column(
//               mainAxisAlignment: MainAxisAlignment.end,
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.all(15),
//                   child: Row(
//                     children: const [
//                       Text(
//                         "Create an\nAccount",
//                         style: TextStyle(
//                           fontSize: 40,
//                           fontWeight: FontWeight.bold,
//                           color: Colors.white,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.all(15),
//                   child: Row(
//                     children: const [
//                       Expanded(
//                         // Expanded widget ensures that the text fits within the available space
//                         child: Text(
//                           "Lorem ipsum dolor sit amet, consectetur elit,\nsed do eiusmod tempor incididunt ut.",
//                           style: TextStyle(
//                             fontWeight: FontWeight.bold,
//                             color: Colors.white,
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 const SizedBox(height: 20),
//                 Container(
//                   width: double.infinity,
//                   // height: 100,
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(20),
//                     color: Colors.white,
//                   ),
//                   child: Column(
//                     children: [
//                       SizedBox(
//                         height: 50,
//                       ),
//                       Center(
//                         child: IconButton(
//                           onPressed: () {
//                             Navigator.push(
//                               context,
//                               MaterialPageRoute(
//                                 builder: (ctx) => RegisterPage(),
//                               ),
//                             );
//                           },
//                           icon: Image.asset(
//                               width: 400,
//                               "assets/tugmalar/register.png"), // Replace with your actual image path
//                         ),
//                       ),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           TextButton(
//                             onPressed: () {
//                               Navigator.push(
//                                 context,
//                                 MaterialPageRoute(
//                                   builder: (ctx) => RegisterPage(),
//                                 ),
//                               );
//                             },
//                             child: Image.asset(
//                                 width: 180, "assets/tugmalar/google.png"),
//                           ),
//                           SizedBox(
//                             width: 10,
//                           ),
//                           TextButton(
//                             onPressed: () {
//                               Navigator.push(
//                                 context,
//                                 MaterialPageRoute(
//                                   builder: (ctx) => RegisterPage(),
//                                 ),
//                               );
//                             },
//                             child: Image.asset(
//                                 width: 180, "assets/tugmalar/apple.png"),
//                           )
//                         ],
//                       ),
//                       SizedBox(
//                         height: 30,
//                       ),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           Text("Have an account?",
//                               style:
//                                   TextStyle(color: Colors.black, fontSize: 20)),
//                           TextButton(
//                             onPressed: () {
//                               // Navigator.pushReplacement(
//                               //   context,
//                               //   MaterialPageRoute(
//                               //     builder: (context) => LoginPage(
//                               //       savedEmail: _savedEmail!,
//                               //       savedPassword: _savedPassword!,
//                               //     ),
//                               //   ),
//                               // );
//                             },
//                             child: Text("Login",
//                                 style: TextStyle(
//                                   color: Colors.black,
//                                   fontSize: 20,
//                                   fontWeight: FontWeight.bold,
//                                 )),
//                           )
//                         ],
//                       ),
//                       SizedBox(
//                         height: 30,
//                       ),
//                     ],
//                   ),
//                 ),
//                 // const SizedBox(height: 20),
//               ],
//             ),
//             Positioned(
//               top: 40,
//               right: 16,
//               child: Container(
//                 width: 50,
//                 height: 50, // Adjust height to make the container circular
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(
//                       25), // Half of the width/height to make it circular
//                   color: Colors.white,
//                 ),
//                 child: TextButton(
//                   onPressed: () {},
//                   child: const Text(
//                     "?",
//                     style: TextStyle(
//                       color: Colors.black,
//                       fontSize: 20,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }



// //RegisterPage















import 'package:dars_8_rtsep/ui/auth/login_screen.dart';
import 'package:dars_8_rtsep/ui/auth/regester_screen.dart';
import 'package:flutter/material.dart';

class CreateAnAccount extends StatelessWidget {
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          fit: StackFit.expand,
          children: [
            // Background image with darkened overlay
            Stack(
              fit: StackFit.expand,
              children: [
                Image.asset(
                  'assets/fon/fon5.png', // Replace with your actual image path
                  fit: BoxFit.cover,
                ),
                Container(
                  color: Colors.black.withOpacity(0.5), // Dark overlay
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Row(
                    children: const [
                      Text(
                        "Create an\nAccount",
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Row(
                    children: const [
                      Expanded(
                        // Expanded widget ensures that the text fits within the available space
                        child: Text(
                          "Lorem ipsum dolor sit amet, consectetur elit,\nsed do eiusmod tempor incididunt ut.",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  width: double.infinity,
                  // height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 50,
                      ),
                      Center(
                        child: IconButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (ctx) => RegisterPage(),
                              ),
                            );
                          },
                          icon: Image.asset(
                              width: 400,
                              "assets/tugmalar/register.png"), // Replace with your actual image path
                        ),
                      ),
                      Row(
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
                            child: Image.asset(
                                width: 180, "assets/tugmalar/google.png"),
                          ),
                          SizedBox(
                            width: 10,
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
                            child: Image.asset(
                                width: 180, "assets/tugmalar/apple.png"),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Have an account?",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 20)),
                          TextButton(
                            onPressed: () {
                              // Navigator.pushReplacement(
                              //   context,
                              //   MaterialPageRoute(
                              //     builder: (context) => LoginPage(
                              //       savedEmail: savedEmail,
                              //       savedPassword: savedPassword,
                              //     ),
                              //   ),
                              // );
                            },
                            child: Text("Login",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                )),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                    ],
                  ),
                ),
                // const SizedBox(height: 20),
              ],
            ),
            Positioned(
              top: 40,
              right: 16,
              child: Container(
                width: 50,
                height: 50, // Adjust height to make the container circular
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                      25), // Half of the width/height to make it circular
                  color: Colors.white,
                ),
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    "?",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
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
