import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

void main() {
  runApp( FlutterHomePage());
}

class FlutterHomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Fit Fusion",
      theme: ThemeData(
          primarySwatch: Colors.blue
      ),
      home:homepage(),
    );
  }

}
//this class will show how our page will look
class homepage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: 15.0,
              vertical: 20
          ),
          child: GNav(
            gap: 5,
            onTabChange:(index){
              print(index);
            },
            backgroundColor: Colors.black,
            color: Colors.white,
            activeColor: Colors.white,
            tabBackgroundColor: Colors.grey.shade900,
            padding: EdgeInsets.all(20),
            tabs: [
              GButton(icon: Icons.home,
                text: 'Home',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => FlutterHomePage()),
                  );
                },
              ),
              GButton(icon: Icons.favorite_border,
                text: 'Favourite',
              ),
              GButton(icon: Icons.report,
                text: 'Report',
              ),
              GButton(icon: Icons.search,
                text: 'Search',
              ),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        title: Text("Homepage"),
      ),
      body:





    );
  }

}