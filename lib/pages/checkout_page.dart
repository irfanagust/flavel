import 'package:flavel/theme.dart';
import 'package:flavel/widgets/checkout_product_tile.dart';
import 'package:flavel/widgets/product_tile.dart';
import 'package:flutter/material.dart';

class CheckoutPage extends StatelessWidget {
  const CheckoutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppBar header() {
      return AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        toolbarHeight: 90,
        elevation: 0,
        backgroundColor: bgColor1,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () => Navigator.pop(context),
              child: const Icon(
                Icons.arrow_back_ios_new,
              ),
            ),
            Text(
              'Checkout Details',
              style: primaryTextStyle.copyWith(
                fontSize: 18,
              ),
            ),
            SizedBox(
              width: defaultMargin,
            )
          ],
        ),
      );
    }

    Widget addressDetail() {
      return Container(
        margin: EdgeInsets.symmetric(
          vertical: defaultMargin,
          horizontal: defaultMargin,
        ),
        padding: const EdgeInsets.all(20),
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: bgColor4,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Address Details',
              style: primaryTextStyle.copyWith(
                fontSize: 16,
                fontWeight: medium,
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            // NOTE : SECOND TRY
            // Row(
            //   children: [
            //     Column(
            //       children: [
            //         Image.asset(
            //           'assets/icon_store_location.png',
            //           width: 40,
            //         ),
            //         Image.asset(
            //           'assets/icon_line.png',
            //           width: 1,
            //         ),
            //         Image.asset(
            //           'assets/icon_your_address.png',
            //           width: 40,
            //         ),
            //       ],
            //     ),
            //     const SizedBox(
            //       width: 12,
            //     ),
            //     Expanded(
            //       child: Column(
            //         crossAxisAlignment: CrossAxisAlignment.start,
            //         children: [
            //           Text(
            //             'Store Location',
            //             style: subtitleTextStyle.copyWith(
            //               fontWeight: light,
            //               fontSize: 12,
            //             ),
            //             overflow: TextOverflow.clip,
            //           ),
            //           Text(
            //             'Adidas, New York',
            //             style: primaryTextStyle.copyWith(
            //               fontWeight: medium,
            //               fontSize: 14,
            //             ),
            //             overflow: TextOverflow.clip,
            //           ),
            //           SizedBox(
            //             height: defaultMargin,
            //           ),
            //           Text(
            //             'Your Address',
            //             style: subtitleTextStyle.copyWith(
            //               fontWeight: light,
            //               fontSize: 12,
            //             ),
            //             overflow: TextOverflow.clip,
            //           ),
            //           Text(
            //             'Banyumas, Central Java, Indonesia',
            //             style: primaryTextStyle.copyWith(
            //               fontWeight: medium,
            //               fontSize: 14,
            //             ),
            //             overflow: TextOverflow.clip,
            //           ),
            //         ],
            //       ),
            //     ),
            //   ],
            // )
            // NOTE : FIRST TRY
            Column(
              children: [
                Row(
                  children: [
                    Image.asset(
                      'assets/icon_store_location.png',
                      width: 40,
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Store Location',
                            style: subtitleTextStyle.copyWith(
                              fontWeight: light,
                              fontSize: 12,
                            ),
                            overflow: TextOverflow.clip,
                          ),
                          Text(
                            'Adidas, New York',
                            style: primaryTextStyle.copyWith(
                              fontWeight: medium,
                              fontSize: 14,
                            ),
                            overflow: TextOverflow.clip,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Image.asset(
                        'assets/icon_line.png',
                        width: 1,
                      ),
                    ),
                    const SizedBox(
                      width: 1,
                    )
                  ],
                ),
                Row(
                  children: [
                    Image.asset(
                      'assets/icon_your_address.png',
                      width: 40,
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Your Address',
                            style: subtitleTextStyle.copyWith(
                              fontWeight: light,
                              fontSize: 12,
                            ),
                            overflow: TextOverflow.clip,
                          ),
                          Text(
                            'Banyumas, Central Java, Indonesia',
                            style: primaryTextStyle.copyWith(
                              fontWeight: medium,
                              fontSize: 14,
                            ),
                            overflow: TextOverflow.clip,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      );
    }

    Widget paymentSummary() {
      return Container(
        margin: EdgeInsets.symmetric(
          vertical: defaultMargin,
          horizontal: defaultMargin,
        ),
        padding: const EdgeInsets.all(20),
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: bgColor4,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Payment Summary',
              style: primaryTextStyle.copyWith(
                fontSize: 16,
                fontWeight: medium,
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Product Quantity',
                  style: subtitleTextStyle.copyWith(fontSize: 12),
                ),
                Text(
                  '2 Items',
                  style: primaryTextStyle.copyWith(
                    fontSize: 14,
                    fontWeight: medium,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 12,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Product Price',
                  style: subtitleTextStyle.copyWith(fontSize: 12),
                ),
                Text(
                  '\$575.96',
                  style: primaryTextStyle.copyWith(
                    fontSize: 14,
                    fontWeight: medium,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 12,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Shipping',
                  style: subtitleTextStyle.copyWith(fontSize: 12),
                ),
                Text(
                  'Free',
                  style: primaryTextStyle.copyWith(
                    fontSize: 14,
                    fontWeight: medium,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 12,
            ),
            Divider(
              color: subtitleTextColor,
              thickness: 1,
            ),
            const SizedBox(
              height: 12,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Total',
                  style: priceTextStyle.copyWith(
                    fontSize: 14,
                    fontWeight: semiBold,
                  ),
                ),
                Text(
                  '\$575.96',
                  style: priceTextStyle.copyWith(
                    fontSize: 14,
                    fontWeight: semiBold,
                  ),
                )
              ],
            ),
          ],
        ),
      );
    }

    Widget content() {
      return ListView(
        children: [
          Container(
            margin: EdgeInsets.only(
              top: defaultMargin,
              left: defaultMargin,
              right: defaultMargin,
            ),
            child: Text(
              'List Items',
              style: primaryTextStyle.copyWith(
                fontSize: 16,
                fontWeight: medium,
              ),
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          CheckoutProductTile(),
          CheckoutProductTile(),
          addressDetail(),
          paymentSummary(),
          Divider(
            color: subtitleTextColor,
            thickness: 1,
          ),
          Container(
            margin: EdgeInsets.all(defaultMargin),
            child: GestureDetector(
              onTap: () {},
              child: Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 13,
                  horizontal: 20,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: primaryColor,
                ),
                child: Center(
                  child: Text(
                    'Checkout Now',
                    style: primaryTextStyle.copyWith(
                      fontWeight: semiBold,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      );
    }

    return Scaffold(
      backgroundColor: bgColor3,
      appBar: header(),
      body: content(),
    );
  }
}
