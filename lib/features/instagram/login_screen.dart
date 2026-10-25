import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:untitled/features/instagram/validators.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var formKey = GlobalKey<FormState>();

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(8.0.r),
          child: Form(
            key: formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                // Image.asset("assets/images/Path.png"),
                // SizedBox(height: 10.h),
                TextFormField(
                  validator: Validators.emailValidator,
                  controller: emailController,
                  decoration: InputDecoration(
                    label: Text("Enter your email"),
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 20.h),
                TextFormField(
                  validator: Validators.passwordValidator,
                  controller: passwordController,
                  decoration: InputDecoration(
                    label: Text("Enter your password"),
                    border: OutlineInputBorder(),
                  ),
                ),
                Text(
                  "Forgot password?",
                  style: TextStyle(
                    fontSize: 12.sp,
                    // fontWeight: FontWeight.w500,
                    color: Color(0xff3797EF),
                  ),
                  textAlign: TextAlign.end,
                ),
                SizedBox(height: 20.h),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xff3797EF),
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusGeometry.circular(10.r),
                    ),
                  ),
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      Navigator.pushNamed(context, "home");
                    }
                  },
                  child: Text("Login"),
                ),
                Spacer(),
                Text(
                  "Don’t have an account? Sign up.",
                  style: TextStyle(
                    fontSize: 14.sp,
                    // fontWeight: FontWeight.w400
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
