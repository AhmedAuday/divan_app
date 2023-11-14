import 'package:divan_app/src/interface/Widget/custom_svg_icon.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constant/constant.dart';

class HotelsRoom {
  NetworkImage imgUrl;
  String roomType;

  int roomFloor;
  String area;
  String bedType;
  String viewType;
  String numBed;
  HotelsRoom({
    required this.numBed,
    required this.imgUrl,
    required this.roomType,
    required this.roomFloor,
    required this.area,
    required this.bedType,
    required this.viewType,
  });

  static Map<String, Widget> featuears = {
    'AC/Heater': SvgIcons(url: "Assets/SVG/air-conditioner-svgrepo-com.svg"),
    'Baby Bed': SvgIcons(url: "Assets/SVG/baby-bed-svgrepo-com.svg"),
    'Screens': SvgIcons(url: "Assets/SVG/lcd-hd-monitor-svgrepo-com.svg"),
    'Car Parking': SvgIcons(url: "Assets/SVG/car-parking-svgrepo-com.svg"),
    '24/7 Service': SvgIcons(url: "Assets/SVG/dish-svgrepo-com.svg"),
    'Doctors': SvgIcons(url: "Assets/SVG/doctor-svgrepo-com.svg"),
    'Hubs': SvgIcons(url: "Assets/SVG/electronic-passkey-svgrepo-com.svg"),
    'House Keeping': SvgIcons(url: "Assets/SVG/housekeeper-svgrepo-com.svg"),
    'Mini Bar': SvgIcons(url: "Assets/SVG/kitchen-fridge-svgrepo-com.svg"),
    'laundry': SvgIcons(url: "Assets/SVG/laundry-svgrepo-com.svg"),
    'Meeting': SvgIcons(url: "Assets/SVG/meeting-svgrepo-com.svg"),
    'Pool': SvgIcons(url: "Assets/SVG/pool-svgrepo-com.svg"),
    'Stlite ': SvgIcons(url: "Assets/SVG/satellite-dish-svgrepo-com-2.svg"),
    'Smoke Detector':
        SvgIcons(url: "Assets/SVG/smoke-detector-svgrepo-com.svg"),
  };
}

List<HotelsRoom> hotelRooms = [
  HotelsRoom(
    numBed: "Two Bed",
    imgUrl: const NetworkImage(imgg),
    roomType: "Superior Room",
    roomFloor: 11,
    area: "584*490",
    bedType: "king",
    viewType: "Park View",
  ),
  HotelsRoom(
    numBed: "One Bed",
    imgUrl: const NetworkImage(deluxRoom),
    roomType: "Delux Room",
    roomFloor: 11,
    area: "584*490",
    bedType: "king",
    viewType: "Park View",
  ),
  HotelsRoom(
    numBed: "Two Bed",
    imgUrl: const NetworkImage(suite),
    roomType: "Suite",
    roomFloor: 11,
    area: "584*490",
    bedType: "king",
    viewType: "Park View",
  ),
  HotelsRoom(
    numBed: "Two Bed",
    imgUrl: const NetworkImage(aprtement),
    roomType: "Aprtment",
    roomFloor: 11,
    area: "584*490",
    bedType: "king",
    viewType: "Park View",
  ),
  HotelsRoom(
    numBed: "Three Bed",
    imgUrl: const NetworkImage(penthouse),
    roomType: "Penthouse",
    roomFloor: 11,
    area: "574*470",
    bedType: "king",
    viewType: "Park View",
  ),
  HotelsRoom(
    numBed: "Four Bed",
    imgUrl: const NetworkImage(prisidential),
    roomType: "Prisdintail Suite",
    roomFloor: 11,
    area: "520*290",
    bedType: "king",
    viewType: "Park View",
  ),
];
