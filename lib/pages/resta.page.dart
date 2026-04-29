import 'package:flutter/material.dart';

class RestaPage extends StatefulWidget {
  const RestaPage({Key? key}) : super(key: key);

  @override
  _RestaPageState createState() => _RestaPageState();
}

class _RestaPageState extends State<RestaPage> {
  TextEditingController num1 = TextEditingController();
  TextEditingController num2 = TextEditingController();
  double resultado = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
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
        ElevatedButton(onPressed: Restar, child: Text("Restar")),
        Text("Resultado : $resultado"),
      ],
    );
  }

  void Restar() {
    double n1 = double.parse(num1.text);
    double n2 = double.parse(num2.text);
    setState(() {
      resultado = n1 - n2;
    });

    print(resultado);
  }
}
