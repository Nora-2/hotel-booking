import 'package:bookly/Features/registration/presentation/views/background.dart';
import 'package:bookly/Features/registration/presentation/views/customtxtformfield.dart';
import 'package:bookly/Features/registration/presentation/views/signin.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class changepass extends StatelessWidget {
  changepass({super.key});
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Background(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
              ),
              const Text(
                "Change Password",
                style: TextStyle(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontFamily: 'Tajawal',
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.07,
              ),
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 30, right: 30),
                      child: Material(
                        elevation: 4,
                        borderRadius: BorderRadius.circular(
                            MediaQuery.of(context).size.width * 0.1),
                        child: customformfield(
                          hint: "Email",
                          preicon: Icon(
                            Icons.email,
                            size: MediaQuery.of(context).size.width * 0.06,
                            color: Color.fromARGB(255, 225, 121, 243),
                          ),
                          text: TextInputType.emailAddress,
                          sign: '@',
                          massege: 'Please enter a valid email',
                        ),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.07,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 30, right: 30),
                      child: Material(
                          elevation: 4,
                          borderRadius: BorderRadius.circular(
                              MediaQuery.of(context).size.width * 0.1),
                          child: customformfield(
                            hint: 'Password',
                            preicon: Icon(
                              Icons.lock,
                              size: MediaQuery.of(context).size.width * 0.06,
                              color: Color.fromARGB(255, 225, 121, 243),
                            ),
                            text: TextInputType.visiblePassword,
                          )),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.07,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 30, right: 30),
                      child: Material(
                          elevation: 4,
                          borderRadius: BorderRadius.circular(
                              MediaQuery.of(context).size.width * 0.1),
                          child: customformfield(
                            hint: 'Confirm Password',
                            preicon: Icon(
                              Icons.lock,
                              size: MediaQuery.of(context).size.width * 0.06,
                              color: Color.fromARGB(255, 225, 121, 243),
                            ),
                            text: TextInputType.visiblePassword,
                          )),
                    ),
                   SizedBox(
                      height: MediaQuery.of(context).size.height * 0.15,
                    ),
                    Material(
                      elevation: 4,
                      borderRadius: BorderRadius.circular(
                        MediaQuery.of(context).size.height * 0.1,
                      ),
                      child: GestureDetector(
                        onTap:  () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => (SignIn())));
                  },
                        child: Container(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Color.fromARGB(255, 255, 230, 85),
                                Color.fromARGB(255, 176, 74, 166),
                              ],
                              begin: Alignment.bottomRight,
                              end: Alignment.topLeft,
                            ),
                            borderRadius: BorderRadius.circular(
                              MediaQuery.of(context).size.height * 0.1,
                            ),
                          ),
                          width: MediaQuery.of(context).size.width * 0.30,
                          height: MediaQuery.of(context).size.height * 0.07,
                          child: Center(
                            child: Text('confirm',style: GoogleFonts.lato().copyWith(
                                            fontSize: 15,
                                            color: Colors.white,
                                            fontFamily: 'Tajawal',
                                            fontWeight: FontWeight.w700),
                                      ),
                          ),),
                      )
                      ),
                    
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.06,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
