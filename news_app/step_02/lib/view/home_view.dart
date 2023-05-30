import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:step_02/constants/api_constants.dart';
import 'package:step_02/model/top_news.dart';
import 'package:step_02/services/fetch_service.dart';
import 'package:step_02/theme/colors.dart';
import 'package:step_02/theme/text_style.dart';

class MyHomeView extends StatefulWidget {
  const MyHomeView({super.key});

  @override
  State<MyHomeView> createState() => _MyHomeViewState();
}

class _MyHomeViewState extends State<MyHomeView> {
  // 8.1 maindartta
  TopNews? topNews;

  //home_viewda bir metod bolsul al fetchNews metodu bolsun. Bul asinhronniy bolsun anan Future<void> bolsun.
  Future<void> fetchNews() async {
    // TopNews nulalibl kaytarat! topNewska TopNewsRepo().fetchTopNews(); барабарланды.
    topNews = await TopNewsRepo().fetchTopNews();
// Барабарлагандан кийин setState кылып коёбуз.
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    fetchNews();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.primary,
        title: const Text(AppText.topNewsAppBarTitle),
      ),
      // topNews nullga true bolso anda zagruzkany korsotup tura ber.
      body: topNews == null
          ? const Center(child: CircularProgressIndicator())
          // Эгер андай болбосо =>
          : ListView.builder(
              itemCount: topNews!.articles.length,
              itemBuilder: ((context, index) {
                final news = topNews!.articles[index];
                return Card(
                  // child: ListTile(
                  //   leading: Image.network(news.urlToImage ?? News.newsImage),
                  //   title: Text(news.title),
                  // ),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 3,
                        child: Image.network(news.urlToImage ?? News.newsImage),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        flex: 5,
                        child: Text(news.title),
                      ),
                    ],
                  ),
                );
              }),
            ),
    );
  }
}
