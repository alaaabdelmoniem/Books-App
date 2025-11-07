import 'package:books_app/Features/home/presentation/views/widgets/book_list_view_item.dart';
import 'package:books_app/Features/search/presentation/views/widgets/custom_search_text_field.dart';
import 'package:books_app/constants.dart';
import 'package:books_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomSearchTextField(),
          const SizedBox(height: 20),
          Text(
            'Search Result',
            style: Styles.textStyle18.copyWith(
              fontFamily: kGtSectraFine,
              fontSize: 21,
            ),
          ),
          const SizedBox(height: 20),
          const Expanded(child: SearchResultListView()),
        ],
      ),
    );
  }
}

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, indx) => const Padding(
        padding: EdgeInsets.symmetric(vertical: 10),
        child: BookListViewItem(),
      ),
    );
  }
}
