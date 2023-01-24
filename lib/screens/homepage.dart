import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../models/model_class.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> colHeaders = ["Post ID", "ID", "Name", "Email"];

  Map res = {};
  List<Data> data = [];
  loadJsonBank() async {
    String jsonData = await rootBundle.loadString('assets/json/data.json');
    res = jsonDecode(jsonData);

    List result = res['data'];

    setState(() {
      data = result.map((e) => Data.fromJSON(e)).toList();
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadJsonBank();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("JsonData"),
        ),
        body: ListView(
          children: [
            // FutureBuilder(
            //   builder: (context, snapshot) {
            //     if (snapshot.hasError) {
            //       return CircularProgressIndicator();
            //     }
            //     return DataTable(
            //       columns: colHeaders
            //           .map((e) => DataColumn(label: Text(e)))
            //           .toList(),
            //       rows: [],
            //     );
            //   },
            // )
          ],
        ));
  }
}
