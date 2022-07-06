import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:practice_provider/provider/home_screen_provider.dart';
import 'package:provider/provider.dart';

class MyHomeScreen extends StatefulWidget {
  const MyHomeScreen({Key? key}) : super(key: key);

  @override
  State<MyHomeScreen> createState() => _MyHomeScreenState();
}

class _MyHomeScreenState extends State<MyHomeScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    final homeScreenProvider =
    Provider.of<HomeScreenProvider>(context, listen: false);
    Timer.periodic(const Duration(microseconds: 1000), (timer) {
      homeScreenProvider.setCount();
    });
  }

  @override
  Widget build(BuildContext context) {
    final homeScreenProvider =
        Provider.of<HomeScreenProvider>(context, listen: false);
      print("build");
    return Scaffold(
        appBar: AppBar(
          title: const Text("Count Provider"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Consumer<HomeScreenProvider>(builder: (context, value, child) {
              if (kDebugMode) {
                print("Only build this widgets");
              }
              return Center(
                child: Text(
                  value.getCount.toString(),
                  style: const TextStyle(fontSize: 40),
                ),
              );
            })
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            homeScreenProvider.setCount();
          },
          child: const Icon(Icons.add),
        ));
  }
}
