import 'package:ane_buddy/presentation/education/education_page.dart';
import 'package:ane_buddy/presentation/print/print_page.dart';
import 'package:ane_buddy/presentation/profile/pages/profile_page.dart';
import 'package:flutter/material.dart';

class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text(
              'Side menu',
              style: Theme.of(context).textTheme.headline6,
            ),
            /*decoration: BoxDecoration(
                color: Colors.green,
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('assets/images/cover.jpg'))),*/
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Profil'),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProfilePage()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.school),
            title: Text('Weiterbildung'),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => EducationPage()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.print),
            title: Text('Drucken'),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => PrintPage(
                          key: UniqueKey(),
                        )),
              );
            },
          ),
        ],
      ),
    );
  }
}
