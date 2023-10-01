import 'package:flutter/material.dart';

class Example extends StatelessWidget {
  const Example({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: DataOwnerStateFull()),
    );
  }
}

class DataOwnerStateFull extends StatefulWidget {
  const DataOwnerStateFull({super.key});

  @override
  State<DataOwnerStateFull> createState() => _DataOwnerStateFullState();
}

class _DataOwnerStateFullState extends State<DataOwnerStateFull> {
  var _value = 0;

  void _increment() {
    _value += 1;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          onPressed: () => _increment(),
          child: const Text('Жми'),
        ),
        const DataConsumerStateless(),
      ],
    );
  }
}

class DataConsumerStateless extends StatelessWidget {
  const DataConsumerStateless({super.key});

  @override
  Widget build(BuildContext context) {
    final value =
        context.findAncestorStateOfType<_DataOwnerStateFullState>()?._value ??
            0;
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('$value'),
          const DataConsumerStateFull(),
        ],
      ),
    );
  }
}

class DataConsumerStateFull extends StatefulWidget {
  const DataConsumerStateFull({super.key});

  @override
  State<DataConsumerStateFull> createState() => _DataConsumerStateFullState();
}

class _DataConsumerStateFullState extends State<DataConsumerStateFull> {
  @override
  Widget build(BuildContext context) {
    final _value =
        context.findAncestorStateOfType<_DataOwnerStateFullState>()?._value ??
            0;
    return Text('$_value');
  }
}

class DataProviderInherited extends InheritedWidget {
  const DataProviderInherited(
      {Key? key, required this.value, required Widget child})
      : super(key: key, child: child);
  final int value;

  @override
  bool updateShouldNotify(DataProviderInherited oldWidget) {
    return value != oldWidget.value;
  }
}
