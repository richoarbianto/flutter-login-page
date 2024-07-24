import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyWidget(),
    );
  }
}

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  bool passwordVisibility = false;
  bool rememberMe = false;
  void togglePasswordVisibility() {
    setState(() {
      passwordVisibility = !passwordVisibility;
    });
  }

  void toggleRememberMe(bool? value) {
    setState(() {
      rememberMe = value ?? false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text('Signin to MyAPP',
                style: GoogleFonts.firaSans(fontSize: 20)),
            backgroundColor: const Color.fromARGB(255, 31, 210, 213)),
        body: Container(
          color: Colors.white,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 20, 10, 10),
                child: Container(
                  padding: const EdgeInsets.only(top: 50),
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.75,
                  child: Column(
                    children: [
                      Text(
                        'Welcome Back,',
                        style: GoogleFonts.firaSans(
                            fontSize: 30, fontWeight: FontWeight.normal),
                      ),
                      const SizedBox(height: 20),
                      SizedBox(
                        width: 300,
                        child: TextField(
                          // textAlign: TextAlign.center,
                          decoration: InputDecoration(
                            label: Text(
                              'Username',
                              style: GoogleFonts.firaSans(
                                  color: Colors.black, fontSize: 17),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      SizedBox(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: 195,
                              child: TextField(
                                obscureText: passwordVisibility,
                                decoration: InputDecoration(
                                  label: Text(
                                    'Password',
                                    style: GoogleFonts.firaSans(
                                        color: Colors.black, fontSize: 17),
                                  ),
                                ),
                              ),
                            ),
                            ElevatedButton.icon(
                                style: ElevatedButton.styleFrom(
                                    iconColor: Colors.black,
                                    backgroundColor: Colors.white,
                                    side:
                                        const BorderSide(color: Colors.black)),
                                label: Text(
                                  passwordVisibility ? 'Hide' : 'Show',
                                  style:
                                      GoogleFonts.firaSans(color: Colors.black),
                                ),
                                onPressed: togglePasswordVisibility,
                                icon: Icon(passwordVisibility
                                    ? Icons.visibility_off
                                    : Icons.remove_red_eye))
                          ],
                        ),
                      ),
                      const SizedBox(height: 20),
                      Row(
                        // mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Checkbox(
                              value: rememberMe, onChanged: toggleRememberMe),
                          Text(
                            'Remember Me',
                            style: GoogleFonts.firaSans(
                                color: Colors.black, fontSize: 18),
                          ),
                          const SizedBox(
                            width: 70,
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Text(
                              'Forgot Password?',
                              style: GoogleFonts.firaSans(
                                  color: Colors.black,
                                  fontSize: 18,
                                  decoration: TextDecoration.underline),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      ElevatedButton.icon(
                        style: ElevatedButton.styleFrom(
                            iconColor: Colors.black,
                            backgroundColor: Colors.white,
                            side: const BorderSide(color: Colors.black),
                            padding: const EdgeInsets.symmetric(
                                vertical: 0, horizontal: 110)),
                        onPressed: () => {},
                        label: Text(
                          'Login',
                          style: GoogleFonts.firaSans(
                            color: Colors.black,
                            fontSize: 18,
                          ),
                        ),
                        icon: const Icon(Icons.login),
                      ),
                      const SizedBox(height: 25),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            side: const BorderSide(color: Colors.black)),
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              margin: const EdgeInsets.all(5),
                              width: 50,
                              height: 50,
                              decoration: const BoxDecoration(
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          'http://pngimg.com/uploads/google/google_PNG19635.png'))),
                            ),
                            Text('Sign in with Google',
                                style: GoogleFonts.firaSans(
                                    color: Colors.black, fontSize: 18))
                          ],
                        ),
                      ),
                      const SizedBox(height: 12),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            side: const BorderSide(color: Colors.black)),
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              margin: const EdgeInsets.all(9),
                              width: 40,
                              height: 40,
                              decoration: const BoxDecoration(
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          'https://www.freepnglogos.com/uploads/apple-logo-png/apple-logo-logo-icons-31.png'))),
                            ),
                            Text('Sign in with Apple',
                                style: GoogleFonts.firaSans(
                                    color: Colors.black, fontSize: 18))
                          ],
                        ),
                      ),
                      const SizedBox(height: 20),
                      Container(
                        child: Row(
                          children: [
                            SizedBox(
                              width: 15,
                            ),
                            Text(
                              "Don't have an account?",
                              style: GoogleFonts.firaSans(
                                  color: Colors.black, fontSize: 18),
                            ),
                            SizedBox(width: 5),
                            Text(
                              "Signup",
                              style: GoogleFonts.firaSans(
                                  color: Colors.black,
                                  fontSize: 18,
                                  decoration: TextDecoration.underline),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
