import 'package:books_app/Features/home/data/models/book_model/book_model.dart';
import 'package:books_app/core/functions/launch_url.dart';
import 'package:books_app/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        children: [
          const Expanded(
            child: CustomButton(
              textColor: Colors.black,
              backgroundcolor: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(14),
                bottomLeft: Radius.circular(14),
              ),
              text: 'Free',
              fontSize: 19,
            ),
          ),

          Expanded(
            child: CustomButton(
              onPressed: () async {
                await launchCustomUrl(
                  context,
                  'bookModel.volumeInfo!.previewLink!',
                );
              },
              text: getText(bookModel),
              textColor: Colors.white,
              backgroundcolor: const Color(0xFFEF8262),
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(14),
                bottomRight: Radius.circular(14),
              ),
            ),
          ),
        ],
      ),
    );
  }

  String getText(BookModel bookModel) {
    if (bookModel.volumeInfo!.previewLink == null) {
      return 'not available';
    } else {
      return 'Preview';
    }
  }
}
