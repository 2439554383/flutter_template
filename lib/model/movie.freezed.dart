// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Movie {

@JsonKey(name: 'Title') String get title;@JsonKey(name: 'Year') String get year;@JsonKey(name: 'Rated') String get rated;@JsonKey(name: 'Released') String get released;@JsonKey(name: 'Runtime') String get runtime;@JsonKey(name: 'Genre') String get genre;@JsonKey(name: 'Director') String get director;@JsonKey(name: 'Writer') String get writer;@JsonKey(name: 'Actors') String get actors;@JsonKey(name: 'Plot') String get plot;@JsonKey(name: 'Language') String get language;@JsonKey(name: 'Country') String get country;@JsonKey(name: 'Awards') String get awards;@JsonKey(name: 'Poster') String get poster;@JsonKey(name: 'Ratings') List<MovieRating> get ratings;@JsonKey(name: 'Metascore') String get metascore; String get imdbRating; String get imdbVotes; String get imdbID;@JsonKey(name: 'Type') String get type;@JsonKey(name: 'DVD') String get dvd;@JsonKey(name: 'BoxOffice') String get boxOffice;@JsonKey(name: 'Production') String get production;@JsonKey(name: 'Website') String get website;@JsonKey(name: 'Response') String get response;
/// Create a copy of Movie
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MovieCopyWith<Movie> get copyWith => _$MovieCopyWithImpl<Movie>(this as Movie, _$identity);

  /// Serializes this Movie to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Movie&&(identical(other.title, title) || other.title == title)&&(identical(other.year, year) || other.year == year)&&(identical(other.rated, rated) || other.rated == rated)&&(identical(other.released, released) || other.released == released)&&(identical(other.runtime, runtime) || other.runtime == runtime)&&(identical(other.genre, genre) || other.genre == genre)&&(identical(other.director, director) || other.director == director)&&(identical(other.writer, writer) || other.writer == writer)&&(identical(other.actors, actors) || other.actors == actors)&&(identical(other.plot, plot) || other.plot == plot)&&(identical(other.language, language) || other.language == language)&&(identical(other.country, country) || other.country == country)&&(identical(other.awards, awards) || other.awards == awards)&&(identical(other.poster, poster) || other.poster == poster)&&const DeepCollectionEquality().equals(other.ratings, ratings)&&(identical(other.metascore, metascore) || other.metascore == metascore)&&(identical(other.imdbRating, imdbRating) || other.imdbRating == imdbRating)&&(identical(other.imdbVotes, imdbVotes) || other.imdbVotes == imdbVotes)&&(identical(other.imdbID, imdbID) || other.imdbID == imdbID)&&(identical(other.type, type) || other.type == type)&&(identical(other.dvd, dvd) || other.dvd == dvd)&&(identical(other.boxOffice, boxOffice) || other.boxOffice == boxOffice)&&(identical(other.production, production) || other.production == production)&&(identical(other.website, website) || other.website == website)&&(identical(other.response, response) || other.response == response));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,title,year,rated,released,runtime,genre,director,writer,actors,plot,language,country,awards,poster,const DeepCollectionEquality().hash(ratings),metascore,imdbRating,imdbVotes,imdbID,type,dvd,boxOffice,production,website,response]);

@override
String toString() {
  return 'Movie(title: $title, year: $year, rated: $rated, released: $released, runtime: $runtime, genre: $genre, director: $director, writer: $writer, actors: $actors, plot: $plot, language: $language, country: $country, awards: $awards, poster: $poster, ratings: $ratings, metascore: $metascore, imdbRating: $imdbRating, imdbVotes: $imdbVotes, imdbID: $imdbID, type: $type, dvd: $dvd, boxOffice: $boxOffice, production: $production, website: $website, response: $response)';
}


}

