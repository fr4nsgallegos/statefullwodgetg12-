import 'package:flutter/material.dart';
import 'package:stafullwidgetg12/models/deporte_model.dart';
import 'package:stafullwidgetg12/widgets/deporte_boton_widget.dart';

class DeportesFavoritosPage extends StatefulWidget {
  const DeportesFavoritosPage({super.key});

  @override
  State<DeportesFavoritosPage> createState() => _DeportesFavoritosPageState();
}

class _DeportesFavoritosPageState extends State<DeportesFavoritosPage> {
  List<DeporteModel> favoriteDeportList = [];

  // ESTO LO HEMOS CONVERTIDO A UN STATLESWIDGET DENTRO DE LA CARPETA WIDGET
  // Widget deporteBoton(DeporteModel deporteModel, bool isOnBoxContainer) {
  //   return ElevatedButton(
  //     onPressed: () {
  //       if (!deporteModel.isFavorite) {
  //         deporteModel.isFavorite = true;
  //         favoriteDeportList.add(deporteModel);
  //       } else {
  //         deporteModel.isFavorite = false;
  //         favoriteDeportList.remove(deporteModel);
  //       }
  //       setState(() {});
  //     },
  //     child: Text(deporteModel.name),
  //     style: ElevatedButton.styleFrom(
  //       padding: EdgeInsets.symmetric(horizontal: 16, vertical: 5),

  //       backgroundColor:
  //           isOnBoxContainer == true
  //               ? Colors.white
  //               : deporteModel.isFavorite == true
  //               ? Colors.orange
  //               : Colors.white,
  //       foregroundColor:
  //           isOnBoxContainer == true
  //               ? Colors.black
  //               : deporteModel.isFavorite == true
  //               ? Colors.white
  //               : Colors.black,
  //       shape: RoundedRectangleBorder(
  //         borderRadius: BorderRadius.circular(10),
  //         side: BorderSide(color: Colors.orange, width: 2),
  //       ),
  //     ),
  //   );
  // }

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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "¿Cuáles son tus deportes favoritos ?",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),

            // Container(
            //   padding: EdgeInsets.symmetric(horizontal: 16, vertical: 5),
            //   child: Text("Gimnasio"),
            //   decoration: BoxDecoration(
            //     // color: Colors.red,
            //     borderRadius: BorderRadius.circular(10),
            //     border: Border.all(color: Colors.orange, width: 2),
            //   ),
            // ),
            SizedBox(height: 16),
            Center(
              child: Wrap(
                spacing: 8, //espaciado horizontal entre los elementos
                runSpacing: 2, //espaciado vertical entre las filas
                alignment: WrapAlignment.spaceAround,
                children: [
                  for (int i = 0; i < deportModelList.length; i++)
                    // deporteBoton(deportModelList[i], false),
                    DeporteBotonWidget(
                      deporteModel: deportModelList[i],
                      isOnBoxContainer: false,
                      onTap: () {
                        if (!deportModelList[i].isFavorite) {
                          deportModelList[i].isFavorite = true;
                          favoriteDeportList.add(deportModelList[i]);
                        } else {
                          deportModelList[i].isFavorite = false;
                          favoriteDeportList.remove(deportModelList[i]);
                        }
                        setState(() {});
                      },
                    ),
                ],
              ),
            ),
            Divider(thickness: 2, height: 32, color: Colors.black),
            Text(
              "Mis deportes favoritos son:",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            Container(
              padding: EdgeInsets.all(12),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 2,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                border: Border.all(color: Colors.black, width: 2),
              ),
              child: Wrap(
                spacing: 8, //espaciado horizontal entre los elementos
                runSpacing: 2, //espaciado vertical entre las filas
                alignment: WrapAlignment.spaceAround,
                children: [
                  for (int i = 0; i < favoriteDeportList.length; i++)
                    // deporteBoton(favoriteDeportList[i], true),
                    DeporteBotonWidget(
                      deporteModel: favoriteDeportList[i],
                      isOnBoxContainer: true,
                      onTap: () {
                        favoriteDeportList[i].isFavorite = false;
                        favoriteDeportList.remove(favoriteDeportList[i]);
                        setState(() {});
                      },
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
