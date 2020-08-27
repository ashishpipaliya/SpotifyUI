import 'package:flamera/widgets/your_lib_tabs.dart';
import 'package:flutter/material.dart';

class YourLibrary extends StatefulWidget {
  @override
  _YourLibraryState createState() => _YourLibraryState();
}

class _YourLibraryState extends State<YourLibrary> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: DefaultTabController(
        length: parentTabs.length,
        child: TabBar(
          tabs: parentTabs,
          onTap: (tabValue) => setState(() => _currentIndex = tabValue),
        ),
        initialIndex: _currentIndex,
      ),
    );
  }
}
