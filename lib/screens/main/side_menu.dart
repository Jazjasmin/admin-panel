import 'package:admin_pjct/constants.dart';
import 'package:flutter/material.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
    required this.height,
  }) : super(key: key);

  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: height,
        padding: const EdgeInsets.symmetric(
            horizontal: defaultPadding, vertical: defaultPadding * 3),
        decoration: const BoxDecoration(
            color: secondaryColor,
            borderRadius: BorderRadius.all(Radius.circular(30))),
        child: Column(
          children: [
            SizedBox(
              height: 120,
              child: DrawerHeader(
                padding: const EdgeInsets.only(left: defaultPadding * 1.5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Image.asset("assets/images/logop.png"),
                        Text(
                          "Proxibit",
                          style: Theme.of(context).textTheme.headline6,
                        )
                      ],
                    ),
                    Text(
                      "Main Menu",
                      style: Theme.of(context)
                          .textTheme
                          .headline2!
                          .copyWith(color: Colors.white70, fontSize: 10),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: defaultPadding,
            ),
            Stack(
              children: [
                Positioned.fill(
                    child: Expanded(
                  child: Container(
                    height: 50,
                    decoration: const BoxDecoration(
                      color: primaryColor,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                  ),
                )),
                Container(
                  margin: const EdgeInsets.only(left: 225, top: 10),
                  height: 30,
                  width: 5,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                ),
                DashboardListTile(
                  title: "Dashboard",
                  icon: const Icon(Icons.grid_view_outlined),
                  press: () {},
                ),
              ],
            ),
            DashboardListTile(
              title: "Transaction",
              icon: const Icon(Icons.poll_outlined),
              press: () {},
            ),
            DashboardListTile(
              title: "Transfer",
              icon: const Icon(Icons.send),
              press: () {},
            ),
            DashboardListTile(
              title: "Deposit",
              icon: const Icon(Icons.add_box_outlined),
              press: () {},
            ),
            DashboardListTile(
              title: "Withdraw",
              icon: const Icon(Icons.upload),
              press: () {},
            ),
            DashboardListTile(
              title: "Payments",
              icon: const Icon(Icons.account_balance_wallet_outlined),
              press: () {},
            ),
            DashboardListTile(
              title: "Messages",
              icon: const Icon(Icons.description_outlined),
              press: () {},
            ),
            const Spacer(),
            DashboardListTile(
              title: "Account",
              icon: const Icon(Icons.person),
              press: () {},
            ),
            DashboardListTile(
              title: "Settings",
              icon: const Icon(Icons.settings),
              press: () {},
            )
          ],
        ));
  }
}

class DashboardListTile extends StatelessWidget {
  const DashboardListTile({
    Key? key,
    required this.title,
    required this.icon,
    required this.press,
  }) : super(key: key);
  final String title;
  final Icon icon;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 0),
      child: ListTile(
        visualDensity: const VisualDensity(vertical: -4),
        dense: true,
        onTap: press,
        leading: Icon(icon.icon),
        title: Text(title),
      ),
    );
  }
}
