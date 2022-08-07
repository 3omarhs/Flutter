class Item
{
  final String id;
  final String name;
  final String desc;
  final num price ;
  final String color;
  final String image;
Item({required this.id, required this.name,required this.desc , required this.color,required this.image,required this.price});
}

final Products = [
  Item(id: "IPh001", name: "IPhone", desc: "Apple Macontosh", color: "Green", image: "https://phoneslab.net/oman/wp-content/uploads/sites/10/2021/09/iphone-13-mini-4-600x600.jpg", price: 999),
  Item(id: "SamsungA50", name: "Samsung A53", desc: "Sumsung Company", color: "Yellow", image: "https://mobzel.com/wp-content/uploads/2021/09/iphone-13-mini.jpg", price: 504),


];