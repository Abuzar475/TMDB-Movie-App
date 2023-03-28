import "package:flutter_test/flutter_test.dart";
import 'package:movie_app/Core/Services/Movies/movieService.dart';

void main() {
  test('Api fetching test', () async {
    bool done = false;
    var fetch = (await MovieService().getUpcomingMovies())?.totalResult;
    if (fetch != null) {
      done = true;
    }
    expect(done, true);
  });

  test('should return movie details', () async {
    // Arrange
    final movieService = MovieService();

    // Act
    final detailsFuture = movieService.getMovieDetails('');

    // Assert
    expect(detailsFuture, throwsA(isA<Exception>()));
  });
}
