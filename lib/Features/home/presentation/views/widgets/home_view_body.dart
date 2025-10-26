import 'package:books_app/features/home/presentation/views/widgets/custom_item_book.dart';
import 'package:flutter/material.dart';
import 'package:books_app/features/home/presentation/views/widgets/custom_app_bar.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(children: [CustomAppBar(), BooksListView()]);
  }
}

class BooksListView extends StatelessWidget {
  const BooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .3,

      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, indx) {
          return const CustomBookItem();
        },
      ),
    );
  }
}
