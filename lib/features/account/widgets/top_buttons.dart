import 'package:flutter/material.dart';
import 'package:flutter_amazon_clone/features/account/widgets/accoun_button.dart';

class TopButtons extends StatefulWidget {
  const TopButtons({super.key});

  @override
  State<TopButtons> createState() => _TopButtonsState();
}

class _TopButtonsState extends State<TopButtons> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
         
          children: [
            AccountButton(text: 'Yours Button', onTap: () {}),
            AccountButton(text: 'Yours Seller', onTap: () {}),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
         Row(
          children: [
            AccountButton(text: 'log out', onTap: () {}),
            AccountButton(text: 'Yours wishlist', onTap: () {}),
          ],
        ),
      ],
    );
  }
}
