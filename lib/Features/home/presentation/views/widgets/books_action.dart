import 'package:books_app/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        children: [
          Expanded(
            child: CustomButton(
              textColor: Colors.black,
              backgroundcolor: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(14),
                bottomLeft: Radius.circular(14),
              ),
              text: '19.99 €',
              fontSize: 19,
            ),
          ),
          
          Expanded(
            child: CustomButton(
              text: 'Free Preview',
              textColor: Colors.white,
              backgroundcolor: Color(0xFFEF8262),
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(14),
                bottomRight: Radius.circular(14),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
