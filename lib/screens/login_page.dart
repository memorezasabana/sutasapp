import 'package:flutter/material.dart';
import 'package:sutasapp/screens/dashboard/bottom_nav_bar.dart';
import 'package:sutasapp/screens/dashboard/dashboard_screen.dart';
import 'package:sutasapp/screens/signup_page.dart';

void main() {
  runApp(const LoginPage());
}

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool securText = true;
  bool rememberUser = false;
  late Color myColor;

  late Size mediaSize;

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    myColor = Colors.indigo;
    mediaSize = MediaQuery.of(context).size;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
        fontFamily: 'Product',
      ),
      home: Container(
        decoration: BoxDecoration(
          color: myColor,
          image: const DecorationImage(
            image: AssetImage("assets/images/patung.jpg"),
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
                          controller: emailController,
                          decoration: InputDecoration(
                            prefixIcon: const Icon(Icons.person),
                            hintText: 'Masukkan Username Anda disini',
                            labelText: 'Username',
                            contentPadding:
                                const EdgeInsets.symmetric(horizontal: 20),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Colors.indigo,
                              ),
                              borderRadius: BorderRadius.circular(50.0),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Colors.black,
                              ),
                              borderRadius: BorderRadius.circular(50.0),
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        TextFormField(
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter some text';
                            }
                            return null;
                          },
                          controller: passwordController,
                          obscureText: securText,
                          decoration: InputDecoration(
                            suffixIcon: IconButton(
                                onPressed: () {
                                  setState(() {
                                    securText = !securText;
                                  });
                                },
                                icon: Icon(securText
                                    ? Icons.visibility_off
                                    : Icons.visibility)),
                            prefixIcon: const Icon(Icons.lock),
                            hintText: 'Masukkan Password Anda disini',
                            labelText: 'Password',
                            contentPadding:
                                const EdgeInsets.symmetric(horizontal: 20),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Colors.indigo,
                              ),
                              borderRadius: BorderRadius.circular(50.0),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Colors.black,
                              ),
                              borderRadius: BorderRadius.circular(50.0),
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Checkbox(
                                    value: rememberUser,
                                    onChanged: (value) {
                                      setState(() {
                                        rememberUser = value!;
                                      });
                                    }),
                                const Padding(
                                    padding: EdgeInsets.only(right: 0)),
                                _buildGreyText("Remember me"),
                              ],
                            ),
                            TextButton(
                                onPressed: () {},
                                child: _buildGreyText("Forgot password?"))
                          ],
                        ),
                        const SizedBox(height: 20),
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) {
                                return const BottomBar();
                              },
                            ));
                          },
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) {
                                  return const BottomBar();
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
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Belum punya akun ? "),
                            InkWell(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) {
                                    return const SignPage();
                                  },
                                ));
                              },
                              child: const Text(
                                "Sign Up",
                                style: TextStyle(
                                  color: Colors.indigo,
                                ),
                              ),
                            ),
                          ],
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
  Widget _buildGreyText(String text) {
    return Text(
      text,
      style: const TextStyle(color: Colors.grey),
    );
  }
}
