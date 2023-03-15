import 'package:flutter/material.dart';
import '../app_data.dart';
import '../models/wilayatrip.dart';
import '../screens/categories_screen.dart';
import '../widgets/app_drawer.dart';

class AgencesScreen extends StatefulWidget {
  const AgencesScreen({super.key});

  static const screenRoute = '/agences';

  @override
  State<AgencesScreen> createState() => _AgencesScreenState();
}

class _AgencesScreenState extends State<AgencesScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: AppDrawer(),
      appBar: AppBar(
        title: Text('National Tourisme Agences'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Card(
              margin: EdgeInsets.all(10),
              color: Colors.green[100],
              shadowColor: Colors.blueGrey,
              elevation: 10,
              child: ListTile(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CategoriesScreen(),
                    ),
                  );
                },
                leading: Image.asset('images/number-one.png'),
                title: Text(
                  "Adrar",
                  style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.w500,
                    //decoration: TextDecoration.underline,
                  ),
                ),
                subtitle: Text(''),
              ),
            ),
            Card(
              margin: EdgeInsets.all(10),
              color: Colors.green[100],
              shadowColor: Colors.blueGrey,
              elevation: 10,
              child: ListTile(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CategoriesScreen(),
                    ),
                  );
                },
                leading: Image.asset('images/number-2.png'),
                title: Text(
                  "Chlef",
                  style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                subtitle: Text(''),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
