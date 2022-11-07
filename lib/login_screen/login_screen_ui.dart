import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreenUI extends StatefulWidget {
  const LoginScreenUI({Key? key}) : super(key: key);

  @override
  State<LoginScreenUI> createState() => _LoginScreenUIState();
}

class _LoginScreenUIState extends State<LoginScreenUI> {
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Instagram",
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 38.sp),
            ),
            SizedBox(
              height: 10.h,
            ),
            customTexField("Email", email),
            customTexField("Password", password),
            SizedBox(
              height: 20.h,
            ),
            customButton(),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 50.h,
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "New User ?",
              style: TextStyle(fontSize: 15.sp),
            ),
            InkWell(
              onTap: (){},
            ),
            Text("Signup",style: TextStyle(fontSize: 15.sp,color: Colors.blue),)
          ],
        ),
      ),
    );
  }

  Widget customButton() {
    return Container(
      height: 40.h,
      width: 315.w,
      color: Colors.blue,
      alignment: Alignment.center,
      child: Text(
        "Log In",
        style: TextStyle(
            color: Colors.white, fontWeight: FontWeight.w500, fontSize: 17.sp),
      ),
    );
  }

  Widget customTexField(String hintText, TextEditingController controller) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: TextField(
        controller: controller,
        decoration:
            InputDecoration(hintText: hintText, border: OutlineInputBorder()),
      ),
    );
  }
}
