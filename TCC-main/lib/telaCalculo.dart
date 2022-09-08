import 'dart:developer';
import 'main.dart';
import 'package:flutter/material.dart';
import 'buttonDropCalculo.dart';
import 'graficoo.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}

class TelaCalculo extends StatefulWidget {
  const TelaCalculo({Key? key}) : super(key: key);

  @override
  State<TelaCalculo> createState() => _TelaCalculoState();
}

class _TelaCalculoState extends State<TelaCalculo> {
  final TextEditingController _controllerDias = TextEditingController();
  final TextEditingController _controllerKM = TextEditingController();
  final TextEditingController _controllerLitros = TextEditingController();
  final TextEditingController _controllerValor = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text('CALCULO'),
        actions: [
          IconButton(
            icon: const Icon(Icons.info),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.home),
            onPressed: () {
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => MyWidget()));
            },
          ),
        ],
      ),
      body: ListView(children: [
        Column(children: [
          Padding(
            child: Container(
              color: Colors.blue,
              child:
                  Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                const SizedBox(
                  height: 20,
                ),
                TextField(
                  textAlign: TextAlign.center,
                  controller: _controllerDias,
                  keyboardType: const TextInputType.numberWithOptions(),
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: ('DATE:'),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: _controllerLitros,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Litros:',
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextField(
                  controller: _controllerKM,
                  keyboardType: const TextInputType.numberWithOptions(),
                  decoration: const InputDecoration(
                    hintText: 'Escreva aqui!',
                    border: OutlineInputBorder(),
                    labelText: ('KM:'),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextField(
                  controller: _controllerValor,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Valor/Litros:',
                  ),
                ),
              ]),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                MyStatefulWidget(),
              ],
            ),
          ),
          const SizedBox(
            height: 102,
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.blue,
              border: Border.all(
                color: Colors.blue,
                width: 8,
              ),
              borderRadius: BorderRadius.circular(4),
            ),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: 100,
                    child: ElevatedButton(
                      style: TextButton.styleFrom(
                        side: const BorderSide(
                            width: 2.0, color: Color.fromARGB(255, 12, 12, 12)),
                        shape: const CircleBorder(),
                        primary: const Color.fromARGB(255, 255, 254, 254),
                      ),
                      onPressed: () {
                        log(_controllerDias.text);
                        log(_controllerKM.text);
                        log(_controllerValor.text);
                        log(_controllerLitros.text);

                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (context) => MyWidget()));
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('SALVAR'),
                          Icon(Icons.save_alt_rounded),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 100,
                    child: ElevatedButton(
                      style: TextButton.styleFrom(
                        side: const BorderSide(
                            width: 2.0, color: Color.fromARGB(255, 12, 12, 12)),
                        shape: CircleBorder(),
                        primary: const Color.fromARGB(255, 255, 254, 254),
                      ),
                      onPressed: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (context) => MyWidget()));
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('TABELA'),
                          Icon(Icons.table_chart),
                        ],
                      ),
                    ),
                  ),
                ]),
          ),
        ]),
      ]),
    );
  }
}
