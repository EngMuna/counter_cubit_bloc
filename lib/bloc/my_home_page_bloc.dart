import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'my_counter_bloc.dart';

class MyHomePageBloc extends StatelessWidget {
  const MyHomePageBloc({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    final counterBloc = context.read<MyCounterBloc>();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("$title Bloc"),

      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('You have pushed the button this many times:'),
            BlocBuilder<MyCounterBloc, MyCounterState>(
              builder: (context, state) {
                print("${state.count1}");
                return Text(
                  state.count1.toString(),
                  style: Theme.of(context).textTheme.headlineMedium,
                );
              },
            ),
          ],
        ),
      ),

      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FloatingActionButton(
            onPressed: () {
              counterBloc.add(IncrementEvent());
            },
            child: const Icon(Icons.add),
          ),

          const SizedBox(width: 100),

          FloatingActionButton(
            onPressed: () {
              counterBloc.add(DecrementEvent());
            },
            child: const Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
