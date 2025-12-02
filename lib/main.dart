import 'package:books_app/Features/home/data/repos/home_repo_impl.dart';
import 'package:books_app/Features/home/presentation/manager/Featured_books_cubit/featured_books_cubit.dart';
import 'package:books_app/Features/home/presentation/manager/newset_books_cubit/newset_books_cubit.dart';
import 'package:books_app/constants.dart';
import 'package:books_app/core/utils/app_router.dart';
import 'package:books_app/core/utils/service_locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  setputServicelocator();
  runApp(const BooksApp());
}

class BooksApp extends StatelessWidget {
  const BooksApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              FeaturedBooksCubit(getIt.get<HomeRpoImplemention>())
                ..fetchFeaturedBooks(),
        ),
        BlocProvider(
          create: (context) =>
              NewsetBooksCubit(getIt.get<HomeRpoImplemention>()),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: kPrimaryColor,
          textTheme: GoogleFonts.montserratTextTheme(
            ThemeData.dark().textTheme,
          ),
        ),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
