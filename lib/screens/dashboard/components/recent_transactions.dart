import 'package:admin_pjct/constants.dart';
import 'package:flutter/material.dart';

class RecentTransactions extends StatelessWidget {
  const RecentTransactions({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:
          const EdgeInsets.symmetric(horizontal: defaultPadding),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Recent Transactions",
                style: Theme.of(context)
                    .textTheme
                    .headline6!
                    .copyWith(
                        color: secondaryColor,
                        fontWeight: FontWeight.bold),
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: secondaryColor,
                      padding: const EdgeInsets.symmetric(
                          horizontal: defaultPadding + 2)),
                  onPressed: () {},
                  child: Text(
                    "View all",
                    style: Theme.of(context)
                        .textTheme
                        .subtitle2!
                        .copyWith(
                            color: Colors.white, fontSize: 10),
                  ))
            ],
          ),
          SizedBox(
            width: double.infinity,
            child: DataTable(
              columns: [
                DataColumn(
                    label: Text(
                  "Operation",
                  style: Theme.of(context)
                      .textTheme
                      .subtitle2!
                      .copyWith(color: textColor, fontSize: 10),
                )),
                DataColumn(
                    label: Text(
                  "Date",
                  style: Theme.of(context)
                      .textTheme
                      .subtitle2!
                      .copyWith(color: textColor, fontSize: 10),
                )),
                DataColumn(
                    label: Text(
                  "Amount",
                  style: Theme.of(context)
                      .textTheme
                      .subtitle2!
                      .copyWith(color: textColor, fontSize: 10),
                )),
                DataColumn(
                    label: Text(
                  "Status",
                  style: Theme.of(context)
                      .textTheme
                      .subtitle2!
                      .copyWith(color: textColor, fontSize: 10),
                ))
              ],
              rows: [
                DataRow(cells: [
                  DataCell(
                    Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("Withdraw",
                          style: TextStyle(
                            color: secondaryColor,
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                          )),
                      Text(
                        "Hash: 21114586792",
                        style: Theme.of(context)
                            .textTheme
                            .subtitle2!
                            .copyWith(
                                color: textColor, fontSize: 10),
                      ),
                    ],
                  )),
                  DataCell(Column(
                    children: [
                      const Text("Feb 17, 2023",
                          style: TextStyle(
                            color: secondaryColor,
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                          )),
                    ])),
                           DataCell(Column(
                    children: [
                      Text(
                        "\$80,00.00",
                        style: Theme.of(context)
                            .textTheme
                            .subtitle2!
                            .copyWith(
                                color: textColor, fontSize: 10),
                      ),
                    ],
                  )),
                  const DataCell(Column(children: [
                    Text("Completed",
                        style: TextStyle(
                          color: Colors.greenAccent,
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                        )),
                  ]))
                ])
              ],
            ),
          )
        ],
      ),
    );
  }
}
