import 'package:bookly/Features/settings/presentation/views/widgets/custom_text.dart';
import 'package:bookly/Features/settings/presentation/views/widgets/custom_text_field.dart';
import 'package:bookly/core/utils/constants.dart';
import 'package:flutter/material.dart';

class PaymentViewWidget extends StatefulWidget {
  const PaymentViewWidget({
    super.key,
    required this.userName,
    required this.email,
  });
  final String? userName;
  final String? email;

  @override
  State<PaymentViewWidget> createState() => _PaymentViewWidgetState();
}

class _PaymentViewWidgetState extends State<PaymentViewWidget> {
  bool checkedvalu = false;

  @override
  Widget build(BuildContext context) {
        Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, right: 30.0, top: 50),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Image.asset('assets/images/download.jpeg',  width: size.width*.8,
                  height: size.height*.2,
              fit: BoxFit.cover,),
          ),
           
           SizedBox(
            height: size.height*.05,
          ),
          CustomText(text: 'Name of card'),
           SizedBox(
            height: size.height*.02,
          ),
          Container(
            height: 40,
            child: CustomTextFieldsetting(
              Hint: 'Card name',
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          CustomText(text: 'Card number'),
           SizedBox(
            height: size.height*.02,
          ),
          Container(
            height: 40,
            child: CustomTextFieldsetting(
              Hint: '123-456-789-012',
            ),
          ),
         const  SizedBox(
            height: 10,
          ),
          CustomText(text: 'Expiration date'),
           SizedBox(
            height: size.height*.02,
          ),
          Container(
            height: 40,
            child: CustomTextFieldsetting(Hint: '05/12'),
          ),
          const SizedBox(
            height: 10,
          ),
          CustomText(text: 'Security code'),
           SizedBox(
            height: size.height*.02,
          ),
          Container(
            height: 40,
            child: CustomTextFieldsetting(
              Hint: '000 ',
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          CheckboxListTile(
            title: const Text("Set as defult", style: TextStyle(
                     color: kPrimaryColor, fontWeight: FontWeight.w700),
          ),
            value: checkedvalu,
            checkColor: Colors.white,
          
                activeColor: kPrimaryColor,

            onChanged: (newValue) {
              setState(() {
                checkedvalu = newValue!;
              });
            },
            controlAffinity:
                ListTileControlAffinity.leading, //  <-- leading Checkbox
          )
     
        ],
      ),
    );
  }
}
