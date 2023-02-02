import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ListArticleItemWidget extends StatelessWidget {
  const ListArticleItemWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: 15,
        horizontal: 20,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(
            20,
          ),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.5),
            spreadRadius: 0,
            blurRadius: 3,
            offset: Offset(0, 5),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(
              left: 25,
              top: 24,
            ),
            child: Text(
              'Article 1',
              style: GoogleFonts.inter(
                fontSize: 16,
                fontWeight: FontWeight.w700,
                fontStyle: FontStyle.normal,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              left: 25,
              right: 9,
              top: 3,
              bottom: 26,
            ),
            child: Text(
              'Lorem ipsum dolor sit, amet consectetur adipisicing elit. Suscipit quam eius distinctio tempore vel beatae architecto nemo dolor possimus fuga fugiat nulla ullam autem sit voluptatum error dolores hic placeat, facere velit nam! Officiis porro maiores ex fugit veritatis ipsa!',
              maxLines: 4,
              overflow: TextOverflow.ellipsis,
              style: GoogleFonts.inter(
                color: Colors.black,
                fontSize: 14,
                fontWeight: FontWeight.w500,
                fontStyle: FontStyle.normal,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
