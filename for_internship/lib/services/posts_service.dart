import 'dart:convert';
import 'dart:developer';

import 'package:for_internship/models/modelposts.dart';
import 'package:http/http.dart' as http;

class PostsService {
  PostsService(this.client);
  final http.Client client;

  Future<List<Posts>?> getPosts() async {
    try {
      final uri = Uri.parse('https://jsonplaceholder.typicode.com/todos/1');
      final response = await client.get(uri);
      if (response.statusCode == 200 || response.statusCode == 201) {
        final body = jsonDecode(response.body) as Map<String, dynamic>;
        final posts = (body as List).map((e) => Posts.fromJson(e)).toList();
        return posts;
      } else {
        log(response.statusCode.toString());
      }
    } catch (e) {
      log(e.toString());
      return null;
    }
  }
}

final postsService = PostsService(http.Client());
