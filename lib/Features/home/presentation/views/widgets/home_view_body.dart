import 'package:books_app/core/utils/styles.dart';
import 'package:books_app/features/home/presentation/views/widgets/Books_list_view.dart';
import 'package:flutter/material.dart';
import 'package:books_app/features/home/presentation/views/widgets/custom_app_bar.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(),
          BooksListView(),
          SizedBox(height: 50),
          Text('Best Seller', style: Styles.titleMedium),
        ],
      ),
    );
  }
}
