import 'package:egytale/auth/View/SignUp_View.dart';
import 'package:flutter/material.dart';

class ForgotPasswordView extends StatefulWidget {
  const ForgotPasswordView({super.key});

  @override
  State<ForgotPasswordView> createState() => _ForgotPasswordViewState();
}

class _ForgotPasswordViewState extends State<ForgotPasswordView> {
  final TextEditingController emailController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  final Color mainColor = const Color(0xFF9E8857);

  void _sendCode() {
    if (_formKey.currentState!.validate()) {
      /// 👇 هنا هتحط الكود بتاع الإيميل (Firebase أو API)
      print("Send verification code to: ${emailController.text}");

      ScaffoldMessenger.of(
        context,
      ).showSnackBar(const SnackBar(content: Text("Verification code sent")));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                const SizedBox(height: 20),

                /// 🔙 Back + Title
                Stack(
                  alignment: Alignment.center,
                  children: [
                    const Text(
                      "FORGET PASSWORD",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 2,
                        color: Color(0xff5a4d30),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: GestureDetector(
                        onTap: () => Navigator.pop(context),
                        child: const Icon(Icons.arrow_back_ios, size: 18),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 30),

                /// Logo
                Image.asset("assets/images/Logo.png", height: 80),

                const SizedBox(height: 30),

                ///  Illustration Image
                Container(
                  height: 180,
                  width: 180,
                  alignment: Alignment.center,
                  child: Image.asset(
                    "assets/images/forget_password.png",
                    fit: BoxFit.contain,
                  ),
                ),
                const SizedBox(height: 20),

                /// Text
                const Text(
                  "Please Enter Your\nEmail Address To Reset\nyour password.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18,
                    color: Color(0xff5a4d30),
                    height: 1.5,
                  ),
                ),

                const SizedBox(height: 30),

                /// Email Field
                TextFormField(
                  controller: emailController,
                  validator: (value) {
                    if (value == null || !value.contains("@")) {
                      return "Enter valid email";
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    hintText: "ENTER YOUR EMAIL",
                    filled: true,
                    fillColor: const Color(0xffeee9d3),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),

                const SizedBox(height: 30),

                /// Next Button
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: _sendCode,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: mainColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    child: const Text(
                      "NEXT",
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                  ),
                ),

                const SizedBox(height: 30),

                /// Sign up
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Don't have an account ? ",style: TextStyle(fontSize: 18),),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SignUpView(),
                          ),
                        );
                      },
                      child: const Text(
                        "Sign up",
                        style: TextStyle(color: Colors.blue,fontSize: 18),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
