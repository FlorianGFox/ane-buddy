import 'package:ane_buddy/presentation/home/widgets/nav_drawer.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ane Buddy'),
      ),
      drawer: NavDrawer(),
      body: SafeArea(
        minimum: const EdgeInsets.all(16.0),
        child: Center(
            child: Text(
          'Ane Buddy',
          style: Theme.of(context).textTheme.headline1,
        )),
      ),
    );
  }
}
