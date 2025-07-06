import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  MobileAds.instance.initialize();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Water Mind Puzzle',
      theme: ThemeData(
        textTheme: GoogleFonts.robotoTextTheme(),
        primarySwatch: Colors.blue,
        useMaterial3: true,
      ),
      home: MainMenu(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MainMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade100,
      appBar: AppBar(
        title: Text('Water Mind Puzzle'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.shop),
            onPressed: () {
              // Navigate to shop
            },
          )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: Text("Start Game"),
              onPressed: () {
                // Navigate to level screen
              },
            ),
            SizedBox(height: 10),
            ElevatedButton(
              child: Text("Shop"),
              onPressed: () {
                // Navigate to shop
              },
            ),
          ],
        ),
      ),
    );
  }
}
