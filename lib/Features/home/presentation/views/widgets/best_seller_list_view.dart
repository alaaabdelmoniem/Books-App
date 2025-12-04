import 'package:books_app/Features/home/presentation/manager/newset_books_cubit/newset_books_cubit.dart';
import 'package:books_app/Features/home/presentation/views/widgets/book_list_view_item.dart';
import 'package:books_app/core/widgets/custom_error_widget.dart';
import 'package:books_app/core/widgets/custom_loading_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewsetBooksCubit, NewsetBooksState>(
      builder: (context, state) {
        if (state is NewsetBooksSuccess) {
          return SliverList(
            delegate: SliverChildBuilderDelegate((context, index) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: BookListViewItem(book: state.books[index]),
              );
            }, childCount: state.books.length),
          );
        } else if (state is NewsetBooksFailure) {
          return SliverToBoxAdapter(
            child: CustomErrorWidget(errorMessage: state.errorMessage),
          );
        } else {
          return const SliverToBoxAdapter(child: CustomLoadingIndicator());
        }
      },
    );
  }
}
