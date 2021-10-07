import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RestoreButton extends StatelessWidget {
  const RestoreButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: MediaQuery.of(context).size.width * 0.8,
      height: 55,
      decoration: BoxDecoration(
          color: Colors.grey[300],
          // border: Border.all(
          //   color: Colors.grey.shade500,
          // ),
          borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.all(3.0),
        child: Text(
          'Restore Backup',
          style: GoogleFonts.aBeeZee(fontSize: 20, color: Colors.grey[800]),
        ),
      ),
    );
  }
}
