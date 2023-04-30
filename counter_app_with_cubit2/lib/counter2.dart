import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Counter2 extends StatelessWidget {
  Counter2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter2'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BlocBuilder<CounterCubit2, int>(
              builder: (context, state) {
                return Text('$state');
              },
            ),
            ElevatedButton(
              onPressed: () {
                context.read<CounterCubit2>().degrement();
              },
              child: Text('degrement'),
            ),
            ElevatedButton(
              onPressed: () {
                context.read<CounterCubit2>().increment();
              },
              child: Text('increment'),
            ),
          ],
        ),
      ),
    );
  }
}

class CounterCubit2 extends Cubit<int> {
  CounterCubit2() : super(0);
  void degrement() {
    emit(state - 1);
  }

  void increment() {
    emit(state + 1);
  }
}