/// @nodoc
abstract mixin class $MovieCopyWith<$Res>  {
  factory $MovieCopyWith(Movie value, $Res Function(Movie) _then) = _$MovieCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'Title') String title,@JsonKey(name: 'Year') String year,@JsonKey(name: 'Rated') String rated,@JsonKey(name: 'Released') String released,@JsonKey(name: 'Runtime') String runtime,@JsonKey(name: 'Genre') String genre,@JsonKey(name: 'Director') String director,@JsonKey(name: 'Writer') String writer,@JsonKey(name: 'Actors') String actors,@JsonKey(name: 'Plot') String plot,@JsonKey(name: 'Language') String language,@JsonKey(name: 'Country') String country,@JsonKey(name: 'Awards') String awards,@JsonKey(name: 'Poster') String poster,@JsonKey(name: 'Ratings') List<MovieRating> ratings,@JsonKey(name: 'Metascore') String metascore, String imdbRating, String imdbVotes, String imdbID,@JsonKey(name: 'Type') String type,@JsonKey(name: 'DVD') String dvd,@JsonKey(name: 'BoxOffice') String boxOffice,@JsonKey(name: 'Production') String production,@JsonKey(name: 'Website') String website,@JsonKey(name: 'Response') String response
});




}
/// @nodoc
class _$MovieCopyWithImpl<$Res>
    implements $MovieCopyWith<$Res> {
  _$MovieCopyWithImpl(this._self, this._then);

  final Movie _self;
  final $Res Function(Movie) _then;

/// Create a copy of Movie
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = null,Object? year = null,Object? rated = null,Object? released = null,Object? runtime = null,Object? genre = null,Object? director = null,Object? writer = null,Object? actors = null,Object? plot = null,Object? language = null,Object? country = null,Object? awards = null,Object? poster = null,Object? ratings = null,Object? metascore = null,Object? imdbRating = null,Object? imdbVotes = null,Object? imdbID = null,Object? type = null,Object? dvd = null,Object? boxOffice = null,Object? production = null,Object? website = null,Object? response = null,}) {
  return _then(_self.copyWith(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,year: null == year ? _self.year : year // ignore: cast_nullable_to_non_nullable
as String,rated: null == rated ? _self.rated : rated // ignore: cast_nullable_to_non_nullable
as String,released: null == released ? _self.released : released // ignore: cast_nullable_to_non_nullable
as String,runtime: null == runtime ? _self.runtime : runtime // ignore: cast_nullable_to_non_nullable
as String,genre: null == genre ? _self.genre : genre // ignore: cast_nullable_to_non_nullable
as String,director: null == director ? _self.director : director // ignore: cast_nullable_to_non_nullable
as String,writer: null == writer ? _self.writer : writer // ignore: cast_nullable_to_non_nullable
as String,actors: null == actors ? _self.actors : actors // ignore: cast_nullable_to_non_nullable
as String,plot: null == plot ? _self.plot : plot // ignore: cast_nullable_to_non_nullable
as String,language: null == language ? _self.language : language // ignore: cast_nullable_to_non_nullable
as String,country: null == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as String,awards: null == awards ? _self.awards : awards // ignore: cast_nullable_to_non_nullable
as String,poster: null == poster ? _self.poster : poster // ignore: cast_nullable_to_non_nullable
as String,ratings: null == ratings ? _self.ratings : ratings // ignore: cast_nullable_to_non_nullable
as List<MovieRating>,metascore: null == metascore ? _self.metascore : metascore // ignore: cast_nullable_to_non_nullable
as String,imdbRating: null == imdbRating ? _self.imdbRating : imdbRating // ignore: cast_nullable_to_non_nullable
as String,imdbVotes: null == imdbVotes ? _self.imdbVotes : imdbVotes // ignore: cast_nullable_to_non_nullable
as String,imdbID: null == imdbID ? _self.imdbID : imdbID // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,dvd: null == dvd ? _self.dvd : dvd // ignore: cast_nullable_to_non_nullable
as String,boxOffice: null == boxOffice ? _self.boxOffice : boxOffice // ignore: cast_nullable_to_non_nullable
as String,production: null == production ? _self.production : production // ignore: cast_nullable_to_non_nullable
as String,website: null == website ? _self.website : website // ignore: cast_nullable_to_non_nullable
as String,response: null == response ? _self.response : response // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [Movie].
extension MoviePatterns on Movie {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Movie value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Movie() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Movie value)  $default,){
final _that = this;
switch (_that) {
case _Movie():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Movie value)?  $default,){
final _that = this;
switch (_that) {
case _Movie() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'Title')  String title, @JsonKey(name: 'Year')  String year, @JsonKey(name: 'Rated')  String rated, @JsonKey(name: 'Released')  String released, @JsonKey(name: 'Runtime')  String runtime, @JsonKey(name: 'Genre')  String genre, @JsonKey(name: 'Director')  String director, @JsonKey(name: 'Writer')  String writer, @JsonKey(name: 'Actors')  String actors, @JsonKey(name: 'Plot')  String plot, @JsonKey(name: 'Language')  String language, @JsonKey(name: 'Country')  String country, @JsonKey(name: 'Awards')  String awards, @JsonKey(name: 'Poster')  String poster, @JsonKey(name: 'Ratings')  List<MovieRating> ratings, @JsonKey(name: 'Metascore')  String metascore,  String imdbRating,  String imdbVotes,  String imdbID, @JsonKey(name: 'Type')  String type, @JsonKey(name: 'DVD')  String dvd, @JsonKey(name: 'BoxOffice')  String boxOffice, @JsonKey(name: 'Production')  String production, @JsonKey(name: 'Website')  String website, @JsonKey(name: 'Response')  String response)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Movie() when $default != null:
return $default(_that.title,_that.year,_that.rated,_that.released,_that.runtime,_that.genre,_that.director,_that.writer,_that.actors,_that.plot,_that.language,_that.country,_that.awards,_that.poster,_that.ratings,_that.metascore,_that.imdbRating,_that.imdbVotes,_that.imdbID,_that.type,_that.dvd,_that.boxOffice,_that.production,_that.website,_that.response);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'Title')  String title, @JsonKey(name: 'Year')  String year, @JsonKey(name: 'Rated')  String rated, @JsonKey(name: 'Released')  String released, @JsonKey(name: 'Runtime')  String runtime, @JsonKey(name: 'Genre')  String genre, @JsonKey(name: 'Director')  String director, @JsonKey(name: 'Writer')  String writer, @JsonKey(name: 'Actors')  String actors, @JsonKey(name: 'Plot')  String plot, @JsonKey(name: 'Language')  String language, @JsonKey(name: 'Country')  String country, @JsonKey(name: 'Awards')  String awards, @JsonKey(name: 'Poster')  String poster, @JsonKey(name: 'Ratings')  List<MovieRating> ratings, @JsonKey(name: 'Metascore')  String metascore,  String imdbRating,  String imdbVotes,  String imdbID, @JsonKey(name: 'Type')  String type, @JsonKey(name: 'DVD')  String dvd, @JsonKey(name: 'BoxOffice')  String boxOffice, @JsonKey(name: 'Production')  String production, @JsonKey(name: 'Website')  String website, @JsonKey(name: 'Response')  String response)  $default,) {final _that = this;
switch (_that) {
case _Movie():
return $default(_that.title,_that.year,_that.rated,_that.released,_that.runtime,_that.genre,_that.director,_that.writer,_that.actors,_that.plot,_that.language,_that.country,_that.awards,_that.poster,_that.ratings,_that.metascore,_that.imdbRating,_that.imdbVotes,_that.imdbID,_that.type,_that.dvd,_that.boxOffice,_that.production,_that.website,_that.response);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'Title')  String title, @JsonKey(name: 'Year')  String year, @JsonKey(name: 'Rated')  String rated, @JsonKey(name: 'Released')  String released, @JsonKey(name: 'Runtime')  String runtime, @JsonKey(name: 'Genre')  String genre, @JsonKey(name: 'Director')  String director, @JsonKey(name: 'Writer')  String writer, @JsonKey(name: 'Actors')  String actors, @JsonKey(name: 'Plot')  String plot, @JsonKey(name: 'Language')  String language, @JsonKey(name: 'Country')  String country, @JsonKey(name: 'Awards')  String awards, @JsonKey(name: 'Poster')  String poster, @JsonKey(name: 'Ratings')  List<MovieRating> ratings, @JsonKey(name: 'Metascore')  String metascore,  String imdbRating,  String imdbVotes,  String imdbID, @JsonKey(name: 'Type')  String type, @JsonKey(name: 'DVD')  String dvd, @JsonKey(name: 'BoxOffice')  String boxOffice, @JsonKey(name: 'Production')  String production, @JsonKey(name: 'Website')  String website, @JsonKey(name: 'Response')  String response)?  $default,) {final _that = this;
switch (_that) {
case _Movie() when $default != null:
return $default(_that.title,_that.year,_that.rated,_that.released,_that.runtime,_that.genre,_that.director,_that.writer,_that.actors,_that.plot,_that.language,_that.country,_that.awards,_that.poster,_that.ratings,_that.metascore,_that.imdbRating,_that.imdbVotes,_that.imdbID,_that.type,_that.dvd,_that.boxOffice,_that.production,_that.website,_that.response);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Movie implements Movie {
  const _Movie({@JsonKey(name: 'Title') required this.title, @JsonKey(name: 'Year') required this.year, @JsonKey(name: 'Rated') required this.rated, @JsonKey(name: 'Released') required this.released, @JsonKey(name: 'Runtime') required this.runtime, @JsonKey(name: 'Genre') required this.genre, @JsonKey(name: 'Director') required this.director, @JsonKey(name: 'Writer') required this.writer, @JsonKey(name: 'Actors') required this.actors, @JsonKey(name: 'Plot') required this.plot, @JsonKey(name: 'Language') required this.language, @JsonKey(name: 'Country') required this.country, @JsonKey(name: 'Awards') required this.awards, @JsonKey(name: 'Poster') required this.poster, @JsonKey(name: 'Ratings') required final  List<MovieRating> ratings, @JsonKey(name: 'Metascore') required this.metascore, required this.imdbRating, required this.imdbVotes, required this.imdbID, @JsonKey(name: 'Type') required this.type, @JsonKey(name: 'DVD') required this.dvd, @JsonKey(name: 'BoxOffice') required this.boxOffice, @JsonKey(name: 'Production') required this.production, @JsonKey(name: 'Website') required this.website, @JsonKey(name: 'Response') required this.response}): _ratings = ratings;
  factory _Movie.fromJson(Map<String, dynamic> json) => _$MovieFromJson(json);

@override@JsonKey(name: 'Title') final  String title;
@override@JsonKey(name: 'Year') final  String year;
@override@JsonKey(name: 'Rated') final  String rated;
@override@JsonKey(name: 'Released') final  String released;
@override@JsonKey(name: 'Runtime') final  String runtime;
@override@JsonKey(name: 'Genre') final  String genre;
@override@JsonKey(name: 'Director') final  String director;
@override@JsonKey(name: 'Writer') final  String writer;
@override@JsonKey(name: 'Actors') final  String actors;
@override@JsonKey(name: 'Plot') final  String plot;
@override@JsonKey(name: 'Language') final  String language;
@override@JsonKey(name: 'Country') final  String country;
@override@JsonKey(name: 'Awards') final  String awards;
@override@JsonKey(name: 'Poster') final  String poster;
 final  List<MovieRating> _ratings;
@override@JsonKey(name: 'Ratings') List<MovieRating> get ratings {
  if (_ratings is EqualUnmodifiableListView) return _ratings;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_ratings);
}

@override@JsonKey(name: 'Metascore') final  String metascore;
@override final  String imdbRating;
@override final  String imdbVotes;
@override final  String imdbID;
@override@JsonKey(name: 'Type') final  String type;
@override@JsonKey(name: 'DVD') final  String dvd;
@override@JsonKey(name: 'BoxOffice') final  String boxOffice;
@override@JsonKey(name: 'Production') final  String production;
@override@JsonKey(name: 'Website') final  String website;
@override@JsonKey(name: 'Response') final  String response;

/// Create a copy of Movie
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MovieCopyWith<_Movie> get copyWith => __$MovieCopyWithImpl<_Movie>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MovieToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Movie&&(identical(other.title, title) || other.title == title)&&(identical(other.year, year) || other.year == year)&&(identical(other.rated, rated) || other.rated == rated)&&(identical(other.released, released) || other.released == released)&&(identical(other.runtime, runtime) || other.runtime == runtime)&&(identical(other.genre, genre) || other.genre == genre)&&(identical(other.director, director) || other.director == director)&&(identical(other.writer, writer) || other.writer == writer)&&(identical(other.actors, actors) || other.actors == actors)&&(identical(other.plot, plot) || other.plot == plot)&&(identical(other.language, language) || other.language == language)&&(identical(other.country, country) || other.country == country)&&(identical(other.awards, awards) || other.awards == awards)&&(identical(other.poster, poster) || other.poster == poster)&&const DeepCollectionEquality().equals(other._ratings, _ratings)&&(identical(other.metascore, metascore) || other.metascore == metascore)&&(identical(other.imdbRating, imdbRating) || other.imdbRating == imdbRating)&&(identical(other.imdbVotes, imdbVotes) || other.imdbVotes == imdbVotes)&&(identical(other.imdbID, imdbID) || other.imdbID == imdbID)&&(identical(other.type, type) || other.type == type)&&(identical(other.dvd, dvd) || other.dvd == dvd)&&(identical(other.boxOffice, boxOffice) || other.boxOffice == boxOffice)&&(identical(other.production, production) || other.production == production)&&(identical(other.website, website) || other.website == website)&&(identical(other.response, response) || other.response == response));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,title,year,rated,released,runtime,genre,director,writer,actors,plot,language,country,awards,poster,const DeepCollectionEquality().hash(_ratings),metascore,imdbRating,imdbVotes,imdbID,type,dvd,boxOffice,production,website,response]);

