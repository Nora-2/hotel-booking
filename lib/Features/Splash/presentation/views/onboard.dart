
import 'package:bookly/Features/registration/presentation/views/signup.dart';
import 'package:bookly/Features/registration/presentation/views/widgets/login.dart';
import 'package:bookly/core/utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class onboardView extends StatelessWidget {
  const onboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/Rectangle 20.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Stack(
                children: [
                  Container(
                    padding:
                        const EdgeInsets.only(left: 10, right: 10, top: 300),
                    alignment: Alignment.center,
                    child: Image.asset(
                      "assets/images/Asset 1@4x 1.png",
                      height: 200,
                      width: double.infinity,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    alignment: Alignment.center,
                    child: Image.asset(
                      "assets/images/Untitled-1 1.png",
                      height: 400,
                      width: double.infinity,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 50,
              ),
              Center(
                  child: Text(
                'Book Your Trip Right Now !',
                style: GoogleFonts.lato().copyWith(
                    fontSize: 20,
                    color: kPrimaryColor,
                    fontFamily: 'Tajawal',
                    fontWeight: FontWeight.bold),
              )),
              Padding(
                padding: const EdgeInsets.only(left: 320,top:18),
                child: GestureDetector(
                  onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => (LogIn())));
                    },
                  child: Container(
                    
                    height: 50,
                      decoration: BoxDecoration(color:kPrimaryColor,
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(20),bottomLeft: Radius.circular(20)))
                      ,
                      child: Center(child: Text('Press to START',style:GoogleFonts.lato().copyWith(
                    fontSize: 18,
                    color: Colors.white,
                    fontFamily: 'Tajawal',
                    fontWeight: FontWeight.w500),))),
                ),
              )
            ],
          )),
    );
  }
}
