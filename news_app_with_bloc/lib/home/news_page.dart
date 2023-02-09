import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app_with_bloc/bloc/news_bloc.dart';
import 'package:news_app_with_bloc/components/loading_widget.dart';
import 'package:news_app_with_bloc/components/news_success_widget.dart';
import 'package:news_app_with_bloc/service/news_service.dart';

class NewsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          NewsBloc(newsService)..add(const NewsByCountryCodeEvent()),
      child: const NewsView(),
    );
  }
}

class NewsView extends StatelessWidget {
  const NewsView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('NEWS APP WITH BLOC'),
        ),
        body: BlocBuilder<NewsBloc, NewsState>(builder: (context, state) {
          if (state is NewsLoading) {
            return const LoadingWidget();
          } else if (state is NewsSuccess) {
            return NewsSuccessWidget(state.news);
          } else if (state is NewsError) {
            return ErrorWidget(state.text);
          } else {
            return const Center(
              child: Text('Belgisiz kata'),
            );
          }
        }));
  }
}
