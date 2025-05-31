import 'package:flutter/material.dart';

class DeportesFavoritos extends StatefulWidget {
  const DeportesFavoritos({super.key});

  @override
  State<DeportesFavoritos> createState() => _DeportesFavoritosState();
}

class _DeportesFavoritosState extends State<DeportesFavoritos> {
  Widget deporteBoton(String deporteNombre) {
    return ElevatedButton(
      onPressed: () {},
      child: Text(deporteNombre),
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 5),

        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: BorderSide(color: Colors.orange, width: 2),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "SetState Texts App",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.orange,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
        child: Column(
          children: [
            Text(
              "¿Cuáles son tus deportes favoritos ?",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),

            Container(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 5),
              child: Text("Gimnasio"),
              decoration: BoxDecoration(
                // color: Colors.red,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.orange, width: 2),
              ),
            ),

            deporteBoton("Gimnasio"),
            deporteBoton("Golf"),
            deporteBoton("Fútbol"),
          ],
        ),
      ),
    );
  }
}
