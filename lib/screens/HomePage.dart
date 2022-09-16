// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:trakka/widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: ElevatedButton(onPressed: (){}, child: Text('Test'),),
          centerTitle: true,
          actions: [

            IconButton(onPressed: () {}, icon: Icon(Icons.refresh)),
          ],
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 50,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    height: 50,
                    width: 250,
                    color: Colors.white,
                    child: Center(
                      child: Text(
                        '\$50,000',
                        style: TextStyle(color: Colors.black, fontSize: 22),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 50,
                  width: 100,
                  child: Card(
                    elevation: 3,
                    child: Text('Naira', textAlign: TextAlign.center ,style: TextStyle()),
                  ),
                )


              ],
            ),
          ),
        ),
      ),
    );
  }
}
