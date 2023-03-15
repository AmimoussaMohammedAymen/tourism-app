// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:tourisme_app/WilayaSetif/Setif_category_screen.dart';
import 'package:tourisme_app/screens/Empty_wilaya.dart';
import 'package:tourisme_app/screens/categories_screen.dart';
import '../WilayaAlg/Alg_category_screen.dart';
import '../WilayaAnnaba/Annaba_category_screen.dart';
import '../WilayaConstantin/Constantine_category_screen.dart';
import '../WilayaOran/Oran_category_screen.dart';
import '../WilayaOuargla/Ouargla_category_screen.dart';

class wilayaScreen extends StatelessWidget {
  const wilayaScreen({super.key});

  Widget buildwilaya(BuildContext context, String wilayaname, String img) {
    return Card(
      margin: EdgeInsets.all(10),
      color: Colors.green[100],
      shadowColor: Colors.blueGrey,
      elevation: 10,
      child: ListTile(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => EmptyWilaya(),
            ),
          );
        },
        leading: Image.asset(img),
        title: Text(
          wilayaname,
          style: TextStyle(
            fontSize: 23,
            fontWeight: FontWeight.w500,
            //decoration: TextDecoration.underline,
          ),
        ),
        subtitle: Text(''),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            buildwilaya(context, "Adrar", 'images/number-one.png'),
            buildwilaya(context, "Chlef", 'images/number-2.png'),
            buildwilaya(context, "Laghouat", 'images/number-3.png'),
            buildwilaya(context, "Oum El Bouaghi", 'images/number-four.png'),
            buildwilaya(context, "Batna", 'images/number-5.png'),
            buildwilaya(context, "Bejaia", 'images/six.png'),
            buildwilaya(context, "Biskra", 'images/seven.png'),
            buildwilaya(context, "Béchar", 'images/number-8.png'),
            buildwilaya(context, "Blida", 'images/number-9.png'),
            buildwilaya(context, "Bouira", 'images/ten.png'),
            buildwilaya(context, "Tamanrasset", 'images/number-11.png'),
            buildwilaya(context, "Tebessa", 'images/number-12.png'),
            buildwilaya(context, "Tlemcen", 'images/number-13.png'),
            buildwilaya(context, "Tiaret", 'images/number-14.png'),
            buildwilaya(context, "Tizi Ouzou", 'images/number-15.png'),
            /* Card(
              margin: EdgeInsets.all(10),
              color: Color.fromARGB(255, 81, 199, 84),
              shadowColor: Colors.blueGrey,
              elevation: 10,
              child: ListTile(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AlgCategoriesScreen(),
                    ),
                  );
                },
                leading: Image.asset('images/number-16.png'),
                title: Text(
                  "Alger ",
                  style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                subtitle: Text(''),
              ),
            ), */
            Card(
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                        'https://i.pinimg.com/originals/72/a1/fe/72a1fe7b239f03878bbd3093c9b39a21.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: ListTile(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AlgCategoriesScreen(),
                      ),
                    );
                  },
                  leading: Image.asset('images/number-16.png'),
                  title: Text(
                    "Alger ",
                    style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.w500,
                      //decoration: TextDecoration.underline,
                    ),
                  ),
                  subtitle: Text(''),
                ),
              ),
            ),
            buildwilaya(context, "Djelfa", 'images/number-17.png'),
            buildwilaya(context, "Djijel", 'images/number-18.png'),
            Card(
              margin: EdgeInsets.all(10),
              color: Color.fromARGB(255, 81, 199, 84),
              shadowColor: Colors.blueGrey,
              elevation: 10,
              child: ListTile(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SetifCategoriesScreen(),
                    ),
                  );
                },
                leading: Image.asset('images/number-19.png'),
                title: Text(
                  "Setif ",
                  style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                subtitle: Text(''),
              ),
            ),
            buildwilaya(context, "Saïda", 'images/number-20.png'),
            buildwilaya(context, "Skikda", 'images/number-21.png'),
            buildwilaya(context, "Sidi Bel Abbès", 'images/number-22.png'),
            Card(
              margin: EdgeInsets.all(10),
              color: Color.fromARGB(255, 81, 199, 84),
              shadowColor: Colors.blueGrey,
              elevation: 10,
              child: ListTile(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AnnabaCategoriesScreen(),
                    ),
                  );
                },
                leading: Image.asset('images/number-23.png'),
                title: Text(
                  "Annaba ",
                  style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                subtitle: Text(''),
              ),
            ),
            buildwilaya(context, "Guelma", 'images/twenty-four.png'),
            Card(
              margin: EdgeInsets.all(10),
              color: Color.fromARGB(255, 81, 199, 84),
              shadowColor: Colors.blueGrey,
              elevation: 10,
              child: ListTile(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ConstantineCategoriesScreen(),
                    ),
                  );
                },
                leading: Image.asset('images/twenty-five.png'),
                title: Text(
                  "Constantine ",
                  style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                subtitle: Text(''),
              ),
            ),
            buildwilaya(context, "Médéa", 'images/twenty-six.png'),
            buildwilaya(context, "Mostaganem", 'images/twenty-seven.png'),
            buildwilaya(context, "M'Sila", 'images/twenty-eight.png'),
            buildwilaya(context, "Mascara", 'images/twenty-nine.png'),
            Card(
              margin: EdgeInsets.all(10),
              color: Color.fromARGB(255, 81, 199, 84),
              shadowColor: Colors.blueGrey,
              elevation: 10,
              child: ListTile(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => OuarglaCategoriesScreen(),
                    ),
                  );
                },
                leading: Image.asset('images/thirty.png'),
                title: Text(
                  "Ouargla ",
                  style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                subtitle: Text(''),
              ),
            ),
            Card(
              margin: EdgeInsets.all(10),
              color: Color.fromARGB(255, 81, 199, 84),
              shadowColor: Colors.blueGrey,
              elevation: 10,
              child: ListTile(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => OranCategoriesScreen(),
                    ),
                  );
                },
                leading: Image.asset('images/thirty-one.png'),
                title: Text(
                  "Oran",
                  style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                subtitle: Text(''),
              ),
            ),
            buildwilaya(context, "El Bayadh", 'images/thirty-two.png'),
            buildwilaya(context, "Illizi", 'images/thirty-three.png'),
            buildwilaya(
                context, "Bordj Bou Arreridj", 'images/thirty-four.png'),
            buildwilaya(context, "Boumerdès", 'images/thirty-five.png'),
            buildwilaya(context, "El Tarf", 'images/thirty-six.png'),
            buildwilaya(context, "Tindouf", 'images/thirty-seven.png'),
            buildwilaya(context, "Tissemsilt", 'images/thirty-eight.png'),
            buildwilaya(context, "El Oued", 'images/thirty-nine.png'),
            buildwilaya(context, "Khenchela", 'images/forty.png'),
            buildwilaya(context, "Souk Ahras", 'images/forty-one.png'),
            buildwilaya(context, "Tipaza", 'images/forty-two.png'),
            buildwilaya(context, "Mila", 'images/forty-three.png'),
            buildwilaya(context, "Aïn Defla", 'images/forty-four.png'),
            buildwilaya(context, "Naâma", 'images/fourty-five.png'),
            buildwilaya(context, "Aïn Témouchent", 'images/forty-six.png'),
            buildwilaya(context, "Ghardaia", 'images/forty-seven.png'),
            buildwilaya(context, "Relizane", 'images/fourty-eight.png'),
            buildwilaya(context, "Timimoun", 'images/forty-nine.png'),
            buildwilaya(context, "Bordj Badji Mokhtar", 'images/fifty.png'),
            buildwilaya(context, "Ouled Djellal", 'images/51.png'),
            buildwilaya(context, "Béni Abbès", 'images/fifty-two.png'),
            buildwilaya(context, "In Salah", 'images/fifty-three.png'),
            buildwilaya(context, "In Guezzam", 'images/fifty-four.png'),
            buildwilaya(context, "Touggourt", 'images/fifty-five.png'),
            buildwilaya(context, "Djanet", 'images/fifty-six.png'),
            buildwilaya(context, "El M'Ghair", 'images/fifty-seven.png'),
            buildwilaya(context, "El Meniaa", 'images/fifty-eight.png'),
          ],
        ),
      ),
    );
  }
}
