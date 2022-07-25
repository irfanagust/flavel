import 'package:flutter/material.dart';
import 'package:flavel/theme.dart';

class CartCard extends StatelessWidget {
  const CartCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 10,
      ),
      margin: const EdgeInsets.only(
        top: 10,
      ),
      decoration: BoxDecoration(
        color: bgColor4,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  'assets/image_shoes.png',
                  width: 65,
                  fit: BoxFit.cover,
                ),
              ),
              // NOTE : BISA MAKE CLIPRRECT ATAU INI
              // Container(
              //   width: 60,
              //   height: 60,
              //   decoration: BoxDecoration(
              //       borderRadius: BorderRadius.circular(10),
              //       image: DecorationImage(
              //         image: AssetImage('assets/image_shoes6.png'),
              //       )),
              // ),
              const SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Image.asset(
                    'assets/icon_remove.png',
                    width: 14,
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  Text(
                    'Remove',
                    style: primaryTextStyle.copyWith(
                        fontWeight: light,
                        fontSize: 12,
                        color: Colors.red.shade300),
                  )
                ],
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Terrex Urban Low',
                style: primaryTextStyle.copyWith(
                  fontWeight: semiBold,
                ),
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
          Column(
            children: [
              MaterialButton(
                height: 16,
                minWidth: 16,
                shape: const CircleBorder(),
                color: primaryColor,
                child: const Icon(
                  Icons.add,
                  color: Colors.white,
                ),
                onPressed: () => {},
              ),
              Text(
                '1',
                style: primaryTextStyle.copyWith(fontWeight: medium),
              ),
              MaterialButton(
                height: 16,
                minWidth: 16,
                shape: const CircleBorder(),
                color: nonprimaryColor,
                child: const Icon(
                  Icons.remove,
                  color: Colors.white,
                ),
                onPressed: () => {},
              ),
            ],
          )
        ],
      ),
    );
  }
}
