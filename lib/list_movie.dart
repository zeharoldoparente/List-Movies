import 'package:flutter/material.dart';
import 'package:movie_list/model/movie.dart';
import 'package:dio/dio.dart';

class ListMovie extends StatefulWidget {
  const ListMovie({Key? key}) : super(key: key);

  @override
  State<ListMovie> createState() => _ListMovieState();
}


class _ListMovieState extends State<ListMovie> {
  final dio = Dio();
  final url = 'https://api-content.ingresso.com/v0/sessions/city/28/theater/%20/partnership/%20';
  Future<List<Movie>> _getMovie() async {
    final response = await dio.get(url);
    final list = response.data as List;
    return list.map((json) => Movie.fromJson(json)).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("List Movie"),
      ),
      body: FutureBuilder(
        future: _getMovie(),
        builder: (context, AsyncSnapshot<List<Movie>> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }

          return ListView.builder(
            itemCount: snapshot.data?.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(snapshot.data.toString()),
              );
            },
          );
        },
      ),
    );
  }
}
