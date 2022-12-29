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
    'AC/Heater':
        const SvgIcons(url: "Assets/SVG/air-conditioner-svgrepo-com.svg"),
    'Baby Bed': const SvgIcons(url: "Assets/SVG/baby-bed-svgrepo-com.svg"),
    'Screens': const SvgIcons(url: "Assets/SVG/lcd-hd-monitor-svgrepo-com.svg"),
    'Car Parking':
        const SvgIcons(url: "Assets/SVG/car-parking-svgrepo-com.svg"),
    '24/7 Service': const SvgIcons(url: "Assets/SVG/dish-svgrepo-com.svg"),
    'Doctors': const SvgIcons(url: "Assets/SVG/doctor-svgrepo-com.svg"),
    'Hubs':
        const SvgIcons(url: "Assets/SVG/electronic-passkey-svgrepo-com.svg"),
    'House Keeping':
        const SvgIcons(url: "Assets/SVG/housekeeper-svgrepo-com.svg"),
    'Mini Bar':
        const SvgIcons(url: "Assets/SVG/kitchen-fridge-svgrepo-com.svg"),
    'laundry': const SvgIcons(url: "Assets/SVG/laundry-svgrepo-com.svg"),
    'Meeting': const SvgIcons(url: "Assets/SVG/meeting-svgrepo-com.svg"),
    'Pool': const SvgIcons(url: "Assets/SVG/pool-svgrepo-com.svg"),
    'Stlite ':
        const SvgIcons(url: "Assets/SVG/satellite-dish-svgrepo-com-2.svg"),
    'Smoke Detector':
        const SvgIcons(url: "Assets/SVG/smoke-detector-svgrepo-com.svg"),
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
