import 'package:flutter/material.dart';

import '../../../constants.dart';

class Background extends StatelessWidget {
    final Widget child;
    
    const Background({
        Key key, 
        @required this.child,
    }) : super(key: key);

    @override
    Widget build(BuildContext context) {
        Size size = MediaQuery.of(context).size;
        return Container(
            width: double.infinity,
            height: size.height,
            child: Stack(
                alignment: Alignment.center,
                children: <Widget>[
                    Positioned(
                        top: 0,
                        left: 0,
                        child: ColorFiltered(
                            child: Image.asset(
                                "assets/images/main_top.png",
                                width: size.width * 0.3,
                            ),
                            colorFilter: ColorFilter.mode(kPrimaryColor.withOpacity(0.3), BlendMode.modulate),
                        ),
                    ),
                    Positioned(
                        bottom: 0,
                        right: 0,
                        child: ColorFiltered(
                            child: Image.asset(
                                "assets/images/login_bottom.png",
                                width: size.width * 0.4,
                            ),
                            colorFilter: ColorFilter.mode(kPrimaryColor.withOpacity(0.3), BlendMode.modulate),
                        ),
                    ),
                    child,
                ],
            ),
        );
    }
}