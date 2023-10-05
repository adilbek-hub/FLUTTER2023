import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:search_movers/domain/repasitory.dart';
import 'package:search_movers/presentation/components/user_tile.dart';
import 'package:search_movers/screens/user_details_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Movie> users = <Movie>[];
  List<Movie> _usersDisplay = <Movie>[];

  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    movieService.getData().then((value) {
      setState(() {
        _isLoading = false;
        users.addAll(value!);
        _usersDisplay = users;
        //print(_usersDisplay.length);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Movie List'),
      ),
      body: SafeArea(
        child: Container(
          child: ListView.builder(
            itemBuilder: (context, index) {
              if (!_isLoading) {
                return index == 0
                    ? _searchBar()
                    : UserTile(movie: _usersDisplay[index - 1]);
              } else {
                return const CupertinoActivityIndicator();
              }
            },
            itemCount: _usersDisplay.length + 1,
          ),
        ),
      ),
    );
  }

  _searchBar() {
    return Padding(
      padding: EdgeInsets.all(12.0),
      child: TextField(
        autofocus: false,
        onChanged: (searchText) {
          searchText = searchText.toLowerCase();
          setState(() {
            _usersDisplay = users.where((u) {
              var fName = u.data![0].releaseDate!.toLowerCase();
              var lName = u.data![0].title!.toLowerCase();
              var job = u.data![0].saga!.toLowerCase();
              return fName.contains(searchText) ||
                  lName.contains(searchText) ||
                  job.contains(searchText);
            }).toList();
          });
        },
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          prefixIcon: Icon(Icons.search),
          hintText: 'Search Users',
        ),
      ),
    );
  }
}
