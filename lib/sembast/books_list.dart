import 'package:flutter/material.dart';

import 'dao/books_dao.dart';
import 'model/books.model.dart';

class BooksList extends StatefulWidget {
  @override
  _BooksListState createState() => _BooksListState();
}

class _BooksListState extends State<BooksList> {
  BooksDao dau = BooksDao();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Books List"),
      ),
      body: FutureBuilder<List<Books>>(
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.none) {
            return Container(color: Colors.red);
          }
          return ListView.builder(
              itemCount: snapshot.data?.length,
              itemBuilder: (context, index) {
                Books student = snapshot.data?[index] ?? Books();
                return snapshot.data?.length == null
                    ? const CircularProgressIndicator()
                    : ListTile(
                        title: Text(student.name),
                        trailing: Text(student.rollNo.toString()),
                        onTap: () {
                          setState(() {
                            dau.delete(Books(rollNo: student.rollNo));
                            //                       snapshot.data.removeAt(index);
                          });
                        },
                      );
              });
        },
        future: dau.getAllBooks(),
      ),
    );
  }
}
