import 'package:bookly/Features/home/presentation/views/custom_text_field.dart';
import 'package:flutter/material.dart';



class CustomSearchBox extends StatelessWidget {
  const CustomSearchBox({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      height: 40,
      width: size.width * 0.82,
      decoration: BoxDecoration(
        color: Colors.white,
          borderRadius: BorderRadius.circular(32),
          border: Border.all(
              width: .5, color: Colors.grey.withOpacity(0.5))),
      child: CustomTextField(
        //controller: searchController,
        onSubmitted: (value) {

        },
        hintText: 'Search',
        prefixIcon: Icons.search,
        iconColor: Colors.grey,
      ),
    );
  }
}
