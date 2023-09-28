import 'package:bookly/Features/Explore/presentation/views/widgets/customItembuilder.dart';
import 'package:bookly/core/widgets/dataprovider.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class beach extends StatelessWidget {
  beach({super.key});


  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
     
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.only(bottom:10.0),
        child: itembuilder(
            viewItem: dataprovider.Beach[index]),
      ),
      itemCount: dataprovider.Beach.length,
    );
  }
}
