import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_template/model/movie.dart';
parseJson(String jsonString) async {
    final data = jsonDecode(jsonString);
    List<Movie> dataList = data["movies"].map<Movie>((e) => Movie.fromJson(e)).toList();
    for(int i = 0;i<20000;i++){
      print("loading movies");
    }
    return dataList;
  }
class LoadWithIsolates extends StatefulWidget {
  const LoadWithIsolates({super.key});

  @override
  State<LoadWithIsolates> createState() => _LoadWithIsolatesState();
}

class _LoadWithIsolatesState extends State<LoadWithIsolates> {
  List<Movie> movieList = [];
  bool loaded = false;


  getMovies () async {
    final jsonString = await rootBundle.loadString("assets/json/movies.json");
        final dataList = parseJson(jsonString);
    // final dataList = await compute(parseJson, jsonString);
    movieList = dataList;
    setState(() {
       loaded = true;
    });
  }
  @override
  void initState() { 
    getMovies();
    super.initState();
    
  }
  @override
  Widget build(BuildContext context) {
    if(loaded==false){
      return Center(child: CircularProgressIndicator());
    }
    return Scaffold(
      body: Container(
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 3.w,
            mainAxisSpacing: 3.h
          ),
          itemBuilder: (context, index) {
            Movie item = movieList[index];
            return Container(
              child: Column(
                children: [
                  Expanded(child: Image.network(item.poster,fit: BoxFit.cover,)),
                  SizedBox(height: 10.h),
                  Text("${item.title}"),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
