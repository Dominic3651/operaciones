import 'package:flutter/material.dart';
import 'package:operacion/widgets/titulo.widget.dart';

class SumaPage extends StatefulWidget {
  const SumaPage({Key? key}) : super(key: key);

  @override
  _SumaPageState createState() => _SumaPageState();
}

class _SumaPageState extends State<SumaPage> {
  TextEditingController num1 = TextEditingController();
  TextEditingController num2 = TextEditingController();
  double resultado = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TituloWidget(),
        
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
    );
  }

  void sumar() {
    double n1 = double.parse(num1.text);
    double n2 = double.parse(num2.text);
    setState(() {
      resultado = n1 + n2;
    });

    print(resultado);
  }
}

