class MenuModel {
  String nombre;
  String dias;
  double precio;
  String urlImage;
  bool isSelected;

  MenuModel({
    required this.nombre,
    required this.dias,
    required this.precio,
    required this.urlImage,
    this.isSelected = false,
  });
}

List<MenuModel> listMenuModel = [
  MenuModel(
    nombre: "Menu 1",
    dias: "Lun - Mar - Mie",
    precio: 5.6,
    urlImage:
        "https://images.pexels.com/photos/376464/pexels-photo-376464.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1https://images.pexels.com/photos/376464/pexels-photo-376464.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
  ),
  MenuModel(
    nombre: "Menu 2",
    dias: "Lun - Mie",
    precio: 6,
    urlImage:
        "https://images.pexels.com/photos/70497/pexels-photo-70497.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
  ),
  MenuModel(
    nombre: "Menu 3",
    dias: "Mar - Mie",
    precio: 8,
    urlImage:
        "https://images.pexels.com/photos/1099680/pexels-photo-1099680.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
  ),
  MenuModel(
    nombre: "Menu 4",
    dias: "Vie - Sab",
    precio: 8,
    urlImage:
        "https://images.pexels.com/photos/958545/pexels-photo-958545.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
  ),
  MenuModel(
    nombre: "Menu 5",
    dias: "Dom",
    precio: 15,
    urlImage:
        "https://images.pexels.com/photos/1640772/pexels-photo-1640772.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
  ),
];
