import 'package:admin_pjct/screens/dashboard/components/chart_area.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class ChartTotalProtfolio extends StatelessWidget {
  const ChartTotalProtfolio({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: defaultPadding),
          padding: const EdgeInsets.symmetric(
            vertical: defaultPadding * 1.5,
            horizontal: defaultPadding * 2,
          ),
          decoration: const BoxDecoration(
              color: secondarybgColor,
              borderRadius: BorderRadius.all(Radius.circular(10))),
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    "Chart",
                    style: Theme.of(context)
                        .textTheme
                        .headline6!
                        .copyWith(
                          color: secondaryColor,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  const Spacer(),
                  const btnContainer(
                    text: "1m",
                    colorbg: Colors.white,
                    colorText: secondaryColor,
                  ),
                  const btnContainer(
                    text: "3m",
                    colorbg: Colors.white,
                    colorText: secondaryColor,
                  ),
                  const btnContainer(
                    text: "6m",
                    colorbg: secondaryColor,
                    colorText: Colors.white,
                  ),
                  const btnContainer(
                    text: "12m",
                    colorbg: Colors.white,
                    colorText: secondaryColor,
                  ),
                  Text("Monthly",
                  style: Theme.of(context)
                        .textTheme
                        .subtitle2!
                        .copyWith(
                          color: textColor,
                          fontSize: 10,
                          
                        ),),
                        const Icon(Icons.expand_more,
                        color: secondaryColor,),
                ],
              ),
              const SizedBox(height: defaultPadding,),
              const ChartArea(),
            ],
          ),
        ),
        Positioned.fill(child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal:3 ,vertical: 3),
                      decoration: BoxDecoration(
                        border: Border.all(color: secondaryColor,width: 1),
                        borderRadius: const BorderRadius.all(Radius.circular(5)),
                     ),
                     child: const Icon(Icons.arrow_back_ios_new, color: secondaryColor,),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal:3 ,vertical: 3),
                      decoration: BoxDecoration(
                        border: Border.all(color: secondaryColor,width: 1),
                        borderRadius: const BorderRadius.all(Radius.circular(5)),
                     ),
                     child: const Icon(Icons.arrow_forward_ios, color: secondaryColor,),
                    ),
                  ],
                  
                  ))
      ],
    );
  }
}

class btnContainer extends StatelessWidget {
  const btnContainer({
    Key? key,
    required this.text,
    required this.colorbg,
    required this.colorText,
  }) : super(key: key);

  final String text;
  final Color colorbg;
  final Color colorText;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 3),
      padding: const EdgeInsets.symmetric(horizontal: defaultPadding, vertical: 4),
      decoration: BoxDecoration(
          color: colorbg,
          border: Border.all(color: secondaryColor, width: 1),
          borderRadius: const BorderRadius.all(Radius.circular(5))),
      child: Text(
        text,
        style: Theme.of(context).textTheme.headline6!.copyWith(
              color: colorText,
              fontSize: 10,
              fontWeight: FontWeight.bold,
            ),
      ),
    );
  }
}
