import 'package:books_app/Features/home/presentation/views/widgets/custom_book_details_app_bar_.dart';
import 'package:books_app/features/home/presentation/views/widgets/custom_item_book.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          children: [
            const CustomBookDetailsAppBar(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width * .17),
              child: const CustomBookItem(),
            ),
          ],
        ),
      ),
    );
  }
}
