
import 'package:books_app/Features/home/presentation/views/widgets/book_rating.dart';
import 'package:books_app/Features/home/presentation/views/widgets/books_action.dart';
import 'package:books_app/Features/home/presentation/views/widgets/custom_item_book.dart';
import 'package:books_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BooksDetailsSection extends StatelessWidget {
  const BooksDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .19),
          child: const CustomBookItem(),
        ),
        const SizedBox(height: 40),
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
        const SizedBox(height: 14),
        const BookRating(mainAxisAlignment: MainAxisAlignment.center),
        const SizedBox(height: 36),
        const BooksAction(),
      ],
    );
  }
}

