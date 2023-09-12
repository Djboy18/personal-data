import 'package:flutter/material.dart';
import 'package:sola/Webview.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Homepage(),
    );
  }
}
class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text("My Profile",
        style: TextStyle(color: Colors.black),
        ),
        actions: [IconButton(onPressed: (){}, icon: Icon(Icons.notifications,color: Colors.black,))],
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: MediaQuery.of(context).size.height * 0.1,),
            CircleAvatar(
              radius: 70,
              backgroundColor: Colors.black,
              child: CircleAvatar(
                backgroundColor: Colors.white,
                radius: 68,
                child:CircleAvatar(
                  radius: 60,
                  backgroundImage: AssetImage("Images/profile.jpg"),
                ),
              ),
            ),
            SizedBox(height: 15,),
            Text("Aladeloye Doyinsola",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20
              ),
            ),
            SizedBox(height: 10,),
            Text("Junior flutter developer",
              style: TextStyle(
                  fontSize: 15,
                color: Colors.black87
              ),
            ),
            SizedBox(height: 10,),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> Webview()));
            }, child: Text("view github"),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.black
            ),
            )
          ],
        ),
      ),
    );
  }
}
