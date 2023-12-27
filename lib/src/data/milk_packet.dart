import 'package:milk_delivery_app/src/config/constants.dart';

class MilkPacket {
  final String name;
  final String photo;
  final double price;
  final bool isAvailable;

  MilkPacket(
      {required this.name,
      required this.photo,
      required this.price,
      required this.isAvailable});
}

var amulCowFreshMilk = MilkPacket(
    name: 'Amul Cow Fresh Milk',
    photo: '${Constants.imagesFolder}amul_cow_fresh_milk.png',
    price: 27.0,
    isAvailable: true);

var amulGoldFullCream = MilkPacket(
    name: 'Amul Gold Full Cream Fresh Milk',
    photo: '${Constants.imagesFolder}amul_gold_full_cream.png',
    price: 26.0,
    isAvailable: true);

var amulMotiTonedMilk = MilkPacket(
    name: 'Amul Moti Toned Milk',
    photo: '${Constants.imagesFolder}amul_moti_toned_milk.png',
    price: 30.0,
    isAvailable: true);

var amulTaazaHomogenisedToned = MilkPacket(
    name: 'Amul Taaza Homogenised Toned Milk',
    photo: '${Constants.imagesFolder}amul_taaza_homegenised_toned.png',
    price: 32.0,
    isAvailable: true);

var amulTaazaToned = MilkPacket(
    name: 'Amul Taaza Toned Fresh Milk',
    photo: '${Constants.imagesFolder}amul_taaza_toned.png',
    price: 32.0,
    isAvailable: true);

var motherDairyCowFresh = MilkPacket(
    name: 'Mother Dairy Cow Fresh Milk',
    photo: '${Constants.imagesFolder}mother_dairy_cow_fresh.png',
    price: 35.0,
    isAvailable: true);

var motherDairyFullCream = MilkPacket(
    name: 'Mother Dairy Full Cream Fresh Milk',
    photo: '${Constants.imagesFolder}mother_dairy_full_cream.png',
    price: 33.0,
    isAvailable: true);

var motherDairyTonedFresh = MilkPacket(
    name: 'Mother Dairy Toned Fresh Milk',
    photo: '${Constants.imagesFolder}mother_dairy_toned_fresh.png',
    price: 26.0,
    isAvailable: true);
