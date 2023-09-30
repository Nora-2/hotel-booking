// ignore_for_file: prefer_const_constructors
import 'package:bookly/Features/registration/presentation/views/widgets/login.dart';
import 'package:bookly/Features/settings/presentation/views/widgets/custom_text.dart';
import 'package:bookly/Features/settings/presentation/views/widgets/custom_text_field.dart';
import 'package:bookly/core/utils/constants.dart';
import 'package:bookly/core/utils/function/custom_snack_bar.dart';
import 'package:bookly/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class forgetpassScreen extends StatelessWidget {
  forgetpassScreen({super.key});
  static String id = 'forgetpassScreen';
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
        Size size = MediaQuery.of(context).size;
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          iconTheme: IconThemeData(color: kPrimaryColor),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.01,
                ),
                const Text(
                  "Forget your password",
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: kPrimaryColor),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.07,
                ),
                Form(
                  key: _formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomText(text: 'Email'),
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                        height: 40,
                        child:
                            CustomTextFieldsetting(Hint: 'Mohamed@gmail.com'),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      CustomText(text: 'New Password'),
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                        height: 40,
                        child: CustomTextFieldsetting(
                            ispassword: true, Hint: 'Type  New Password'),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      CustomText(text: 'Confirm Password'),
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                        height: 40,
                        child: CustomTextFieldsetting(
                            ispassword: true, Hint: 'Re-type New Password'),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.1,
                      ),
                      Center(
                        child: CustomButton(
                            width: size.width*.5,
                height: size.height*.05,
           
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                customSnackBar(context,
                                    text: 'Password Changed Successfully',
                                    action: SnackBarAction(
                                        textColor: Colors.white,
                                        label: 'ok',
                                        onPressed: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      (LogIn())));
                                        }));
                              }
                            },
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            backgroundColor: kPrimaryColor,
                            textColor: Colors.white,
                            text: 'Ok'),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.07,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
