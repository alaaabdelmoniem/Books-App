import 'package:books_app/Features/home/presentation/views/widgets/custom_book_details_app_bar_.dart';
import 'package:books_app/core/utils/styles.dart';
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
              padding: EdgeInsets.symmetric(horizontal: width * .19),
              child: const CustomBookItem(),
            ),
            const SizedBox(height: 43),
            const Text('The Jungle Book', style: Styles.textStyle30),
            const SizedBox(height: 6),

            Opacity(
              opacity: .7,
              child: Text(
                'Rudyard Kipling',
                style: Styles.textStyle18.copyWith(
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
