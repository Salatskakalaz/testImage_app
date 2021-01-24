import 'package:flutter/cupertino.dart';

class ItemModel {
  final String name;
  final String urlImage;
  final String urlAvatar;
  final String location;
  final Size size;
  final Specification specification;

  ItemModel(
      {@required this.name,
      @required this.urlImage,
      @required this.urlAvatar,
      @required this.location,
      @required this.size,
      @required this.specification});
}

class Specification {
  final String model;
  final int iso;
  final double aperture;
  final double focusLength;
  final String exposure;

  Specification(
      {@required this.iso,
      @required this.aperture,
      @required this.exposure,
      @required this.focusLength,
      @required this.model});
}

Future<List<ItemModel>> getList() async {
  return Future.delayed(Duration(milliseconds: 1000), () => _out);
}

List<ItemModel> _out = [
  ItemModel(
    name: "Panda",
    urlImage:
        "https://wallpaper-mania.com/wp-content/uploads/2018/09/High_resolution_wallpaper_background_ID_77700314062.jpg",
    urlAvatar:
        "https://wallbox.ru/wallpapers/main/201142/multfilmy-ce0e5bba745e.jpg",
    size: Size(1920, 1080),
    location: "New-York",
    specification: Specification(
      model: "Nikon 420",
      iso: 1800,
      aperture: 3.5,
      focusLength: 20.0,
      exposure: "1/79",
    ),
  ),
  ItemModel(
    name: "Squirrel",
    urlImage: "http://pavbca.com/walldb/original/8/c/2/541970.jpg",
    urlAvatar:
        "http://img.crazys.info/files/i/2012.4.12/1334244771_savv-107.jpg",
    size: Size(1920, 1080),
    location: "Moscow",
    specification: Specification(
      model: "Sony 3600&5600",
      iso: 5000,
      aperture: 3.5,
      focusLength: 20.0,
      exposure: "4/20",
    ),
  ),
  ItemModel(
    name: "Cat",
    urlImage:
        "https://img3.goodfon.ru/original/1920x1080/b/10/guerel-sahin-photographer-1269.jpg",
    urlAvatar:
        "https://wallpapertag.com/wallpaper/full/d/c/d/780452-puss-in-boots-wallpapers-1920x1080-windows-10.jpg",
    size: Size(1920, 1080),
    location: "London",
    specification: Specification(
      model: "Samsung ",
      iso: 100,
      aperture: 3.5,
      focusLength: 20.0,
      exposure: "3/10",
    ),
  ),
  ItemModel(
    name: "Grinch",
    urlImage: "https://i.artfile.ru/2400x1350_930605_[www.ArtFile.ru].jpg",
    urlAvatar: "https://wallpaperplay.com/walls/full/1/1/c/359832.jpg",
    size: Size(1920, 1080),
    location: "Paris",
    specification: Specification(
      model: "Nikon 3000",
      iso: 1200,
      aperture: 3.37,
      focusLength: 20.0,
      exposure: "1/79",
    ),
  ),
  ItemModel(
    name: "Name",
    urlImage:
        "https://api.hel.fi/linkedevents/media/images/Pasila-y%C3%B6ll%C3%A4.jpg",
    urlAvatar:
        "https://steamuserimages-a.akamaihd.net/ugc/486766424845169356/BE7A8DA7EB1EC4F00259601990D8240008FFDED6/?imw=512&amp;imh=288&amp;ima=fit&amp;impolicy=Letterbox&amp;imcolor=%23000000&amp;letterbox=true",
    size: Size(1920, 1080),
    location: "Helsinki",
    specification: Specification(
      model: "Philips",
      iso: 1800,
      aperture: 4.5,
      focusLength: 34.0,
      exposure: "1/79",
    ),
  ),
];
