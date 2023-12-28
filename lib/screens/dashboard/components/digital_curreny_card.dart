import 'package:admin_pjct/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class DigitalCurrencyCard extends StatelessWidget {
  const DigitalCurrencyCard({
    Key? key, required this.svgScr, required this.subNameCurrency, required this.nameCurrency, required this.amountInDollers, required this.percentage, required this.color, required this.icon, required this.perColor,
  }) : super(key: key);

  final String svgScr, subNameCurrency, nameCurrency,amountInDollers, percentage;
  final Color color, perColor;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 30,
          height: 30,
          child: SvgPicture.asset(svgScr,
          color: color,
          ),
        ),
        const SizedBox(width:defaultPadding/2,),
        Expanded(
          child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(subNameCurrency,
            style: Theme.of(context).textTheme.headline3!.copyWith(
              color: secondaryColor, fontWeight: FontWeight.bold, fontSize: 10,
            ),),
            Text(nameCurrency,
            style: Theme.of(context).textTheme.subtitle2!.copyWith(
              color: textColor, fontWeight: FontWeight.bold, fontSize: 10,
            ),),
          ],
        )),
        Column(
          children: [
            Text(amountInDollers,
            style: Theme.of(context).textTheme.headline3!.copyWith(
              color: secondaryColor, fontWeight: FontWeight.bold, fontSize: 10,
            ),
            ),
            Row(children: [
              Icon(icon,
              color: perColor),
              Text(percentage,
            style: Theme.of(context).textTheme.subtitle2!.copyWith(
              color: Colors.redAccent, fontWeight: FontWeight.bold, fontSize: 10,
            ),
            ),
            ],)
          ],
        )                            
      ],
    );
  }
}

