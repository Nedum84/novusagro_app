import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:novusagro_app/pages/tabs/home/home.dart';
import 'package:novusagro_app/pages/tabs/outlet/outlet.dart';
import 'package:novusagro_app/pages/tabs/profile/profile.dart';
import 'package:novusagro_app/pages/tabs/sales/sales.dart';
import 'package:novusagro_app/utils/colors.dart';

class TabsPage extends StatefulWidget {
  const TabsPage({Key? key}) : super(key: key);

  @override
  _TabsPageState createState() => _TabsPageState();
}

class _TabsPageState extends State<TabsPage> {
  int index = 2;
  final views = [const HomePage(), const OutletPage(), const SalesPage(), const ProfilePage()];

  changePage(int idx) => setState(() => index = idx);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KColors.GREY,
      appBar: AppBar(
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarBrightness: Brightness.light,
        ),
        backgroundColor: Colors.transparent,
        toolbarHeight: 40,
        elevation: 0,
        title: const Text(''),
        actions: [
          Row(
            children: [Image.asset('assets/logo.png'), const SizedBox(width: 16)],
          ),
        ],
      ),
      body: views[index],
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          border: Border(
            top: BorderSide(
              color: KColors.GREY_BORDER,
              width: 1.0,
            ),
          ),
        ),
        height: 70,
        // padding: const EdgeInsets.all(8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TabItem(
              text: 'Home',
              icon: Icons.home,
              isActive: index == 0,
              onClick: () => changePage(0),
            ),
            TabItem(
              text: 'Outlet',
              icon: Icons.library_books_sharp,
              isActive: index == 1,
              onClick: () => changePage(1),
            ),
            TabItem(
              text: 'Sales',
              icon: Icons.shopping_bag,
              isActive: index == 2,
              onClick: () => changePage(2),
            ),
            TabItem(
              text: 'Profile',
              icon: Icons.person,
              isActive: index == 3,
              onClick: () => changePage(3),
            ),
          ],
        ),
      ),
    );
  }
}

class TabItem extends StatelessWidget {
  const TabItem({Key? key, required this.icon, required this.text, required this.onClick, this.isActive = false}) : super(key: key);
  final IconData icon;
  final String text;
  final bool isActive;
  final Function() onClick;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Material(
        child: InkWell(
          onTap: onClick,
          highlightColor: KColors.GREY_BORDER,
          child: Container(
            padding: const EdgeInsets.all(4),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(icon, color: isActive ? KColors.PRIMARY : KColors.TEXT),
                Text(
                  text,
                  style: TextStyle(
                    color: isActive ? KColors.PRIMARY : KColors.TEXT,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
