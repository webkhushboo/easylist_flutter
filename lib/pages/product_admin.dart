import 'package:flutter/material.dart';
import 'package:flutter_course/pages/products_create.dart';
import 'package:flutter_course/pages/products_list.dart';

class ProductAdminPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
            drawer: Drawer(
              child: Column(
                children: <Widget>[
                  AppBar(
                    automaticallyImplyLeading: false,
                    title: Text('Choose'),
                  ),
                  ListTile(
                      title: Text('All Products'),
                      onTap: () {
                        Navigator.pushReplacementNamed(
                            context,
                            '/');
                      })
                ],
              ),
            ),
            appBar: AppBar(
              title: Text('Manage Products'),
              bottom: TabBar(tabs: <Widget>[
                Tab(text: 'Create Product' , icon:Icon(Icons.create)),
                Tab(text: 'My products', icon:Icon(Icons.list))
              ]),
            ),
            body: 
             TabBarView(
               children: <Widget>[
                 ProductsCreatePage(),
                 ProductsListPage()
               ],
             )
            ));
  }
}
