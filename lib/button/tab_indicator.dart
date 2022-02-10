import 'package:coffee/constant/const.dart';
import 'package:flutter/material.dart';

class TabIndicator extends StatefulWidget {
  const TabIndicator(
      {Key? key, required this.selectedIndex, required this.indicatorSize})
      : super(key: key);
  final int selectedIndex;
  final double indicatorSize;
  @override
  _TabIndicatorState createState() => _TabIndicatorState();
}

class _TabIndicatorState extends State<TabIndicator>
    with SingleTickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void didUpdateWidget(covariant TabIndicator oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.selectedIndex != widget.selectedIndex) {
      _tabController.animateTo(widget.selectedIndex);
    }
  }

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
        length: screens.length,
        vsync: this,
        animationDuration: const Duration(milliseconds: 700));
  }

  @override
  Widget build(BuildContext context) {
    return TabPageSelector(
      indicatorSize: widget.indicatorSize,
      controller: _tabController,
      color: const Color.fromARGB(255, 209, 144, 40),
      selectedColor: const Color.fromARGB(255, 255, 243, 224),
    );
  }
}
