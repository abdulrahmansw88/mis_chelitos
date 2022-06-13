import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mis_chelitos/entry/signup/signup_screen.dart';
import 'package:mis_chelitos/utils/app_button.dart';
import 'package:mis_chelitos/utils/app_text_field.dart';
import 'package:mis_chelitos/utils/colors.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          // mainAxisAlignment: Ma,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              alignment:   Alignment.center,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.30,
                  width: MediaQuery.of(context).size.width,
                  decoration:const  BoxDecoration(
                      color: primaryColor,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(90.0)
                        ),
                    border: Border(
                      right: BorderSide(
                        color: Colors.green
                      )
                    )
                  ),
                ),
                Image.asset('assets/images/app_logo/white_logo.png', height: 140, width: 240),
              ],
            ),
            const SizedBox(height: 20),
            AppTextField(labelText: 'User name'),
            const SizedBox(height: 10),
            AppTextField(labelText: 'Password'),
            AppButton(
              width: MediaQuery.of(context).size.width,
              onPressed: (){},
              text: 'Login',
            ),
            const SizedBox(height: 10),
            const Align(
                alignment: Alignment.bottomRight,
                child:  Text("Forgot Password?  ", style: TextStyle(color: primaryColor, fontSize: 18))),
            const SizedBox(height: 20),
             Align(
                alignment: Alignment.center,
                child:  GestureDetector(
                  onTap: (){
                    Get.to(()=> SignUpScreen());
                  },
                  child: RichText(text: TextSpan(
                    text: "Don't have account?  ", style: TextStyle(color: primaryColor, fontSize: 20),
                    children: [
                      TextSpan(
                        text: 'Register',
                        style: TextStyle(color: Colors.tealAccent, fontSize: 22, decoration: TextDecoration.underline,)
                      ),
                    ]
                  )),
                )),


            const SizedBox(height: 50.0),
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconMaterialButton(imageUrl: 'assets/images/logo/facebook.png'),
                IconMaterialButton(imageUrl: 'assets/images/logo/twitter.png'),
                IconMaterialButton(imageUrl: 'assets/images/logo/google.png'),
              ],
            ),
            const SizedBox(height: 50,),
            const Text("Policies, Disclaimer and terms of use")
          ],
        ),
      ),
    );
  }
}

class IconMaterialButton extends StatelessWidget {
   IconMaterialButton({
    Key? key, this.imageUrl,
  }) : super(key: key);
  final String? imageUrl;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      height: 60.0,
        minWidth: 60,
        color: primaryColor,
        padding: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.0)
        ),
        onPressed: (){},
        elevation: 10.0,
        child:  Image.asset(imageUrl!, height: 40, width:50,),
    );
  }
}
