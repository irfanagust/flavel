import 'package:flavel/theme.dart';
import 'package:flutter/material.dart';

class ChatBubble extends StatelessWidget {
  final String text;
  final bool isSender;

  ChatBubble({this.isSender = false, this.text = ''});

  @override
  Widget build(BuildContext context) {
    BoxDecoration boxDecorationForSender() {
      return BoxDecoration(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(12),
          bottomLeft: Radius.circular(12),
          bottomRight: Radius.circular(12),
        ),
        color: bgColor5,
      );
    }

    BoxDecoration boxDecorationForReceiver() {
      return BoxDecoration(
        borderRadius: const BorderRadius.only(
          topRight: Radius.circular(12),
          bottomLeft: Radius.circular(12),
          bottomRight: Radius.circular(12),
        ),
        color: bgColor4,
      );
    }

    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(top: 25),
      child: Row(
        mainAxisAlignment: (isSender == true)
            ? MainAxisAlignment.end
            : MainAxisAlignment.start,
        children: [
          Flexible(
            child: Container(
              constraints: BoxConstraints(
                maxWidth: MediaQuery.of(context).size.width * 0.6,
              ),
              padding: const EdgeInsets.symmetric(
                vertical: 12,
                horizontal: 16,
              ),
              decoration: (isSender == true)
                  ? boxDecorationForSender()
                  : boxDecorationForReceiver(),
              child: Text(
                text,
                style: primaryTextStyle.copyWith(
                  fontWeight: regular,
                  fontSize: 14,
                ),
                overflow: TextOverflow.clip,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
