import 'package:flutter/material.dart';
import 'package:flutter_sliver_1/bottom_navigation.dart';
import 'package:flutter_sliver_1/pages.dart';
import 'package:flutter_sliver_1/pages/fitness_tracker/activities/activities_page.dart';
import 'package:flutter_sliver_1/pages/nested_scroll_view_page.dart';
import 'package:flutter_sliver_1/pages/networking/networking_page.dart';
import 'package:flutter_sliver_1/pages/slivers_basic_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  Pages _page = Pages.basic;

  void selectPage(Pages page) => setState(() => _page = page);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody(),
      bottomNavigationBar: BottomNavigation(
        page: _page,
        onSelectPage: selectPage,
      ),
    );
  }

  Widget _buildBody() {
    return <Pages, WidgetBuilder>{
      Pages.basic: (_) => const SliversBasicPage(),
      Pages.fetch: (_) => const NetworkingPage(),
      Pages.custom: (_) => ActivitiesPage.withSampleData(),
//      Page.nested: (_) => NestedScrollViewPage(),
    }[_page]!(context);
  }
}