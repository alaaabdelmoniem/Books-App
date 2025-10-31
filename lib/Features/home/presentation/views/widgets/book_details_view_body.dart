import 'package:books_app/Features/home/presentation/views/widgets/custom_book_details_app_bar_.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          children: [CustomBookDetailsAppBar()],
        ),
      ),
    );
  }
}
