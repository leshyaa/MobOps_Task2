import 'package:flutter/material.dart';

class MyList{
  static List<String> Fruits = ['Banana', 'Apple', 'Guava', 'Kiwi', 'Strawberry', 'Blueberry', 'Watermelon',
    'Pomegranate', 'Figs', 'Dragonfruit', 'Jackfruit', 'Orange', 'Plum'];
  static List<String> Vegetables = ['Carrot', 'Potato', 'Cucumber', 'Ladyfinger', 'Tapioca', 'Onion',
    'Pumpkin', 'Beans', 'Bittergourd', 'Bottlegourd', 'Radish', 'Garlic'];
}

void main() => runApp(const MaterialApp(
  home: Main(),
));


class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);
  Widget Template(item){
    return Text(
      item,
      style:const TextStyle(
        fontFamily: "Garamond",
        fontSize: 17.0,
      )
    );
  }
  @override
  Widget build(BuildContext context) {
    double height = AppBar().preferredSize.height;
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.deepPurple[50],
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: const Text("List of Items",
        style: TextStyle(
          color: Colors.white,
          fontFamily: "Garamond",
          fontWeight: FontWeight.bold,
        )),
        centerTitle: true,
      ),
      body: SafeArea(
    child: Column(
    children:[SizedBox(
    height: 2.0*(screenSize.height-height)/3.0,
    child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
        child: Column(
          children:[
            Card(
              margin: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(12.0),
                    color: Colors.deepPurple[100],
                    child: const Text(
                        'FRUITS',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontFamily: "Garamond",
                          fontWeight: FontWeight.bold,
                        )
                    ),
                  ),
                  Container(

                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: MyList.Fruits.map((fruit)=>Template(fruit)).toList(),
                    ),
                  )
                ],
              ),

            ),
          Card(
            margin: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(12.0),
                  color: Colors.deepPurple[100],
                  child: const Text(
                      'VEGETABLES',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontFamily: "Garamond",
                        fontWeight: FontWeight.bold,
                      )
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: MyList.Vegetables.map((fruit)=>Template(fruit)).toList(),
                    ),

                )
              ],
            ),
          ),


          ],
        )
    )
    ),
    Image.asset('images/image.png',
    height:(screenSize.height-height)/3.5)],


      )
      )
    );
  }
}