@override
String toString() {
  return 'Movie(title: $title, year: $year, rated: $rated, released: $released, runtime: $runtime, genre: $genre, director: $director, writer: $writer, actors: $actors, plot: $plot, language: $language, country: $country, awards: $awards, poster: $poster, ratings: $ratings, metascore: $metascore, imdbRating: $imdbRating, imdbVotes: $imdbVotes, imdbID: $imdbID, type: $type, dvd: $dvd, boxOffice: $boxOffice, production: $production, website: $website, response: $response)';
}


}

/// @nodoc
abstract mixin class _$MovieCopyWith<$Res> implements $MovieCopyWith<$Res> {
  factory _$MovieCopyWith(_Movie value, $Res Function(_Movie) _then) = __$MovieCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'Title') String title,@JsonKey(name: 'Year') String year,@JsonKey(name: 'Rated') String rated,@JsonKey(name: 'Released') String released,@JsonKey(name: 'Runtime') String runtime,@JsonKey(name: 'Genre') String genre,@JsonKey(name: 'Director') String director,@JsonKey(name: 'Writer') String writer,@JsonKey(name: 'Actors') String actors,@JsonKey(name: 'Plot') String plot,@JsonKey(name: 'Language') String language,@JsonKey(name: 'Country') String country,@JsonKey(name: 'Awards') String awards,@JsonKey(name: 'Poster') String poster,@JsonKey(name: 'Ratings') List<MovieRating> ratings,@JsonKey(name: 'Metascore') String metascore, String imdbRating, String imdbVotes, String imdbID,@JsonKey(name: 'Type') String type,@JsonKey(name: 'DVD') String dvd,@JsonKey(name: 'BoxOffice') String boxOffice,@JsonKey(name: 'Production') String production,@JsonKey(name: 'Website') String website,@JsonKey(name: 'Response') String response
});




}
/// @nodoc
class __$MovieCopyWithImpl<$Res>
    implements _$MovieCopyWith<$Res> {
  __$MovieCopyWithImpl(this._self, this._then);

  final _Movie _self;
  final $Res Function(_Movie) _then;

/// Create a copy of Movie
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = null,Object? year = null,Object? rated = null,Object? released = null,Object? runtime = null,Object? genre = null,Object? director = null,Object? writer = null,Object? actors = null,Object? plot = null,Object? language = null,Object? country = null,Object? awards = null,Object? poster = null,Object? ratings = null,Object? metascore = null,Object? imdbRating = null,Object? imdbVotes = null,Object? imdbID = null,Object? type = null,Object? dvd = null,Object? boxOffice = null,Object? production = null,Object? website = null,Object? response = null,}) {
  return _then(_Movie(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,year: null == year ? _self.year : year // ignore: cast_nullable_to_non_nullable
as String,rated: null == rated ? _self.rated : rated // ignore: cast_nullable_to_non_nullable
as String,released: null == released ? _self.released : released // ignore: cast_nullable_to_non_nullable
as String,runtime: null == runtime ? _self.runtime : runtime // ignore: cast_nullable_to_non_nullable
as String,genre: null == genre ? _self.genre : genre // ignore: cast_nullable_to_non_nullable
as String,director: null == director ? _self.director : director // ignore: cast_nullable_to_non_nullable
as String,writer: null == writer ? _self.writer : writer // ignore: cast_nullable_to_non_nullable
as String,actors: null == actors ? _self.actors : actors // ignore: cast_nullable_to_non_nullable
as String,plot: null == plot ? _self.plot : plot // ignore: cast_nullable_to_non_nullable
as String,language: null == language ? _self.language : language // ignore: cast_nullable_to_non_nullable
as String,country: null == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as String,awards: null == awards ? _self.awards : awards // ignore: cast_nullable_to_non_nullable
as String,poster: null == poster ? _self.poster : poster // ignore: cast_nullable_to_non_nullable
as String,ratings: null == ratings ? _self._ratings : ratings // ignore: cast_nullable_to_non_nullable
as List<MovieRating>,metascore: null == metascore ? _self.metascore : metascore // ignore: cast_nullable_to_non_nullable
as String,imdbRating: null == imdbRating ? _self.imdbRating : imdbRating // ignore: cast_nullable_to_non_nullable
as String,imdbVotes: null == imdbVotes ? _self.imdbVotes : imdbVotes // ignore: cast_nullable_to_non_nullable
as String,imdbID: null == imdbID ? _self.imdbID : imdbID // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,dvd: null == dvd ? _self.dvd : dvd // ignore: cast_nullable_to_non_nullable
as String,boxOffice: null == boxOffice ? _self.boxOffice : boxOffice // ignore: cast_nullable_to_non_nullable
as String,production: null == production ? _self.production : production // ignore: cast_nullable_to_non_nullable
as String,website: null == website ? _self.website : website // ignore: cast_nullable_to_non_nullable
as String,response: null == response ? _self.response : response // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$MovieRating {

@JsonKey(name: 'Source') String get source;@JsonKey(name: 'Value') String get value;
/// Create a copy of MovieRating
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MovieRatingCopyWith<MovieRating> get copyWith => _$MovieRatingCopyWithImpl<MovieRating>(this as MovieRating, _$identity);

  /// Serializes this MovieRating to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MovieRating&&(identical(other.source, source) || other.source == source)&&(identical(other.value, value) || other.value == value));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,source,value);

@override
String toString() {
  return 'MovieRating(source: $source, value: $value)';
}


}

/// @nodoc
abstract mixin class $MovieRatingCopyWith<$Res>  {
  factory $MovieRatingCopyWith(MovieRating value, $Res Function(MovieRating) _then) = _$MovieRatingCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'Source') String source,@JsonKey(name: 'Value') String value
});




}
/// @nodoc
class _$MovieRatingCopyWithImpl<$Res>
    implements $MovieRatingCopyWith<$Res> {
  _$MovieRatingCopyWithImpl(this._self, this._then);

  final MovieRating _self;
  final $Res Function(MovieRating) _then;

/// Create a copy of MovieRating
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? source = null,Object? value = null,}) {
  return _then(_self.copyWith(
source: null == source ? _self.source : source // ignore: cast_nullable_to_non_nullable
as String,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [MovieRating].
extension MovieRatingPatterns on MovieRating {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MovieRating value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MovieRating() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MovieRating value)  $default,){
final _that = this;
switch (_that) {
case _MovieRating():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MovieRating value)?  $default,){
final _that = this;
switch (_that) {
case _MovieRating() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'Source')  String source, @JsonKey(name: 'Value')  String value)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MovieRating() when $default != null:
return $default(_that.source,_that.value);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'Source')  String source, @JsonKey(name: 'Value')  String value)  $default,) {final _that = this;
switch (_that) {
case _MovieRating():
return $default(_that.source,_that.value);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'Source')  String source, @JsonKey(name: 'Value')  String value)?  $default,) {final _that = this;
switch (_that) {
case _MovieRating() when $default != null:
return $default(_that.source,_that.value);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MovieRating implements MovieRating {
  const _MovieRating({@JsonKey(name: 'Source') required this.source, @JsonKey(name: 'Value') required this.value});
  factory _MovieRating.fromJson(Map<String, dynamic> json) => _$MovieRatingFromJson(json);

@override@JsonKey(name: 'Source') final  String source;
@override@JsonKey(name: 'Value') final  String value;

/// Create a copy of MovieRating
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MovieRatingCopyWith<_MovieRating> get copyWith => __$MovieRatingCopyWithImpl<_MovieRating>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MovieRatingToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MovieRating&&(identical(other.source, source) || other.source == source)&&(identical(other.value, value) || other.value == value));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,source,value);

@override
String toString() {
  return 'MovieRating(source: $source, value: $value)';
}


}

/// @nodoc
abstract mixin class _$MovieRatingCopyWith<$Res> implements $MovieRatingCopyWith<$Res> {
  factory _$MovieRatingCopyWith(_MovieRating value, $Res Function(_MovieRating) _then) = __$MovieRatingCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'Source') String source,@JsonKey(name: 'Value') String value
});




}
/// @nodoc
class __$MovieRatingCopyWithImpl<$Res>
    implements _$MovieRatingCopyWith<$Res> {
  __$MovieRatingCopyWithImpl(this._self, this._then);

  final _MovieRating _self;
  final $Res Function(_MovieRating) _then;

/// Create a copy of MovieRating
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? source = null,Object? value = null,}) {
  return _then(_MovieRating(
source: null == source ? _self.source : source // ignore: cast_nullable_to_non_nullable
as String,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
