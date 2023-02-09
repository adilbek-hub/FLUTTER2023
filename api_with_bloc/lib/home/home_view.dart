import 'package:api_with_bloc/bloc/user_bloc.dart';
import 'package:api_with_bloc/models/model.dart';
import 'package:api_with_bloc/repo/repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => UserBloc(
        RepositoryProvider.of<UserRepo>(context),
      )..add(LoadingUserEvent()),
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.orange,
            title: const Text('HomeView'),
          ),
          body: BlocBuilder<UserBloc, UserState>(
            builder: (context, state) {
              if (state is UserLoadingState) {
                return const Center(child: CircularProgressIndicator());
              }
              if (state is UserLoadedState) {
                List<UserModel> userList = state.users;
                return ListView.builder(
                    itemCount: userList.length,
                    itemBuilder: ((context, index) {
                      return Card(
                          child: ListTile(
                        title: Text(userList[index].firstName),
                        subtitle: Text(userList[index].lastName),
                        trailing: CircleAvatar(
                          backgroundImage: NetworkImage(userList[index].avatar),
                        ),
                      ));
                    }));
              }
              return Container();
            },
          )),
    );
  }
}
