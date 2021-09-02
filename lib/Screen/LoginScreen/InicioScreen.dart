import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:noticiasdeportivas/Utils/constants.dart';
import 'package:noticiasdeportivas/Utils/ui_helper.dart';

class InicioScreen extends StatelessWidget {
  static String routeName = "/inicioScreen";

  @override
  Widget build(BuildContext context) {
    return InicioBody();
  }
}

class InicioBody extends StatefulWidget {
  InicioBody({Key? key}) : super(key: key);

  @override
  _InicioBodyState createState() => _InicioBodyState();
}

class _InicioBodyState extends State<InicioBody> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: kColorBottomNav,
          currentIndex: 0, // this will be set when a new tab is tapped
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: kColorIconosBottomBar,
              ),
              title: Text(
                'Home',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 10,
                ),
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.mail,
                color: kColorIconosBottomBar,
              ),
              title: Text(
                'Messages',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 10,
                ),
              ),
            ),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                  color: kColorIconosBottomBar,
                ),
                title: Text(
                  'Profile',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 10,
                  ),
                ),),
          ],
        ),

        //     BottomNavBar(
        //   opcionPresionada: _selectedIndex,
        //   pressUno: () {
        //     setState(() {
        //       _selectedIndex = 0;
        //     });
        //   },
        //   pressDos: () {
        //     setState(() {
        //       _selectedIndex = 1;
        //     });
        //   },
        //   pressTres: () {
        //     setState(() {
        //       _selectedIndex = 2;
        //     });
        //   },
        //   pressCuatro: () {
        //     setState(() {
        //       _selectedIndex = 3;
        //     });
        //   },
        // ),

        body: Container(
          padding: EdgeInsets.symmetric(
              horizontal: dDefaultPadding, vertical: dDefaultPadding),
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    dDescubrir,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Spacer(),
                  Icon(
                    Ionicons.search_outline,
                    color: kColorIconosTopBar,
                  ),
                  UIHelper.horizontalSpaceMedium(),
                  Stack(
                    children: [
                      Icon(
                        Ionicons.notifications_outline,
                        color: kColorIconosTopBar,
                      ),
                      Positioned(
                        right: 0,
                        top: 0,
                        child: CircleAvatar(
                          radius: 7,
                          backgroundColor: kColorContainerNotificacion,
                          child: Text(
                            '3',
                            style: TextStyle(
                              fontSize: 8,
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              UIHelper.verticalSpaceMedium(),
              Image.asset('assets/images/banner.png'),
              UIHelper.verticalSpaceSmall(),
              Row(
                children: [
                  Text(
                    eEquiposPopulares,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Spacer(),
                  Text(
                    vVerMas,
                    style: TextStyle(
                      color: kColorTextVerMas,
                      fontSize: 9,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              UIHelper.verticalSpaceMedium(),
              Container(
                height: 70,
                child: ListView.builder(
                  itemCount: 10,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return
                        // Card(
                        // shape: RoundedRectangleBorder(
                        //     borderRadius: BorderRadius.circular(10)),
                        // elevation: 1,
                        // child:
                        Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: kColorFondoContainersEscudos,
                            borderRadius: BorderRadius.circular(10),
                            // borderRadius: BorderRadius.only(
                            //   topLeft: Radius.circular(20),
                            //   topRight: Radius.circular(20),
                            // ),
                            // boxShadow: [
                            //   BoxShadow(
                            //     color: Colors.grey.shade600,
                            //     offset: Offset(0.0, 1.0),
                            //     blurRadius: 3.0,
                            //   ),
                            // ],
                          ),
                          child: Container(
                            width: 70,
                            margin: EdgeInsets.symmetric(
                                horizontal: defaultPadding),
                            child: Image.asset(
                              'assets/images/EscudoRealMadrid.png',
                              fit: BoxFit.scaleDown,
                            ),
                          ),
                          // ),
                        ),
                        UIHelper.horizontalSpaceExtraSmall(),
                      ],
                    );
                  },
                ),
              ),
              UIHelper.verticalSpaceMedium(),
              Row(
                children: [
                  Text(
                    pProximosPartidos,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Spacer(),
                  Text(
                    vVerMas,
                    style: TextStyle(
                      color: kColorTextVerMas,
                      fontSize: 9,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              UIHelper.verticalSpaceMedium(),
              Row(
                children: [
                  Text(
                    uUltimasNoticias,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Spacer(),
                  Text(
                    vVerMas,
                    style: TextStyle(
                      color: kColorTextVerMas,
                      fontSize: 9,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
