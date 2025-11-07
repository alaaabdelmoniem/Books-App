import 'package:books_app/Features/home/presentation/views/widgets/best_seller_list_view.dart';
import 'package:books_app/constants.dart';
import 'package:books_app/core/utils/styles.dart';
import 'package:books_app/features/home/presentation/views/widgets/Books_list_view.dart';
import 'package:flutter/material.dart';
import 'package:books_app/features/home/presentation/views/widgets/custom_app_bar.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
             const CustomAppBar(),
                const BooksListView(),
                const SizedBox(height: 50),
                Text(
                  'Best Seller',
                  style: Styles.textStyle18.copyWith(
                    fontFamily: kGtSectraFine,
                    fontSize: 21,
                  ),
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
          const BestSellerListView(),
        ],
      ),
    );
  }
}
