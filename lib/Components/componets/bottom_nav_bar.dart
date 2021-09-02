import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:noticiasdeportivas/Utils/constants.dart';

class BottomNavBar extends StatelessWidget {
  BottomNavBar({
    Key? key,
    required this.opcionPresionada,
    required this.pressUno,
    required this.pressDos,
    required this.pressTres,
    required this.pressCuatro,
  }) : super(key: key);

  final int opcionPresionada;
  final VoidCallback pressUno;
  final VoidCallback pressDos;
  final VoidCallback pressTres;
  final VoidCallback pressCuatro;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 35),
      height: 75,
      width: double.infinity,
      decoration: BoxDecoration(
        color: kColorBottomNav,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade600,
            offset: Offset(0.0, 1.0),
            blurRadius: 3.0,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
            icon: SvgPicture.asset(
              'assets/icons/home.svg',
              color: opcionPresionada == 0 ? primaryColor : kColorGrisBorde,
            ),
            onPressed: pressUno,
          ),
          IconButton(
            icon: SvgPicture.asset(
              'assets/icons/Following.svg',
              color: opcionPresionada == 1 ? primaryColor : kColorGrisBorde,
            ),
            onPressed: pressDos,
          ),
          IconButton(
            icon: SvgPicture.asset(
              'assets/icons/cartimas.svg',
              color: opcionPresionada == 2 ? primaryColor : kColorGrisBorde,
            ),
            onPressed: pressTres,
          ),
          IconButton(
            icon: SvgPicture.asset(
              'assets/icons/Glyph.svg',
              color: opcionPresionada == 2 ? primaryColor : kColorGrisBorde,
            ),
            onPressed: pressTres,
          ),
          IconButton(
            icon: SvgPicture.asset(
              'assets/icons/person.svg',
              color: opcionPresionada == 3 ? primaryColor : kColorGrisBorde,
            ),
            onPressed: pressCuatro,
          ),
        ],
      ),
    );
  }
}
