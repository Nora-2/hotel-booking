import 'package:bookly/Features/Explore/presentation/views/widgets/custom_tab_bar.dart';
import 'package:bookly/Features/home/presentation/views/widgets/custom_search_box.dart';
import 'package:flutter/material.dart';

class searchandtabbar extends StatelessWidget {
  const searchandtabbar({
    super.key,
    required this.size,
    required TabController tabcontroller,
  }) : _tabcontroller = tabcontroller;

  final Size size;
  final TabController _tabcontroller;

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.start, children: [
      SizedBox(
        height: 60,
      ),
      SizedBox(height: size.height * 0.02),
      CustomSearchBox(size: size),
      SizedBox(
        height: 10,
      ),
      CustomTabBar(
        c: _tabcontroller,
      ),
    ]);
  }
}
