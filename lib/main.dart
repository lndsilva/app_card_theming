import 'dart:ui';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Card',
      debugShowCheckedModeBanner: false,
      //acrescentar tema
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Card(
            clipBehavior: Clip.antiAlias,
            child: Column(
              children: [
                ListTile(
                  leading: Icon(Icons.arrow_drop_down_circle),
                  title: const Text('Cafeteria Bom Café'),
                  subtitle: Text(
                    'A melhor cafeteria de São Paulo',
                    style: TextStyle(color: Colors.black.withOpacity(0.6)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    'Servimos o melhor café desde 1940',
                    style: TextStyle(color: Colors.black.withOpacity(0.6)),
                  ),
                ),
                ButtonBar(
                  alignment: MainAxisAlignment.start,
                  children: [
                    FlatButton(
                      onPressed: () {
                        //evento de clique do botão
                      },
                      child: const Text('SHARED'),
                    ),
                    FlatButton(
                      onPressed: () {
                        //evento de clique no botão
                      },
                      child: const Text('FAVORITE'),
                    ),
                  ],
                ),
                Image.asset('images/cafeteria.jpg'),
              ],
            ),
          ),
          Card(
            clipBehavior: Clip.antiAlias,
            child: Column(
              children: [
                ListTile(
                  leading: Icon(Icons.arrow_drop_down_circle),
                  title: const Text('Título Segundo card'),
                  subtitle: Text(
                    'Segundo Texto',
                    style: TextStyle(color: Colors.black.withOpacity(0.6)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    'Texto do segundo card',
                    style: TextStyle(color: Colors.black.withOpacity(0.6)),
                  ),
                ),
                ButtonBar(
                  alignment: MainAxisAlignment.start,
                  children: [
                    FlatButton(
                      onPressed: () {
                        //evento do flatbutton
                      },
                      child: const Text('Ação 1'),
                    ),
                    FlatButton(
                      onPressed: () {
                        //evento do flatbutton
                      },
                      child: const Text('Ação 2'),
                    ),
                  ],
                ),
                Image.asset('images/xicara.jpg'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
