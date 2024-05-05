import 'package:flutter/material.dart';

import '../widgets/qrcodeButton.dart';
import '../widgets/shoppingCart.dart';
import '../widgets/spaces.dart';
import '../widgets/studentCard.dart';
import '../widgets/studentSearchButton.dart';

class buyingDetailsView extends StatelessWidget {
  const buyingDetailsView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF392D5B),
      width: MediaQuery.sizeOf(context).width / 3,
      child: const Column(
        children: [
          bigvirticalSpace(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              studentSearchButton(),
              qrScanButton(),
            ],
          ),
          smallVirticalSpace(),
          studentCard(),
          Spacer(
            flex: 1,
          ),
          shoppingCart(),
        ],
      ),
    );
  }
}
