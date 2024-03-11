import 'package:flutter/material.dart';
import 'package:sutasapp/screens/login_page.dart';

class SignPage extends StatefulWidget {
  const SignPage({super.key});

  @override
  State<SignPage> createState() => _SignPageState();
}

class _SignPageState extends State<SignPage> {
  bool securText = true;
  bool rememberUser = false;
  late Color myColor;

  late Size mediaSize;

  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController(text: "(+62) ");
  TextEditingController nameController = TextEditingController();
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
                        _buildGreyText("Silakan buat akun anda"),
                        const SizedBox(height: 20),
                        TextField(
                          controller: nameController,
                          decoration: InputDecoration(
                            prefixIcon: const Icon(Icons.person_add_alt_1),
                            hintText: 'Masukkan Nama Lengkap Anda disini',
                            labelText: 'Nama Lengkap',
                            contentPadding:
                                const EdgeInsets.symmetric(horizontal: 20),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Colors.indigo,
                              ),
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Colors.black,
                              ),
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                        TextField(
                          controller: phoneController,
                          decoration: InputDecoration(
                            prefixIcon: const Icon(Icons.phone),
                            hintText: 'Masukkan Nomer Telpon Anda disini',
                            labelText: 'No Telp',
                            contentPadding:
                                const EdgeInsets.symmetric(horizontal: 20),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Colors.indigo,
                              ),
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Colors.black,
                              ),
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                          ),
                        ),
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
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Colors.black,
                              ),
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
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
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Colors.black,
                              ),
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                        InkWell(
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) {
                                return const LoginPage();
                              },
                            ));
                          },
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) {
                                  return const LoginPage();
                                },
                              ));
                            },
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15)),
                              backgroundColor: Colors.indigo,
                              elevation: 20,
                              shadowColor: myColor,
                              minimumSize: const Size.fromHeight(60),
                            ),
                            child: const Text(
                              "SIGN UP",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text("Sudah punya akun ? "),
                            InkWell(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) {
                                    return const LoginPage();
                                  },
                                ));
                              },
                              child: const Text(
                                "Sign In",
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
