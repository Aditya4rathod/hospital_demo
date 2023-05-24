import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hospital_demo/photos.dart';
import 'package:hospital_demo/testimonials.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: GoogleFonts.publicSansTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      home: PhotosScreen(),
      //home: TestimonialsPage(),
    );
  }
}
