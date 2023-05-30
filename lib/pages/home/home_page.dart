import '../../pages/home/widgets/app_bar.dart';
import '../../pages/home/widgets/books_list.dart';
import '../../pages/home/widgets/fab.dart';
import '../../pages/home/widgets/header.dart';
import '../../pages/home/widgets/icons_list.dart';
import '../../pages/home/widgets/navigation_bar.dart';
import '../../pages/home/widgets/new_book.dart';
import '../../pages/home/widgets/search_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      //Now we will build the body
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ...buildHeader(),
            buildSearchBar(),
            buildIconsList(),
            BuildBookList(),
            BuildNewBook(),
          ],
        ),
      ),
      extendBody: true,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: BuildFAB(),
      bottomNavigationBar: buildNavigationBar(),
    );
  }
}
