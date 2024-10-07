import 'package:counter_app_provider/provider/home_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue,
        title: const Text(
          'Counter App',
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25),
        ),
      ),
      body: Center(
        child: Text(
          Provider.of<HomeProvider>(context, listen: true).counter.toString(),
          style: const TextStyle(
              fontSize: 80, color: Colors.black, fontWeight: FontWeight.w500),
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            backgroundColor: Colors.lightBlue,
            onPressed: () {
              if (Provider.of<HomeProvider>(context, listen: false).counter >
                  0) {
                Provider.of<HomeProvider>(context, listen: false).reset();
              }
            },

            child: const Icon(Icons.restart_alt),
          ),
          SizedBox(height: 10,),
          FloatingActionButton(
            backgroundColor: Colors.blue.shade500,
            onPressed: () {
              Provider.of<HomeProvider>(context, listen: false).addition();
            },
            child: const Icon(Icons.add,color: Colors.white,),
          ),
          const SizedBox(
            height: 10,
          ),
          FloatingActionButton(
            backgroundColor: Colors.lightBlue,
            onPressed: () {
              if (Provider.of<HomeProvider>(context, listen: false).counter >
                  0) {
                Provider.of<HomeProvider>(context, listen: false).decrement();
              }
            },
            child: const Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
