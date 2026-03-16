import 'package:egytale/Registration/Widget/Registration_With_Meta.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  bool isPasswordHidden = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20),

                /// LOG IN
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      const Text(
                        "LOG IN",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff320e01),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: const Icon(
                            Icons.arrow_back_ios,
                            color: Color(0xff320e01),
                            size: 20,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 20),

                Align(
                  alignment: Alignment.centerLeft,
                  child: Image.asset(
                    "assets/images/Logo.png",
                    height: 100,
                  ),
                ),

                const SizedBox(height: 20),

                const Padding(
                  padding: EdgeInsets.only(left: 80.0),
                  child: Text(
                    "WELCOME",
                    style: TextStyle(
                      // fontFamily: "Sedan SC",
                      fontSize: 25,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff5a4d30),
                    ),
                  ),
                ),

                const SizedBox(height: 30),

                /// Email
                Center(
                  child: SizedBox(
                    width: 320,
                    height: 45,
                    child: TextField(
                      controller: emailController,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        hintText: "Enter Your Email",
                        filled: true,
                        fillColor: const Color(0xffeee9d3),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide.none,
                        ),
                        contentPadding:
                            const EdgeInsets.symmetric(horizontal: 16),
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 20),

                /// Password
                Center(
                  child: SizedBox(
                    width: 320,
                    height: 45,
                    child: TextField(
                      controller: passwordController,
                      obscureText: isPasswordHidden,
                      decoration: InputDecoration(
                        hintText: "Enter Your Password",
                        filled: true,
                        fillColor: const Color(0xffeee9d3),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide.none,
                        ),
                        contentPadding:
                            const EdgeInsets.symmetric(horizontal: 16),
                        suffixIcon: IconButton(
                          icon: Icon(
                            isPasswordHidden
                                ? Icons.visibility_off
                                : Icons.visibility,
                          ),
                          onPressed: () {
                            setState(() {
                              isPasswordHidden = !isPasswordHidden;
                            });
                          },
                        ),
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 20),

                /// Forget Password
                Align(
                  alignment: Alignment.center,
                  child: InkWell(
                    onTap: () {},
                    child: const Padding(
                      padding: EdgeInsets.all(4.0),
                      child: Text(
                        "Forget Password?",
                        style: TextStyle(
                          fontSize: 14,
                          decoration: TextDecoration.underline,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 30),

                /// Login Button
                Center(
                  child: SizedBox(
                    width: 320,
                    height: 45,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xff9e8857),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      onPressed: () {},
                      child: const Text(
                        "LOGIN",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 30),

                /// هنا بقى الجزء بتاع السوشيال بعد زرار LOGIN مباشرة
                const RegistrationWithMeta(),

                const SizedBox(height: 30),
              ],
            ),
          ),
        ),
      ),
    );
  }
}