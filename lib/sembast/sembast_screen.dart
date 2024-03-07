import 'package:flutter/material.dart';

import 'books_list.dart';
import 'dao/books_dao.dart';
import 'model/books.dart';
// import 'model/books.model.dart';

class SembastScreen extends StatefulWidget {
  const SembastScreen({super.key});

  @override
  State<SembastScreen> createState() => _SembastScreenState();
}

class _SembastScreenState extends State<SembastScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController markController = TextEditingController();
  BooksDao dau = BooksDao();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('SEMBAST SCREEN'),
        ),
        body: Container(
          margin: const EdgeInsets.only(left: 20, right: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                controller: nameController,
                textAlign: TextAlign.start,
                onFieldSubmitted: (val) {},
                style: const TextStyle(),
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  hintText: "Add Book Name",
                  labelStyle: const TextStyle(
                    fontSize: 17,
                  ),
                  contentPadding: const EdgeInsets.all(8),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: const BorderSide(width: 0.7),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: const BorderSide(width: 0.7),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: const BorderSide(width: 0.7),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              TextFormField(
                controller: markController,
                textAlign: TextAlign.start,
                onFieldSubmitted: (val) {},
                keyboardType: const TextInputType.numberWithOptions(),
                style: const TextStyle(),
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  hintText: "Add your roll number",
                  labelStyle: const TextStyle(
                    fontSize: 17,
                  ),
                  contentPadding: const EdgeInsets.all(8),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: const BorderSide(width: 0.7),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: const BorderSide(width: 0.7),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: const BorderSide(width: 0.7),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              TextButton(
                onPressed: () {
                  dau.insertBooks(Books(
                      name: nameController.text,
                      rollNo: int.parse(markController.text)));
                  nameController.clear();
                  markController.clear();
                },
                child: const Text(
                  "Submit",
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => BooksList()));
                },
                child: const Text(
                  "See the List",
                ),
              )
            ],
          ),
        ));
  }
}
