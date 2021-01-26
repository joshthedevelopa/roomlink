import 'package:flutter/material.dart';

void main() {
  runApp(IntroScreen());
}

class IntroScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("RoomLink"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 4.0, horizontal: 16.0).copyWith(top: 16.0),
              child: Row(
                children: [
                  Icon(Icons.home, color: Colors.blueGrey),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text("ALL HOSTELS", style: TextStyle(fontWeight: FontWeight.w600, color: Colors.blueGrey)),
                  ),
                  Expanded(child: SizedBox()),
                  Text("View All", style: TextStyle(fontWeight: FontWeight.w600, color: Colors.blueGrey)),
                  Icon(Icons.arrow_drop_down, color: Colors.blueGrey)
                ],
              ),
            ),
            Container(
              height: 320.0,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: 4,
                itemBuilder: (context, index) => Container(
                  clipBehavior: Clip.hardEdge,
                  width: 200.0,
                  height: double.infinity,
                  margin: EdgeInsets.all(8.0).copyWith(left: (index == 0) ? 16.0 : 8.0, right: (index == 4 - 1) ? 16.0 : 8.0),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.blueGrey.withOpacity(0.4)),
                    borderRadius: BorderRadius.circular(12.0)
                  ),
                  child: Column(
                    children: [
                      Image.asset("assets/img/fav.jpg", fit: BoxFit.fitWidth, alignment: Alignment(-1.0, -0.5), width: double.infinity, height: 180.0,),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Expanded(child: Text("Gospella's Palace", style: TextStyle(color: Colors.blueGrey, fontSize: 18.0))),
                                  IconButton(color: Colors.red, icon: Icon(Icons.favorite), onPressed: () {}),
                                ],
                              ),
                              Expanded(child: SizedBox()),
                              RaisedButton(
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6.0)),
                                onPressed: () {}, 
                                color: Colors.lightGreen, 
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("Check In", style: TextStyle(color: Colors.white, fontSize: 16.0))
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        )
      ),
    );
  }
}


