import 'package:flutter/material.dart';

class ExpansionTileDemo extends StatelessWidget {
  const ExpansionTileDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('expansion tile demo'),
      ),
      body: Center(
        child: ExpansionTile(
          initiallyExpanded: false,
          title: Text('exoansion tile'),
          leading: Icon(Icons.snowing),
          backgroundColor: Colors.white12,
          children: [
            ListTile(
              title: Text('list title'),
              subtitle: Text('subtitle'),
            ),
          ],
        ),
      ),
    );
  }
}
