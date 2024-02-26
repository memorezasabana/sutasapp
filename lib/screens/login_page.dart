import 'package:flutter/material.dart';
import 'package:sutasapp/screens/dashboard/dashboard_screen.dart';

void main() {
  runApp(LoginPage());
}

class LoginPage extends StatelessWidget {
  LoginPage({super.key});
  late Color myColor;
  late Size mediaSize;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool rememberUser = false;

  @override
  Widget build(BuildContext context) {
    myColor = Colors.indigo;
    mediaSize = MediaQuery.of(context).size;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Container(
        decoration: BoxDecoration(
          color: myColor,
          image: const DecorationImage(
            image: AssetImage("assets/images/patung.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Stack(children: [
            Positioned(
              bottom: 0,
              child: SizedBox(
                width: mediaSize.width,
                child: Card(
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  )),
                  child: Padding(
                    padding: const EdgeInsets.all(32.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Selamat Datang,",
                          style: TextStyle(
                              color: myColor,
                              fontSize: 32,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Product'),
                        ),
                        _buildGreyText("Please login with your information"),
                        const SizedBox(height: 20),
                        TextField(
                          controller: passwordController,
                          decoration: const InputDecoration(
                            prefixIcon: Icon(Icons.person),
                            hintText: 'Masukkan Username Anda disini',
                            labelText: 'Username',
                            contentPadding:
                                EdgeInsets.symmetric(horizontal: 20),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.indigo,
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                        TextField(
                          controller: emailController,
                          obscureText: true,
                          decoration: const InputDecoration(
                            suffixIcon: Icon(Icons.remove_red_eye),
                            prefixIcon: Icon(Icons.lock),
                            hintText: 'Masukkan Password Anda disini',
                            labelText: 'Password',
                            contentPadding:
                                EdgeInsets.symmetric(horizontal: 20),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.indigo,
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 40),
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) {
                                return const DashboardScreen();
                              },
                            ));
                          },
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) {
                                  return const DashboardScreen();
                                },
                              ));
                            },
                            style: ElevatedButton.styleFrom(
                              shape: const StadiumBorder(),
                              backgroundColor: Colors.indigo,
                              elevation: 20,
                              shadowColor: myColor,
                              minimumSize: const Size.fromHeight(60),
                            ),
                            child: const Text(
                              "LOGIN",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }

  // Widget _buildBottom() {
  //   return SizedBox(
  //     width: mediaSize.width,
  //     child: Card(
  //       shape: const RoundedRectangleBorder(
  //           borderRadius: BorderRadius.only(
  //         topLeft: Radius.circular(30),
  //         topRight: Radius.circular(30),
  //       )),
  //       child: Padding(
  //         padding: const EdgeInsets.all(32.0),
  //         child: _buildForm(),
  //       ),
  //     ),
  //   );
  // }

  // Widget _buildForm(BuildContext context) {
  //   return Column(
  //     crossAxisAlignment: CrossAxisAlignment.start,
  //     children: [
  //       Text(
  //         "Selamat Datang,",
  //         style: TextStyle(
  //             color: myColor, fontSize: 32, fontWeight: FontWeight.w500),
  //       ),
  //       _buildGreyText("Please login with your information"),
  //       const SizedBox(height: 20),
  //       _buildGreyText("Email address"),
  //       _buildInputField(emailController),
  //       const SizedBox(height: 10),
  //       _buildGreyText("Password"),
  //       _buildInputField(passwordController, isPassword: true),
  //       const SizedBox(height: 40),
  //       ElevatedButton(
  //         onPressed: () {
  //           debugPrint("Email : ${emailController.text}");
  //           debugPrint("Password : ${passwordController.text}");
  //           Navigator.of(context).push(MaterialPageRoute(
  //             builder: (context) {
  //               return const DashboardScreen();
  //             },
  //           ));
  //         },
  //         style: ElevatedButton.styleFrom(
  //           shape: const StadiumBorder(),
  //           backgroundColor: Colors.indigo,
  //           elevation: 20,
  //           shadowColor: myColor,
  //           minimumSize: const Size.fromHeight(60),
  //         ),
  //         child: const Text(
  //           "LOGIN",
  //           style: TextStyle(color: Colors.white),
  //         ),
  //       ),
  //     ],
  //   );
  // }

  Widget _buildGreyText(String text) {
    return Text(
      text,
      style: const TextStyle(color: Colors.grey),
    );
  }

  Widget _buildInputField(TextEditingController context, {isPassword = false}) {
    return TextField(
      controller: context,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(horizontal: 20),
        border: const OutlineInputBorder(),
        suffixIcon: isPassword
            ? const Icon(Icons.remove_red_eye)
            : const Icon(Icons.done),
      ),
      obscureText: isPassword,
    );
  }

  // Widget _buildLoginButton(BuildContext context) {
  //   return ElevatedButton(
  //     onPressed: () {
  //       debugPrint("Email : ${emailController.text}");
  //       debugPrint("Password : ${passwordController.text}");
  //     },
  //     style: ElevatedButton.styleFrom(
  //       shape: const StadiumBorder(),
  //       backgroundColor: Colors.indigo,
  //       elevation: 20,
  //       shadowColor: myColor,
  //       minimumSize: const Size.fromHeight(60),
  //     ),
  //     child: const Text(
  //       "LOGIN",
  //       style: TextStyle(color: Colors.white),
  //     ),
  //   );
  // }
}
