import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
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
              Container(
                margin: EdgeInsets.only(top: 16),
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(color: Colors.black, width: 2),
                ),
                child: Row(
                  children: [
                    // PRIMERA OPCIÓN PARA PONER BORDER REDONDEADOS EN UNA IMAGEN
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.network(
                        "https://images.pexels.com/photos/376464/pexels-photo-376464.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                        width: widthPage / 4,
                        height: widthPage / 4,
                        fit: BoxFit.cover,
                      ),
                    ),

                    // SEGUNDA FORMA PARA PONER BORDES REONDEADOS PARA UNA IMAGEN
                    Container(
                      width: widthPage / 4,
                      height: widthPage / 4,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        image: DecorationImage(
                          image: NetworkImage(
                            "https://images.pexels.com/photos/376464/pexels-photo-376464.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(width: 16),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Menú 1", style: TextStyle(fontSize: 22)),
                        Text(
                          "Lun - Mie - Vier",
                          style: TextStyle(fontSize: 18),
                        ),
                        Text(
                          "S/ . 5 ",
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
