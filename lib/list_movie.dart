import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:movie_list/model/movie.dart';

import 'model/api.dart';

class ListMovie extends StatefulWidget {
  const ListMovie({Key key}) : super(key: key);


  @override
  State<ListMovie> createState() => _ListMovieState();
}

class _ListMovieState extends State<ListMovie> {


  // var lmovie = List<Movie>();


  List<Movie> lmovie = [];
  

  _getMovie(){
    API.getMovies().then((response){
      setState(() {
      Iterable lista = json.decode(response.body);
      lmovie = lista.map((model) => Movie.fromJson(model)).toList();
      });
    });
  }

  _ListMovieState(){
    _getMovie();
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("List Movie"),
      ),
      body: listMovie(),
    );
  }



listMovie(){
  return ListView.builder(
    itemCount: lmovie.length,
    itemBuilder: (context, index){
      return ListTile(
        title: Text(lmovie[index].urlKey),
      );
    },
  );
}

}


