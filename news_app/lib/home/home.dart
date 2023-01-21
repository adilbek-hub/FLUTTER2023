import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import 'package:news_app/home/view/drawer_view.dart';

import 'package:news_app/models/news_model.dart';
import 'package:news_app/theme/app_colors.dart';

import 'package:news_app/theme/app_text_style.dart';
import 'package:flutter/cupertino.dart';

class NewsView extends StatefulWidget {
  const NewsView({super.key});

  @override
  State<NewsView> createState() => _NewsViewState();
}

class _NewsViewState extends State<NewsView> {
  final _Formkey = GlobalKey<FormState>();
  final _title = TextEditingController();
  final _description = TextEditingController();
  final _author = TextEditingController();

  @override
  void initState() {
    super.initState();
    readTodos();
  }

  Stream<QuerySnapshot> readTodos() {
    final db = FirebaseFirestore.instance;
    return db.collection('newsCollection').snapshots();
  }

  Future<void> addTodo() async {
    final db = FirebaseFirestore.instance;
    final news = NewsModel(
        title: _title.text,
        description: _description.text,
        author: _author.text);
    await db.collection('newsCollection').add(news.toMapBol());
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: readTodos(),
      builder: ((context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(child: const CupertinoActivityIndicator());
        } else if (snapshot.hasError) {
          return Center(child: Text(snapshot.hasError.toString()));
        } else if (snapshot.hasData) {
          final List<NewsModel> newsModel = snapshot.data!.docs
              .map((e) => NewsModel.fromMap(e.data() as Map<String, dynamic>))
              .toList();
          return ListView.builder(
              itemCount: newsModel.length,
              itemBuilder: ((context, index) {
                final news = newsModel[index];
                return Card(
                    child: ListTile(
                  title: Text(news.title),
                  subtitle: Column(
                    children: [
                      Text(news.description),
                      Text(news.author),
                    ],
                  ),
                ));
              }));
        } else {
          return Text('Some Error');
        }
      }),
    );
  }

  //       appBar: AppBar(
  //         backgroundColor: AppColors.forAppColorWhite,
  //         centerTitle: true,
  //         title: const Text('Жаңылыктар', style: AppTextStyle.fortextStyle),
  //         leading: Builder(
  //           builder: (BuildContext context) {
  //             return IconButton(
  //               icon: const Icon(
  //                 Icons.menu,
  //                 color: AppColors.iconColor,
  //                 size: 22, // Changing Drawer Icon Size
  //               ),
  //               onPressed: () {
  //                 Scaffold.of(context).openDrawer();
  //               },
  //               tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
  //             );
  //           },
  //         ),
  //         actions: [
  //           IconButton(
  //             onPressed: () {},
  //             icon: const Icon(
  //               Icons.search,
  //               color: AppColors.forAppColorGreen,
  //             ),
  //           ),
  //           IconButton(
  //             onPressed: () {},
  //             icon: const Icon(
  //               Icons.more_vert,
  //               color: AppColors.forAppColorGreen,
  //             ),
  //           ),
  //         ],
  //         elevation: 1,
  //       ),
  //       drawer: const DriwerVidget(),
  //       body: DefaultTabController(
  //         length: 3,
  //         child: Column(
  //           children: [
  //             Material(
  //               child: Container(
  //                 height: 55,
  //                 color: AppColors.forAppColorWhite,
  //                 child: const TabBar(
  //                   labelStyle: AppTextStyle.textLabelStyle,
  //                   physics: ClampingScrollPhysics(),
  //                   padding: EdgeInsets.all(10),
  //                   labelColor: AppColors.labelColor,
  //                   unselectedLabelColor: Colors.grey,
  //                   indicatorSize: TabBarIndicatorSize.label,
  //                   indicatorColor: Colors.green,
  //                   tabs: [
  //                     Tab(
  //                       text: 'АКТУАЛДУУ',
  //                     ),
  //                     Tab(text: 'ВИДЕО'),
  //                     Tab(text: 'ПАЙДАЛУУ')
  //                   ],
  //                 ),
  //               ),
  //             ),
  //             Expanded(
  //                 child: TabBarView(children: [
  //               ListView.builder(
  //                 padding: const EdgeInsets.all(0),
  //                 itemCount: 20,
  //                 itemBuilder: ((context, index) {
  //                   return Container(
  //                     decoration: const BoxDecoration(
  //                         border:
  //                             Border(bottom: BorderSide(color: Colors.grey))),
  //                     child: ListTile(
  //                       onTap: (() {}),
  //                       leading: const Image(
  //                           image: AssetImage('assets/images/ITImage.jpg')),
  //                       title: Text(
  //                           'Айтишниктер чачтан көп бирок Айти компанияларга бул жетишсиз $index'),
  //                       subtitle: const Text('17.12.2022 | көрүүчү:8600'),
  //                     ),
  //                   );
  //                 }),
  //               ),
  //               ListView.builder(
  //                 padding: const EdgeInsets.all(15),
  //                 itemCount: 20,
  //                 itemBuilder: ((context, index) {
  //                   return Container(
  //                     decoration: const BoxDecoration(
  //                         border:
  //                             Border(bottom: BorderSide(color: Colors.grey))),
  //                     child: ListTile(
  //                       onTap: (() {}),
  //                       leading: const Image(
  //                           image: AssetImage('assets/images/googleImage.jpg')),
  //                       title: Text(
  //                           'Google корпорациясы дүйнөдө болуп көрбөгөндөй технология чыгарды $index'),
  //                       subtitle: const Text('17.12.2022 | көрүүчү:1950'),
  //                     ),
  //                   );
  //                 }),
  //               ),
  //               ListView.builder(
  //                 padding: const EdgeInsets.all(15),
  //                 itemCount: 20,
  //                 itemBuilder: ((context, index) {
  //                   return Container(
  //                     decoration: const BoxDecoration(
  //                         border:
  //                             Border(bottom: BorderSide(color: Colors.grey))),
  //                     child: ListTile(
  //                       onTap: (() {}),
  //                       leading: const Image(
  //                           image: AssetImage(
  //                               'assets/images/ITTechnologyImage.jpg')),
  //                       title: Text(
  //                           'Кыргызстанда Айти окуу активдүү орун алууда $index'),
  //                       subtitle: const Text('17.12.2022 | көрүүчү:12000'),
  //                     ),
  //                   );
  //                 }),
  //               ),
  //             ]))
  //           ],
  //         ),
  //       ));
}
