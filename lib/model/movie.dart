import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie.freezed.dart';
part 'movie.g.dart';

@freezed
abstract class Movie with _$Movie {
  const factory Movie({
    @JsonKey(name: 'Title') required String title,
    @JsonKey(name: 'Year') required String year,
    @JsonKey(name: 'Rated') required String rated,
    @JsonKey(name: 'Released') required String released,
    @JsonKey(name: 'Runtime') required String runtime,
    @JsonKey(name: 'Genre') required String genre,
    @JsonKey(name: 'Director') required String director,
    @JsonKey(name: 'Writer') required String writer,
    @JsonKey(name: 'Actors') required String actors,
    @JsonKey(name: 'Plot') required String plot,
    @JsonKey(name: 'Language') required String language,
    @JsonKey(name: 'Country') required String country,
    @JsonKey(name: 'Awards') required String awards,
    @JsonKey(name: 'Poster') required String poster,
    @JsonKey(name: 'Ratings') required List<MovieRating> ratings,
    @JsonKey(name: 'Metascore') required String metascore,
    required String imdbRating,
    required String imdbVotes,
    required String imdbID,
    @JsonKey(name: 'Type') required String type,
    @JsonKey(name: 'DVD') required String dvd,
    @JsonKey(name: 'BoxOffice') required String boxOffice,
    @JsonKey(name: 'Production') required String production,
    @JsonKey(name: 'Website') required String website,
    @JsonKey(name: 'Response') required String response,
  }) = _Movie;

  factory Movie.fromJson(Map<String, dynamic> json) => _$MovieFromJson(json);
}

@freezed
abstract class MovieRating with _$MovieRating {
  const factory MovieRating({
    @JsonKey(name: 'Source') required String source,
    @JsonKey(name: 'Value') required String value,
  }) = _MovieRating;

  factory MovieRating.fromJson(Map<String, dynamic> json) =>
      _$MovieRatingFromJson(json);
}
