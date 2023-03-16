import 'package:counter_app_with_cubit/detail_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    print("build istedi");
    return Scaffold(
      appBar: AppBar(
        title: const Text('CounterApp With Cubit'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BlocBuilder<CounterCubit, int>(
              builder: (context, state) {
                print("Bloc ishtedi");
                return Text('$state');
              },
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailPage(),
                  ),
                );
              },
              child: const Icon(Icons.skip_next),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.read<CounterCubit>().implement();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

class CounterCubit extends Cubit<int> {
  CounterCubit() : super(0);
  implement() => emit(state + 1);
  degrement() => emit(state - 1);
}
