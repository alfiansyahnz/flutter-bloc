import 'package:flutter/material.dart';

class AsynchronousScreen extends StatefulWidget {
  const AsynchronousScreen({super.key});

  @override
  State<AsynchronousScreen> createState() => _AsynchronousScreenState();
}

class _AsynchronousScreenState extends State<AsynchronousScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ASYNC SCREEN'),
      ),
      body: Container(),
    );
  }
}
