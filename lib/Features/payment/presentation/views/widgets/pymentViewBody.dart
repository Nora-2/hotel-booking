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
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, right: 30.0, top: 50),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                image: AssetImage('assets/images/download.jpeg'),
                width: 350,
                height: 220,
                fit: BoxFit.fill,
              ),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          CustomText(text: 'Name of card'),
          const SizedBox(
            height: 5,
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
          const SizedBox(
            height: 5,
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
          const SizedBox(
            height: 5,
          ),
          Container(
            height: 40,
            child: CustomTextFieldsetting(Hint: '05/12'),
          ),
          const SizedBox(
            height: 10,
          ),
          CustomText(text: 'Security code'),
          const SizedBox(
            height: 5,
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
          // Row(
          //   children: [
          //     Checkbox(
          //       checkColor: kPrimaryColor,
          //       focusColor: kPrimaryColor,
          //       activeColor: kPrimaryColor,

          //       value: false,
          //       onChanged: (value) {
          //         value = true;
          //       },
          //     ),
          //     SizedBox(
          //       width: 20,
          //     ),
          //     Text(
          //       'Set as defult',
          //       style: TextStyle(
          //           color: kPrimaryColor, fontWeight: FontWeight.w700),
          //     )
          //   ],
          // )
        ],
      ),
    );
  }
}
