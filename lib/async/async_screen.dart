import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import 'model/data.dart';
import 'retrofit/api_client.dart';

class AsynchronousScreen extends StatefulWidget {
  const AsynchronousScreen({super.key});

  @override
  State<AsynchronousScreen> createState() => _AsynchronousScreenState();
}

class _AsynchronousScreenState extends State<AsynchronousScreen> {
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Flutter - Retrofit Implementation"),
      ),
      body: buildBody(context),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        label: const Icon(Icons.cancel),
        backgroundColor: Colors.green,
      ),
    );
  }

  FutureBuilder<ResponseData> buildBody(BuildContext context) {
    final client = ApiClient(Dio(BaseOptions(contentType: "application/json")));
    return FutureBuilder<ResponseData>(
      future: client.getUsers(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          final ResponseData posts = snapshot.data!;
          return buildListView(context, posts);
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }

  Widget buildListView(BuildContext context, ResponseData posts) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return Card(
          child: ListTile(
            leading: const Icon(
              Icons.account_box,
              color: Colors.green,
              size: 50,
            ),
            title: Text(
              posts.data[index].name,
              style: const TextStyle(fontSize: 20),
            ),
            subtitle: Text(posts.data[index].status),
          ),
        );
      },
      itemCount: 3,
    );
  }
}
