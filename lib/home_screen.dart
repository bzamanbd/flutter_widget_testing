import 'package:flutter/material.dart';
import 'package:flutter_widget_testing/counter_controller.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final CounterController _counterController = CounterController();
  void _incrementer() {
    setState(() {
      _counterController.incrementer();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              _counterController.count.toString(),
              style: ThemeData().textTheme.bodyLarge!.copyWith(
                    fontSize: 35.0,
                  ),
            ),
            const SizedBox(height: 50),
            FloatingActionButton(
              onPressed: () {},
              child: const Text('data'),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        key: const Key('incButton'),
        onPressed: () => _incrementer(),
        child: const Icon(Icons.add),
      ),
    );
  }
}
