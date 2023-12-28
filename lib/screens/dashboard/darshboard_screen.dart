
import 'package:admin_pjct/screens/dashboard/components/chart_total_protfolio.dart';
import 'package:admin_pjct/screens/dashboard/components/recent_transactions.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import '../../constants.dart';
import 'components/chart.dart';
import 'components/digital_currency_details.dart';
import 'components/header.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            flex: 4,
            child: Container(
              padding: const EdgeInsets.symmetric(
                  vertical: defaultPadding * 2, horizontal: defaultPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Header(),
                  const SizedBox(
                    height: defaultPadding * 2.5,
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: defaultPadding),
                    child: Text(
                      "Total Protfolio",
                      style: Theme.of(context).textTheme.headline6!.copyWith(
                          color: secondaryColor, fontWeight: FontWeight.bold),
                    ),
                  ),
                  const ChartTotalProtfolio(),
                  const SizedBox(
                    height: defaultPadding * 2,
                  ),
                  RecentTransactions()
                ],
              ),
            )),
        Expanded(
            flex: 2,
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Total Balance",
                    style: Theme.of(context).textTheme.headline6!.copyWith(
                        color: secondaryColor, fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: [
                      Text(
                        "USD Balance",
                        style: Theme.of(context)
                            .textTheme
                            .headline2!
                            .copyWith(color: textColor, fontSize: 10),
                      ),
                      const Icon(
                        Icons.expand_more,
                        color: secondaryColor,
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "1.45.00",
                        style: Theme.of(context).textTheme.headline6!.copyWith(
                            color: secondaryColor, fontWeight: FontWeight.bold),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: defaultPadding),
                        child: Text(
                          "USD",
                          style: Theme.of(context)
                              .textTheme
                              .headline6!
                              .copyWith(
                                  color: primaryColor,
                                  fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: defaultPadding / 2, bottom: defaultPadding),
                    child: Text(
                      "Wallet ID: 2QV17CCOLWE3",
                      style: Theme.of(context)
                          .textTheme
                          .headline2!
                          .copyWith(color: textColor, fontSize: 10),
                    ),
                  ),
                  Row(
                    children: [
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: secondaryColor,
                              padding: const EdgeInsets.symmetric(
                                  horizontal: defaultPadding)),
                          onPressed: () {},
                          child: Text("Deposit",
                              style: Theme.of(context)
                                  .textTheme
                                  .headline2!
                                  .copyWith(
                                    color: Colors.white,
                                    fontSize: 10,
                                  ))),
                      const SizedBox(
                        width: defaultPadding,
                      ),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              elevation: 0,
                              primary: secondarybgColor,
                              padding: const EdgeInsets.symmetric(
                                  horizontal: defaultPadding)),
                          onPressed: () {},
                          child: Text("Withdraw",
                              style: Theme.of(context)
                                  .textTheme
                                  .headline2!
                                  .copyWith(
                                    color: textColor,
                                    fontSize: 10,
                                  )))
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: defaultPadding * 3, bottom: defaultPadding),
                    child: Text("My Protfolio",
                        style: Theme.of(context).textTheme.headline6!.copyWith(
                              color: secondaryColor,
                              fontWeight: FontWeight.bold,
                            )),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: defaultPadding,
                        vertical: defaultPadding * 1.5),
                    decoration: const BoxDecoration(
                        color: secondarybgColor,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: const Column(
                      children: [
                        Chart(),
                        DigitalCurrencyDetails(),
                      ],
                    ),
                  )
                ],
              ),
            ))
      ],
    );
  }
}

