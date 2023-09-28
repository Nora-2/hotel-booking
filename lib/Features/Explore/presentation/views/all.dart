import 'package:bookly/Features/Explore/presentation/views/widgets/customItembuilder.dart';
import 'package:bookly/core/widgets/dataprovider.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class all extends StatefulWidget {
  all({super.key});

  @override
  State<all> createState() => _allState();
}

class _allState extends State<all> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.only(bottom: 10),
        child: itembuilder(
            viewItem: dataprovider.ExoploreAll[index]),
      ),
      itemCount: dataprovider.ExoploreAll.length,
    );
  }
}
