import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    )
  );
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
  Widget imageCarousel = new Container(
    height: 200.0,
    child: new Carousel(
      boxFit: BoxFit.cover,
      images: [
        AssetImage('images/c1.jpg'),
        AssetImage('images/m1.jpeg'),
        AssetImage('images/m2.jpg'),
        AssetImage('images/w1.jpeg'),
        AssetImage('images/w3.jpeg'),
        AssetImage('images/w4.jpeg'),
      ],
      autoplay: false,
      animationCurve: Curves.fastOutSlowIn,
      animationDuration: Duration(milliseconds: 1000),
      dotSize: 4.0,
      indicatorBgPadding: 4.0,
    ),
  );

    return Scaffold(
      appBar: new AppBar(
        elevation: 0.0,
        backgroundColor: Colors.pinkAccent,
        title: Text('Diego-UpWork'),
        centerTitle: true,
        actions: <Widget>[
          new IconButton(icon: Icon(Icons.search,color: Colors.white), onPressed: (){}),
          new IconButton(icon: Icon(Icons.shopping_cart,color: Colors.white), onPressed: (){})
        ],
      ),

      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            //Header
            new UserAccountsDrawerHeader(
                accountName: Text('John Doe'),
                accountEmail: Text('johndoe@mail.com'),
            currentAccountPicture: GestureDetector(
              child: new CircleAvatar(
                backgroundColor: Colors.white,
                child: Icon(Icons.person, color: Colors.pinkAccent,),
              ),
            ),
            decoration: new BoxDecoration(
              color: Colors.pinkAccent
            ),
            ),
            //body
            InkWell(
              onTap: (){},
              child: ListTile(
               title: Text('Home Page'),
               leading: Icon(Icons.home, color: Colors.pinkAccent,),
              ),
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('My account'),
                leading: Icon(Icons.person, color: Colors.pinkAccent,),
              ),
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('My Orders'),
                leading: Icon(Icons.shopping_basket, color: Colors.pinkAccent,),
              ),
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Categories'),
                leading: Icon(Icons.dashboard, color: Colors.pinkAccent,),
              ),
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Favorites'),
                leading: Icon(Icons.favorite, color: Colors.pinkAccent,),
              ),
            ),

            Divider(),

            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('Settings'),
                leading: Icon(Icons.settings, color: Colors.grey,),
              ),
            ),
            InkWell(
              onTap: (){},
              child: ListTile(
                title: Text('About'),
                leading: Icon(Icons.help, color: Colors.blueAccent,),
              ),
            ),
          ],
        ),
      ),
      body: new ListView(
        children: <Widget>[
          imageCarousel
        ],
      ),
    );
  }
}
