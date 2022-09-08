import 'package:flutter/material.dart';
import 'configuração.dart';
import 'telaCalculo.dart';
import 'sobrenos.dart';
import 'graficoo.dart';
import 'historico.dart';

const Color darkBlue = Color.fromARGB(255, 255, 255, 255);

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: darkBlue,
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: MyWidget(),
        ),
      ),
    );
  }
}

class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MINHA GASOZAA'),
        backgroundColor: Colors.blue[900],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const TelaCalculo()));
                  },
                  child: Container(
                      alignment: Alignment.bottomCenter,
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                          image: NetworkImage(
                            "https://cdn-icons-png.flaticon.com/512/2933/2933881.png",
                            scale: 10,
                          ),
                        ),
                        color: Colors.blue[900],
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: const Text(
                        'Calculo de Gasto',
                        style: TextStyle(
                          fontSize: 11,
                        ),
                      )),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => MyTable()));
                  },
                  child: Container(
                      alignment: Alignment.bottomCenter,
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                          image: NetworkImage(
                            "https://cdn-icons-png.flaticon.com/512/2838/2838558.png",
                            scale: 10,
                          ),
                        ),
                        color: Colors.blue[900],
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: const Text(
                        'Histórico',
                        style: TextStyle(
                          fontSize: 11,
                        ),
                      )),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => MyGrafico()));
                  },
                  child: Container(
                    alignment: Alignment.bottomCenter,
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: NetworkImage(
                          "https://cdn-icons-png.flaticon.com/512/3314/3314400.png",
                          scale: 10,
                        ),
                      ),
                      color: Colors.blue[900],
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Text(
                      'Gasto no mês',
                      style: TextStyle(
                        fontSize: 11,
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Configuracao()));
                  },
                  child: Container(
                    alignment: Alignment.bottomCenter,
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: NetworkImage(
                          "https://cdn-icons-png.flaticon.com/512/771/771254.png",
                          scale: 10,
                        ),
                      ),
                      color: Colors.blue[900],
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Text(
                      'Configuração',
                      style: TextStyle(
                        fontSize: 11,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Sobrenos()));
                  },
                  child: Container(
                    alignment: Alignment.bottomCenter,
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: NetworkImage(
                          "https://cdn-icons-png.flaticon.com/512/2210/2210235.png",
                          scale: 10,
                        ),
                      ),
                      color: Colors.blue[900],
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Text(
                      'Sobre nós',
                      style: TextStyle(
                        fontSize: 11,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
