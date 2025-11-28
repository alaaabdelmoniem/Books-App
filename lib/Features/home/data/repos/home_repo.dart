import 'package:books_app/Features/home/data/models/book_model/book_model.dart';
import 'package:books_app/core/utils/errors/failures.dart';
import 'package:dartz/dartz.dart';

abstract class HomeReop {
  Future<Either<Failures, List<BookModel>>> fetchNewsetBooks();
  Future<Either<Failures, List<BookModel>>> fetchFeaturedBooks();
}
