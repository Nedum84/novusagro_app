import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:novusagro_app/components/button.dart';
import 'package:novusagro_app/components/orders_item.dart';
import 'package:novusagro_app/models/orders_models.dart';
import 'package:novusagro_app/utils/colors.dart';

class SalesPage extends StatefulWidget {
  const SalesPage({Key? key}) : super(key: key);

  @override
  State<SalesPage> createState() => _SalesPageState();
}

class _SalesPageState extends State<SalesPage> {
  int index = 0;

  changeTab(int idx) {
    setState(() => index = idx);
  }

  @override
  Widget build(BuildContext context) {
    final ongoingOrders = ordersList.where((element) => element.isOnging == true).toList();
    final completedOrders = ordersList.where((element) => element.isOnging != true).toList();
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        Image.asset('assets/bg.png'),
        const SizedBox(height: 12),
        CustomButton(onClick: () => null, text: 'Place Order', py: 16),
        const SizedBox(height: 16),
        Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            border: Border.all(color: KColors.GREY_BORDER),
            color: Colors.white,
          ),
          child: Row(
            children: [
              Expanded(
                child: CircularButton(
                  text: 'Ongoing Orders',
                  py: 8,
                  textSize: 16,
                  color: index != 0 ? Colors.white : KColors.PRIMARY,
                  textColor: index != 0 ? KColors.GREY_TEXT : Colors.white,
                  onClick: () => changeTab(0),
                ),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: CircularButton(
                  text: 'Placed Orders',
                  py: 8,
                  textSize: 16,
                  textColor: index != 1 ? KColors.GREY_TEXT : Colors.white,
                  color: index != 1 ? Colors.white : KColors.PRIMARY,
                  onClick: () => changeTab(1),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 12),
        index == 0
            ? ListView.separated(
                itemCount: ongoingOrders.length,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return OrdersItem(
                    orders: ongoingOrders[index],
                  );
                },
                separatorBuilder: (context, index) => const SizedBox(height: 8),
              )
            : ListView.separated(
                itemCount: completedOrders.length,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return OrdersItem(
                    orders: completedOrders[index],
                  );
                },
                separatorBuilder: (context, index) => const SizedBox(height: 8),
              )
      ],
    );
  }
}
