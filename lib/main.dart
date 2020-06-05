import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constrains) {
        return OrientationBuilder(
          builder: (context, orientation) {
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              home: MyHomePage(),
            );
          },
        );
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
//        scrollDirection: Axis.horizontal,
        child: Container(
          child: Padding(
            padding: const EdgeInsets.only(left: 15.0, right: 15.0),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 10.0, top: 50.0),
                  child: Row(
                    children: <Widget>[
                      Text('Find', style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold
                      ),),
                      SizedBox(width: 10,),
                      Text('your files', style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 24
                      ),),
                      Spacer(),
                      IconButton(
                        icon: Icon(
                          Icons.add,
                          color: Colors.black,
                        ),
                        onPressed: () { print('A1'); },
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.folder_open,
                          color: Colors.black,
                        ),
                        onPressed: () { print('A2'); },
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Search o files',
                      hintStyle: TextStyle(color: Colors.black),
                      contentPadding: EdgeInsets.all(20),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15.0)),
                        borderSide: BorderSide(color: Colors.transparent, width: 1),
                      ),

                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      filled: true,
                      fillColor: Colors.grey[200],
                      suffixIcon: Icon(Icons.search, color: Colors.black,),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    IconButton(icon: Icon(Icons.border_all), onPressed: () { print('BORDER 1 '); }, ),
                    IconButton(icon: Icon(Icons.border_vertical), onPressed: () { print('BORDER 1 '); }, ),
                  ],
                ),
                Container(
                  height: MediaQuery.of(context).size.height,
                  child: new GridView.count(
                    childAspectRatio:MediaQuery.of(context).size.width / 500,
                    padding: const EdgeInsets.all(10.0),
                    crossAxisCount: 2,
                    primary: true,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    scrollDirection: Axis.vertical,
                    children: <Widget>[
                    _cardsFiles('Bussines', 52, 0xFF151528, 0xFF38A777),
                    _cardsFiles('Documents', 18, 0xFF151528, 0xFFFCEA4A),
                    _cardsFiles('Freelancing', 20, 0xFF151528, 0xFFF788CA),
                    _cardsFiles('Photos', 220, 0xFF151528, 0xFF4093FB),
                    _cardsFiles('Tutorials', 05, 0xFF151528, 0xFFB07DFD),
                    _cardsFiles('Videos', 120, 0xFF151528, 0xFFFA665C),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
  
  _cardsFiles(String file, int count, int colorCard, int colorsIcons) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 30.0,
      padding: const EdgeInsets.only(top: 20.0),

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.grey[200],
      ),
      child: Column(
        children: <Widget>[
          Container(
            child: Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 0),
                  child: Container(
                    alignment: Alignment.center,
                    width: MediaQuery.of(context).size.width / 5,
                    height: MediaQuery.of(context).size.width / 5,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
//                        color: Color(0xFF151528)
                        color: Color(colorCard)
                  ),
                    child: Icon(
                      Icons.folder, color: Color(colorsIcons),
                      size: 45,
                    ),
                  ),
                ),
                Spacer(),
                IconButton(icon: Icon(Icons.more_vert), onPressed: () { print('MORE'); }),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              width: MediaQuery.of(context).size.width / 2.5,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(file, style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                    fontFamily: 'OpenSans',
                    color: Color(0xFF151528),
                  ),),
                  Padding(
                    padding: const EdgeInsets.only(top: 5.0),
                    child: Text('${count} items', style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'OpenSans',
                      color: Color(colorCard),
                    ),),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
