import 'package:flutter/material.dart';
import 'package:flutter_sliver_1/pages.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({super.key, this.page, this.onSelectPage});
  final Pages? page;
  final ValueChanged<Pages>? onSelectPage;

  Color _color(Pages page) => this.page == page ? Colors.indigo : Colors.grey;

  static const Map<Pages, IconData> icons = {
    Pages.basic: Icons.view_headline,
    Pages.fetch: Icons.cloud_download,
    Pages.custom: Icons.directions_run,
//    Page.nested: Icons.table_chart,
  };
  static const Map<Pages, String> names = {
    Pages.basic: 'basic',
    Pages.fetch: 'networking',
    Pages.custom: 'custom',
//    Page.nested: 'nested',
  };

  BottomNavigationBarItem _buildItem(Pages page) {
    return BottomNavigationBarItem(
      icon: Icon(
        icons[page],
        color: _color(page),
      ),
      label:
        names[page],
    );
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      items: Pages.values.map(_buildItem).toList(),
      onTap: (index) => onSelectPage!(Pages.values[index]),
    );
  }
}