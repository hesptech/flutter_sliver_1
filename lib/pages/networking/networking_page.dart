import 'package:flutter/material.dart';
import 'package:flutter_sliver_1/pages/networking/networking_page_content.dart';
import 'package:flutter_sliver_1/pages/networking/networking_page_header.dart';

class NetworkingPage extends StatelessWidget {
  const NetworkingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverPersistentHeader(
            pinned: false,
            floating: true,
            delegate: NetworkingPageHeader(
              minExtent: 150.0,
              maxExtent: 250.0,
            ),
          ),
          const NetworkingPageContent(),
          // SliverFillRemaining(
          //   child: Center(
          //     child: Text(
          //       'No Content',
          //       style: Theme.of(context).textTheme.headline,
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}