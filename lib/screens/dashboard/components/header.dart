import 'package:flutter/material.dart';

import '../../../constants.dart';

class Header extends StatelessWidget {
  const Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                bottom: defaultPadding / 2,
                right: defaultPadding,
              ),
              child: Text(
                "Aed Belmekhfi",
                style: Theme.of(context).textTheme.headline6!.copyWith(
                      color: secondaryColor,
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: defaultPadding),
                  child: Text(
                    "verified",
                    style: Theme.of(context)
                        .textTheme
                        .subtitle2!
                        .copyWith(color: textColor, fontSize: 10),
                  ),
                ),
                const Icon(
                  Icons.verified_user_outlined,
                  size: defaultPadding,
                  color: Colors.greenAccent,
                )
              ],
            )
          ],
        ),
        ClipOval(
          child: Image.asset(
            "assets/images/person.jpg",
            height: 30,
            width: 30,
          ),
        ),
        const Icon(
          Icons.expand_more,
          color: secondaryColor,
        ),
        Expanded(
            child: Container(
          padding: const EdgeInsets.symmetric(horizontal: defaultPadding * 2),
          height: 40,
          child: TextField(
            decoration: InputDecoration(
                hintText: "Search Transactions....",
                hintStyle: const TextStyle(color: textColor, fontSize: 13),
                fillColor: secondarybgColor,
                filled: true,
                border: const OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                suffixIcon: InkWell(
                  onTap: () {},
                  child: Container(
                    decoration: const BoxDecoration(
                        color: secondarybgColor,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: const Icon(
                      Icons.search,
                      color: textColor,
                    ),
                  ),
                )),
          ),
        ))
      ],
    );
  }
}
