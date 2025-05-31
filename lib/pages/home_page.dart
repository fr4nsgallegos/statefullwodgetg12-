import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Map<String, dynamic>> listMenuMaps = [
    {
      "nombre": "Menu 1",
      "dias": "Lun - Mar - Mie",
      "precio": 5,
      "urlImage":
          "https://images.pexels.com/photos/376464/pexels-photo-376464.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      "isSelected": false,
    },
    {
      "nombre": "Menu 2",
      "dias": "Lun - Mie",
      "precio": 6,
      "urlImage":
          "https://images.pexels.com/photos/70497/pexels-photo-70497.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      "isSelected": false,
    },
    {
      "nombre": "Menu 3",
      "dias": "Mar - Mie",
      "precio": 7,
      "urlImage":
          "https://images.pexels.com/photos/1099680/pexels-photo-1099680.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      "isSelected": false,
    },
    {
      "nombre": "Menu 4",
      "dias": "Vie - Sab",
      "precio": 8,
      "urlImage":
          "https://images.pexels.com/photos/958545/pexels-photo-958545.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      "isSelected": false,
    },
    {
      "nombre": "Menu 5",
      "dias": "Dom",
      "precio": 10,
      "urlImage":
          "https://images.pexels.com/photos/1640772/pexels-photo-1640772.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
      "isSelected": false,
    },
  ];
  int? selectedMenuIndex;

  Widget buildMenuCard(
    double widthPageAux,
    Map<String, dynamic> menuMap,
    int index,
  ) {
    menuMap["isSelected"] = selectedMenuIndex == index;
    return GestureDetector(
      onTap: () {
        selectedMenuIndex = menuMap["isSelected"] == true ? null : index;
        // selectedMenuIndex = index;
        // menuMap["isSelected"] = !menuMap["isSelected"];
        // print(menuMap["isSelected"]);
        setState(() {});
      },

      child: Container(
        margin: EdgeInsets.only(top: 10),
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          color:
              menuMap["isSelected"] == true ? Color(0xffFDD770) : Colors.white,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
            color: menuMap["isSelected"] == true ? Colors.white : Colors.black,
            width: 2,
          ),
        ),
        child: Row(
          children: [
            // PRIMERA OPCIÓN PARA PONER BORDER REDONDEADOS EN UNA IMAGEN
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.network(
                menuMap["urlImage"],
                width: widthPageAux / 4,
                height: widthPageAux / 4,
                fit: BoxFit.cover,
              ),
            ),

            // SEGUNDA FORMA PARA PONER BORDES REONDEADOS PARA UNA IMAGEN
            // Container(
            //   width: widthPage / 4,
            //   height: widthPage / 4,
            //   decoration: BoxDecoration(
            //     borderRadius: BorderRadius.circular(12),
            //     image: DecorationImage(
            //       image: NetworkImage(
            //         "https://images.pexels.com/photos/376464/pexels-photo-376464.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
            //       ),
            //       fit: BoxFit.cover,
            //     ),
            //   ),
            // ),
            SizedBox(width: 16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  menuMap["nombre"],
                  style: TextStyle(
                    fontSize: 22,
                    color:
                        menuMap["isSelected"] == true
                            ? Colors.white
                            : Colors.black,
                  ),
                ),
                Text(
                  menuMap["dias"],
                  style: TextStyle(
                    fontSize: 18,
                    color:
                        menuMap["isSelected"] == true
                            ? Colors.white
                            : Colors.black,
                  ),
                ),
                Text(
                  "S/ . ${menuMap["precio"]} ",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color:
                        menuMap["isSelected"] == true
                            ? Colors.white
                            : Colors.black,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    double widthPage = MediaQuery.of(context).size.width;
    double heightPage = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: Text(
            "SetState Cards Assets App",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
          ),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Selecciona tu mejor opción",
                style: TextStyle(fontSize: 24),
              ),
              Column(
                children: List.generate(listMenuMaps.length, (index) {
                  return buildMenuCard(widthPage, listMenuMaps[index], index);
                }),
              ),

              // buildMenuCard(widthPage),
              // buildMenuCard(widthPage),
              // buildMenuCard(widthPage),
            ],
          ),
        ),
      ),
    );
  }
}
