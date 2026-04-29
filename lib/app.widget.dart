
import 'package:flutter/material.dart';


import 'app.home.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HOLA NIÑOOOOS ',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
       
        colorScheme: ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 177, 0, 0)),
        useMaterial3: true,
      ),
      home: const AppHome(title: 'que desepcion'),
    );
  }
}