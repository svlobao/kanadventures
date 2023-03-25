import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class KanasPage extends StatefulWidget {
  const KanasPage({Key? key}) : super(key: key);

  @override
  State<KanasPage> createState() => _KanasPageState();
}

class _KanasPageState extends State<KanasPage> {
  List<dynamic> kanasData = [];

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  Future<void> fetchData() async {
    final response =
        await http.get(Uri.parse('http://127.0.0.1:5000/kanas_json'));
    if (response.statusCode == 200) {
      setState(() {
        kanasData = jsonDecode(response.body);
      });
    } else {
      throw Exception('Failed to load data');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kanas'),
      ),
      body: FutureBuilder<List<dynamic>>(
        future: Future.value(kanasData),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                return Text('${snapshot.data![index]}');
              },
            );
          } else if (snapshot.hasError) {
            return Text('${snapshot.error}');
          }
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
