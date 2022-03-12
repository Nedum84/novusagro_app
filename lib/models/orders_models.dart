import 'package:flutter/material.dart';
import 'package:novusagro_app/utils/colors.dart';

class OrdersModel {
  final String name;
  final String acronym;
  final bool isOnging;
  final String price;
  final String btnText;
  final Color btnColor;

  const OrdersModel({required this.btnText, required this.btnColor, required this.name, required this.acronym, required this.isOnging, required this.price});
}

const List<OrdersModel> ordersList = [
  OrdersModel(
    name: 'Femi Akilapa',
    acronym: 'AP',
    isOnging: true,
    price: 'N35,000',
    btnColor: KColors.PINK,
    btnText: 'Awaiting Payment',
  ),
  OrdersModel(
    name: 'Patience Edowoh',
    acronym: 'PE',
    isOnging: true,
    price: 'N42,000',
    btnColor: KColors.GOLD,
    btnText: 'Inputs in cart',
  ),
  OrdersModel(
    name: 'Femi Akilapa',
    acronym: 'AP',
    isOnging: true,
    price: 'N35,000',
    btnColor: KColors.GREEN,
    btnText: 'Awaiting Payment',
  ),
  OrdersModel(
    name: 'Femi Akilapa',
    acronym: 'AP',
    isOnging: true,
    price: 'N35,000',
    btnColor: KColors.PINK,
    btnText: 'Awaiting Payment',
  ),
  OrdersModel(
    name: 'Patience Edowoh',
    acronym: 'PE',
    isOnging: true,
    price: 'N42,000',
    btnColor: KColors.GOLD,
    btnText: 'Inputs in cart',
  ),
  OrdersModel(
    name: 'Femi Akilapa',
    acronym: 'AP',
    isOnging: true,
    price: 'N35,000',
    btnColor: KColors.GREEN,
    btnText: 'Awaiting Payment',
  ),
  OrdersModel(
    name: 'Femi Akilapa',
    acronym: 'AP',
    isOnging: true,
    price: 'N35,000',
    btnColor: KColors.PINK,
    btnText: 'Awaiting Payment',
  ),
  OrdersModel(
    name: 'Patience Edowoh',
    acronym: 'PE',
    isOnging: true,
    price: 'N42,000',
    btnColor: KColors.GOLD,
    btnText: 'Inputs in cart',
  ),
  OrdersModel(
    name: 'Femi Akilapa',
    acronym: 'AP',
    isOnging: true,
    price: 'N35,000',
    btnColor: KColors.GREEN,
    btnText: 'Awaiting Payment',
  ),
  OrdersModel(
    name: 'Mudashiru Obasa',
    acronym: 'MO',
    isOnging: false,
    price: 'N35,000',
    btnColor: KColors.GREEN,
    btnText: 'Order in Progress',
  ),
  OrdersModel(
    name: 'Timothy M. Okundia',
    acronym: 'TO',
    isOnging: false,
    price: 'N15,000',
    btnColor: KColors.PURPLE,
    btnText: 'Order in Progress',
  ),
  OrdersModel(
    name: 'Mudashiru Obasa',
    acronym: 'MO',
    isOnging: false,
    price: 'N35,000',
    btnColor: KColors.GOLD,
    btnText: 'Order Completed',
  ),
  OrdersModel(
    name: 'Mudashiru Obasa',
    acronym: 'MO',
    isOnging: false,
    price: 'N35,000',
    btnColor: KColors.GREEN,
    btnText: 'Order in Progress',
  ),
  OrdersModel(
    name: 'Timothy M. Okundia',
    acronym: 'TO',
    isOnging: false,
    price: 'N15,000',
    btnColor: KColors.PURPLE,
    btnText: 'Order in Progress',
  ),
  OrdersModel(
    name: 'Mudashiru Obasa',
    acronym: 'MO',
    isOnging: false,
    price: 'N35,000',
    btnColor: KColors.GOLD,
    btnText: 'Order Completed',
  ),
  OrdersModel(
    name: 'Mudashiru Obasa',
    acronym: 'MO',
    isOnging: false,
    price: 'N35,000',
    btnColor: KColors.GREEN,
    btnText: 'Order in Progress',
  ),
  OrdersModel(
    name: 'Timothy M. Okundia',
    acronym: 'TO',
    isOnging: false,
    price: 'N15,000',
    btnColor: KColors.PURPLE,
    btnText: 'Order in Progress',
  ),
  OrdersModel(
    name: 'Mudashiru Obasa',
    acronym: 'MO',
    isOnging: false,
    price: 'N35,000',
    btnColor: KColors.GOLD,
    btnText: 'Order Completed',
  ),
];
