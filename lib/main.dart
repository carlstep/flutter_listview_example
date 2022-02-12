import 'package:flutter/material.dart';

void main() {
  var widgets = [
    const ListTile(
      leading: Icon(Icons.home, size: 40,),
      title: Text(
        'John Rambo',
      ),
      subtitle: Text(
        'Never runs out of bullets.',
      ),
      trailing: Text(
        'Trailing text',
        style: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w800,
        ),
      ),
    ),
    ListTile(
      onTap: () {
        // ignore: avoid_print
        print('Tapped');
      },
      leading: Icon(Icons.home, size: 40,),
      title: const Text(
        'James Bond',
      ),
      subtitle: const Text(
        'Bit of a twat',
      ),
      trailing: const Text(
        'Trailing text',
        style: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w800,
        ),
      ),
    ),

  ];

  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('ListView in Flutter'),
        ),
        body: Column(children: [
          SizedBox(
            height: 200,
            child: ListView.builder(
              itemCount: widgets.length,
              itemBuilder: ((context, index) {
                return widgets[index];
              }),
            ),
          ),
          const Text(
            'Band Names',
            style: TextStyle(
              fontSize: 60,
              color: Color.fromARGB(255, 4, 57, 100),
            ),
          ),
        ]),
      ),
    ),
  );
}
