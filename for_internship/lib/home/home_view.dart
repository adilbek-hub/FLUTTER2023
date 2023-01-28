// import 'dart:js';

// import 'dart:html';

// import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:for_internship/bloc/user_bloc.dart';
import 'package:for_internship/home/detail_screen.dart';
import 'package:for_internship/models/user_model.dart';
import 'package:for_internship/repo/repository.dart';
import 'package:for_internship/theme/app_text_style.dart';
import 'package:for_internship/theme/app_texts.dart';
import 'package:http/http.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => UserBloc(
        RepositoryProvider.of<UserRepository>(context),
      )..add(LoadUserEvent()),
      child: Scaffold(
        backgroundColor: Colors.grey[300],
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            AppText.homeViewAppBarText,
            style: TextStyle(backgroundColor: Colors.red[100]),
          ),
        ),
        body: BlocBuilder<UserBloc, UserState>(builder: ((context, state) {
          if (state is UserLoadingState) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          if (state is UserLoadedState) {
            List<UserModel> userList = state.users;
            return ListView.builder(
                itemCount: userList.length,
                itemBuilder: ((context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: ((context) =>
                                DetailScreen(e: userList[index]))));
                      },
                      child: Card(
                        color: Colors.blueGrey,
                        elevation: 4,
                        margin: const EdgeInsets.symmetric(vertical: 10),
                        child: Slidable(
                          startActionPane: ActionPane(
                              motion: const StretchMotion(),
                              children: [
                                SlidableAction(
                                  backgroundColor: Colors.green,
                                  icon: Icons.share,
                                  label: 'Share',
                                  onPressed: ((context) {}),
                                ),
                                SlidableAction(
                                    backgroundColor: Colors.blue,
                                    icon: Icons.archive,
                                    label: 'Archive',
                                    onPressed: ((context) {})),
                              ]),
                          endActionPane: ActionPane(
                              motion: const BehindMotion(),
                              children: [
                                SlidableAction(
                                  backgroundColor: Colors.red,
                                  icon: Icons.delete,
                                  label: 'Delete',
                                  onPressed: ((context) {
                                    BlocProvider.of<UserBloc>(context)
                                        .add(UserDeleteEvent(index));
                                  }),
                                ),
                              ]),
                          child: ListTile(
                            title: Text(
                              userList[index].firstName,
                              style: AppTextStyle.listTileTextStyle,
                            ),
                            subtitle: Text(
                              userList[index].lastName,
                              style: AppTextStyle.listTileTextStyle,
                            ),
                            trailing: CircleAvatar(
                              backgroundImage:
                                  NetworkImage(userList[index].avatar),
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                }));
          }
          if (state is UserErrorState) {
            return const Center(child: Text('ERROR'));
          }
          return Container();
        })),
      ),
    );
  }
}
