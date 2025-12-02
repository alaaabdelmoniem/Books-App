import 'package:books_app/Features/home/presentation/manager/Featured_books_cubit/featured_books_cubit.dart';
import 'package:books_app/Features/home/presentation/views/widgets/custom_book_item.dart';
import 'package:books_app/core/widgets/custom_error_widget.dart';
import 'package:books_app/core/widgets/custom_loading_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BooksListView extends StatelessWidget {
  const BooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if (state is FeaturedBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .3,

            child: ListView.builder(
              physics:const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: state.books.length,
              itemBuilder: (context, indx) {
              
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: CustomBookItem(
                    imageUrl:
                        (state.books[indx].volumeInfo?.imageLinks?.thumbnail) ??
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ4OiY0zeiskXGyTGHlVkmvaEhNS0hdytDzPg&s',
                  ),
                );
              },
            ),
          );
        } else if (state is FeaturedBooksFailure) {
          return CustomErrorWidget(errorMessage: state.errorMessage);
        } else {
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}
