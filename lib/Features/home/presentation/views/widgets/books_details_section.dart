import 'package:books_app/Features/home/data/models/book_model/book_model.dart';
import 'package:books_app/Features/home/presentation/views/widgets/book_rating.dart';
import 'package:books_app/Features/home/presentation/views/widgets/books_action.dart';
import 'package:books_app/Features/home/presentation/views/widgets/custom_book_item.dart';
import 'package:books_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BooksDetailsSection extends StatelessWidget {
  const BooksDetailsSection({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .19),
          child: CustomBookItem(
            imageUrl: (bookModel.volumeInfo?.imageLinks?.thumbnail) ?? '',
          ),
        ),
        const SizedBox(height: 40),
        Text(
          bookModel.volumeInfo!.title!,
          style: Styles.textStyle30,
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 6),

        Opacity(
          opacity: .7,
          child: Text(
            (bookModel.volumeInfo?.authors?[0]) ?? 'NonKown',
            style: Styles.textStyle18.copyWith(
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        const SizedBox(height: 14),
        BookRating(
          count: (bookModel.volumeInfo?.ratingCount) ?? 0,
          averageRating: (bookModel.volumeInfo?.averageRating) ?? 0.0,
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        const SizedBox(height: 36),
         BooksAction(bookModel:  bookModel,),
      ],
    );
  }
}
