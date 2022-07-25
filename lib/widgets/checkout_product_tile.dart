import 'package:flavel/theme.dart';
import 'package:flutter/material.dart';

class CheckoutProductTile extends StatelessWidget {
  CheckoutProductTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        bottom: 12,
        left: defaultMargin,
        right: defaultMargin,
      ),
      padding: const EdgeInsets.symmetric(
        vertical: 20,
        horizontal: 12,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: bgColor4,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              'assets/image_shoes.png',
              width: 60,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            width: 12,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Terrex Urban Low',
                style: primaryTextStyle.copyWith(fontWeight: semiBold),
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(
                height: 2,
              ),
              Text(
                '\$143,98',
                style: priceTextStyle,
              ),
            ],
          ),
          const SizedBox(
            width: 51,
          ),
          Text(
            '1 items',
            style: subtitleTextStyle,
          )
        ],
      ),
    );
  }
}
