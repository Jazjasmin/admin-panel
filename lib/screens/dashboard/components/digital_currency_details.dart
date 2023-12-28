import 'package:admin_pjct/screens/dashboard/components/digital_curreny_card.dart';
import 'package:flutter/material.dart';

class DigitalCurrencyDetails extends StatelessWidget {
  const DigitalCurrencyDetails({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        DigitalCurrencyCard(
          svgScr: "assets/icons/btc.svg",
          subNameCurrency: "BTC",
          nameCurrency: "Bitcion",
          amountInDollers: "550.25 USD",
          percentage: "\$32 (2%)",
          color: Color.fromARGB(255, 209, 133, 18),
          icon: Icons.arrow_drop_down,
          perColor: Colors.redAccent,
        ),
        DigitalCurrencyCard(
          svgScr: "assets/icons/eth.svg",
          subNameCurrency: "ETH",
          nameCurrency: "Ethereum",
          amountInDollers: "445.75 USD",
          percentage: "\$32 (2%)",
          color: Color.fromARGB(255, 209, 133, 18),
          icon: Icons.arrow_drop_up,
          perColor: Colors.greenAccent,
        ),
        DigitalCurrencyCard(
          svgScr: "assets/icons/bnb.svg",
          subNameCurrency: "BNB",
          nameCurrency: "Binance",
          amountInDollers: "449.00 USD",
          percentage: "\$20 (1%)",
          color: Color.fromARGB(255, 209, 133, 18),
          icon: Icons.arrow_drop_up,
          perColor: Colors.greenAccent,
        )
      ],
    );
  }
}
