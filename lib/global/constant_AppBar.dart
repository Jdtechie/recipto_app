import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:recipto_page/global/searchBox.dart';

import 'app_colors.dart';
import 'app_textStyle.dart';

class MyAppBarWidget extends StatelessWidget {
  const MyAppBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 25.0),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                SvgPicture.asset(
                  'assets/icons/location_icon.svg',
                  height: 30,
                  width: 30,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          'KPHB Phase 5',
                          style: AppTextStyles.header4TextStyle(),
                        ),
                        const Icon(
                          Icons.keyboard_arrow_down_rounded,
                          size: 20,
                        ),
                      ],
                    ),
                    Text(
                      'Kukatpally',
                      style: AppTextStyles.subHead2TextStyle(),
                    ),
                  ],
                ),
                const Spacer(),
                Container(
                  width: 85,
                  height: 29,
                  decoration: BoxDecoration(
                    color: AppColors.kPrimaryLightColor,
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        'assets/icons/coins_icon.svg',
                        height: 20.0,
                        width: 20.0,
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      Text(
                        '25.5 k',
                        style: AppTextStyles.header5TextStyle(),
                      ),
                    ],
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 6.0),
              child: SizedBox(
                height: 50,
                width: MediaQuery.of(context).size.width,
                child: const MySearchbox(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
