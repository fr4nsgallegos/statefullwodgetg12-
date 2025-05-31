import 'package:flutter/material.dart';
import 'package:stafullwidgetg12/models/deporte_model.dart';

class DeporteBotonWidget extends StatelessWidget {
  DeporteModel deporteModel;
  bool isOnBoxContainer;
  VoidCallback onTap;

  DeporteBotonWidget({
    required this.deporteModel,
    required this.isOnBoxContainer,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      //  () {
      //   if (!deporteModel.isFavorite) {
      //     deporteModel.isFavorite = true;
      //     favoriteDeportList.add(deporteModel);
      //   } else {
      //     deporteModel.isFavorite = false;
      //     favoriteDeportList.remove(deporteModel);
      //   }
      //   setState(() {});
      // },
      child: Text(deporteModel.name),
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 5),

        backgroundColor:
            isOnBoxContainer == true
                ? Colors.white
                : deporteModel.isFavorite == true
                ? Colors.orange
                : Colors.white,
        foregroundColor:
            isOnBoxContainer == true
                ? Colors.black
                : deporteModel.isFavorite == true
                ? Colors.white
                : Colors.black,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
          side: BorderSide(color: Colors.orange, width: 2),
        ),
      ),
    );
  }
}
