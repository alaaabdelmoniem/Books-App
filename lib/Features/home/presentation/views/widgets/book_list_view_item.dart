import 'package:books_app/Features/home/data/models/book_model/book_model.dart';
import 'package:books_app/Features/home/presentation/views/widgets/book_rating.dart';
import 'package:books_app/Features/home/presentation/views/widgets/custom_new_book_item.dart';
import 'package:books_app/constants.dart';
import 'package:books_app/core/utils/app_router.dart';
import 'package:books_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BookListViewItem extends StatelessWidget {
  const BookListViewItem({super.key, required this.book});
  final BookModel book;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => GoRouter.of(context).push(AppRouter.kBookDetails),
      child: SizedBox(
        height: 125,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: CustomNewBookItem(
                imageUrl: (book.volumeInfo?.imageLinks?.thumbnail) ?? '',
              ),
            ),
            const SizedBox(width: 30),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .5,
                    child: Text(
                      book.volumeInfo!.title!,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: Styles.textStyle20.copyWith(
                        fontFamily: kGtSectraFine,
                        fontSize: 22,
                      ),
                    ),
                  ),
                  const SizedBox(height: 3),
                  Text(
                    (book.volumeInfo?.authors?[0]) ?? 'NonKown',
                    style: Styles.textStyle14,
                  ),
                  const SizedBox(height: 3),

                  Row(
                    children: [
                      Text(
                        'Free',
                        style: Styles.textStyle20.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Spacer(),
                      BookRating(count: (book.volumeInfo?.ratingCount) ?? 0,averageRating: (book.volumeInfo?.averageRating) ?? 0.0,),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
