import 'package:flutter/material.dart';
import 'package:novusagro_app/components/button.dart';
import 'package:novusagro_app/components/image_text.dart';
import 'package:novusagro_app/models/orders_models.dart';
import 'package:novusagro_app/utils/colors.dart';

class OrdersItem extends StatelessWidget {
  const OrdersItem({Key? key, required this.orders}) : super(key: key);
  final OrdersModel orders;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: KColors.GREY_BORDER),
        color: Colors.white,
      ),
      child: Column(
        children: [
          Row(
            children: [
              ImageText(bgColor: orders.btnColor),
              const SizedBox(width: 12),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    orders.name,
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 4),
                  CircularButton(
                    onClick: () => null,
                    color: orders.btnColor,
                    text: orders.btnText,
                    py: 6,
                  ),
                ],
              )
            ],
          ),
          const SizedBox(height: 4),
          const Divider(color: KColors.GREY_BORDER),
          const SizedBox(height: 4),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Cost',
                  ),
                  Text(
                    orders.price,
                    style: const TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              CustomButton(onClick: () => null, text: orders.isOnging == true ? 'Continue' : 'View'),
            ],
          )
        ],
      ),
    );
  }
}
