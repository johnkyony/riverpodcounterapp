import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'controller.dart';


class CounterShowPage extends HookConsumerWidget {
  const CounterShowPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context , ref)  {
    final controller = ref.watch(counterControllerProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('My counter App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('You have pushed the button this many times:'),
            Text('${controller.count}',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FloatingActionButton(
            onPressed: () {
              ref.read(counterControllerProvider.notifier).increment();
            },
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),
          SizedBox(width: 80,),
          FloatingActionButton(
           // onPressed: () {
           //   ref.read(counterControllerProvider.notifier).decrement();
            //},
            onPressed: ref.read(counterControllerProvider.notifier).decrement,
            tooltip: 'decrement',
            child: const Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}

