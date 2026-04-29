import 'package:flutter/material.dart';
import 'package:operacion/pages/suma.page.dart';

import 'pages/resta.page.dart';


class AppHome extends StatefulWidget {
  const AppHome({super.key, required this.title});

  final String title;

  @override
  State<AppHome> createState() => _AppHomeState();
}

class _AppHomeState extends State<AppHome> {

  int pagina =0;
 
 
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: SafeArea(

        child: Padding(
          padding: const EdgeInsets.all(16),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [    
                (pagina==0)?SumaPage() : RestaPage()
 


              ],
            ),
          ),
        ),
      ),
   bottomNavigationBar: BottomNavigationBar(
        currentIndex: pagina,
        onTap: (index) {
          setState(() {
            pagina = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.plus_one_sharp),
            label: "Suma",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_remove_sharp),
            label: "Resta",
          ),          
        ],
      ),

   
   
    );
  }
}
