import 'package:books_app/Features/home/data/models/book_model/book_model.dart';
import 'package:books_app/Features/home/data/repos/home_repo.dart';
import 'package:books_app/core/utils/api_service.dart';
import 'package:books_app/core/utils/errors/failures.dart';
import 'package:dartz/dartz.dart';

class HomeRpoImplemention implements HomeReop {
  ApiService apiService;
  HomeRpoImplemention({required this.apiService});
  @override
  Future<Either<Failures, List<BookModel>>> fetchNewstBooks() async {
    try {
      var data = await apiService.get(
        endPoint:
            'volumes?q=subject:programming&filter =free-ebooks&orderBy =newest',
      );
      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return Right(books);
    } catch (e) {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failures, List<BookModel>>> fetchFeaturedBooks() {
    // TODO: implement fetchFeaturedBooks
    throw UnimplementedError();
  }
}
