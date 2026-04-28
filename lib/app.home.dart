import 'package:flutter/material.dart';

class AppHome extends StatefulWidget {
  const AppHome({super.key, required this.title});

  final String title;

  @override
  State<AppHome> createState() => _AppHomeState();
}

class _AppHomeState extends State<AppHome> {
  TextEditingController num1 = TextEditingController();
  TextEditingController num2 = TextEditingController();
  double resultado = 0;

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
                TextField(
                  controller: num1,
                  decoration: const InputDecoration(
                    labelText: "ESTA BIEN",
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(width: 10, height: 10),
                TextField(
                  controller: num2,
                  decoration: const InputDecoration(
                    labelText: "TE AMO",
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(width: 10, height: 10),
                ElevatedButton(onPressed: sumar, child: Text("Sumar")),
                Text("Resultado : $resultado"),

              ],
            ),
          ),
        ),
      ),
    );
  }

  void sumar() {
  double n1 = double.parse(num1.text);
  double n2 = double.parse(num2.text);
   setState(() {     
     resultado = n1+n2;
 });

  
  print(resultado);
  
  }
}
