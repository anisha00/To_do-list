import 'package:flutter/material.dart';
import 'package:to_do_app/HomeScreenCard.dart';
import 'package:to_do_app/UserInfoScreen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> _cardList = [];

  void _addCardWidget() {
    setState(() {
      _cardList.add(HomeScreenCard());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(Icons.note),
                  Text("Todo List"),
                ],
              ),
              Icon(Icons.search)
            ],
          ),
        ),
      ),
      body: ListView.builder(
          itemCount: _cardList.length,
          itemBuilder: (context, index) {
            return _cardList[index];
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => UserInfoScreen(),
          ));
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
        backgroundColor: Colors.amber,
      ),
    );
  }
}
