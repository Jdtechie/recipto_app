import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'app_colors.dart';
class MySearchbox extends StatefulWidget {
  const MySearchbox({Key? key}) : super(key: key);

  @override
  State<MySearchbox> createState() => _MySearchboxState();
}

class _MySearchboxState extends State<MySearchbox> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:  Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: SearchAnchor(builder:
            (BuildContext context, SearchController controller) {
          return SearchBar(
            constraints: const BoxConstraints(
                minWidth: 55.0, maxWidth: 328.0, minHeight: 34.0),
            backgroundColor:
            MaterialStateProperty.all(Colors.transparent),
            controller: controller,
            elevation: MaterialStateProperty.all(0.0),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
                side: BorderSide(
                  color: AppColors.kPrimaryLightColor,
                  width: 1.0,
                ),
              ),
            ),
            hintText: 'Search for Products/store',
            hintStyle: MaterialStateProperty.all<TextStyle?>(
              TextStyle(
                color: AppColors.kSecondaryTextColor,
              ),
            ),
            padding: const MaterialStatePropertyAll<EdgeInsets>(
              EdgeInsets.symmetric(horizontal: 10.0),
            ),
            onTap: () {
              controller.openView();
            },
            onChanged: (_) {
              controller.openView();
            },
            leading: SvgPicture.asset('assets/icons/search_icon.svg'),
          );
        }, suggestionsBuilder:
            (BuildContext context, SearchController controller) {
          return List<ListTile>.generate(5, (int index) {
            final String item = 'item $index';
            return ListTile(
              title: Text(item),
              onTap: () {
                setState(() {
                  controller.closeView(item);
                });
              },
            );
          });
        }),
      ),
    );
  }
}
