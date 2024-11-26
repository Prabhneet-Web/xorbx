import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xorbx/constants/app_style.dart';
import 'package:xorbx/constants/color_constants.dart';
import 'package:xorbx/constants/image_constants.dart';
import 'package:xorbx/utils/scaling_utility.dart';
import 'package:xorbx/widgets/shadow_border_card.dart';

class UserActionsAndInteractivity extends StatelessWidget {
  const UserActionsAndInteractivity({super.key});

  @override
  Widget build(BuildContext context) {
    var scale = Get.find<ScalingUtility>()..setCurrentDeviceSize(context);
    return ShadowBorderCard(
      content: Padding(
        padding: EdgeInsets.all(scale.getScaledHeight(8)),
        child: Container(
          color: ColorConstant.color1,
          child: Column(
            children: [
              _itemTextField(scale),
              SizedBox(height: scale.getScaledHeight(15)),
              _items(scale),
            ],
          ),
        ),
      ),
    );
  }

  Widget _itemTextField(ScalingUtility scale) {
    final TextEditingController controller = TextEditingController();
    return Stack(
      children: [
        TextField(
          controller: controller,
          style: const TextStyle(color: Colors.white),
          decoration: InputDecoration(
            hintText: 'Search by Accounts',
            hintStyle: const TextStyle(color: Colors.white70),
            filled: true,
            fillColor: Colors.blueGrey,
            prefixIcon: const Icon(Icons.search, color: Colors.white70),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(
                color: Colors.grey,
                width: 1,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(
                color: Colors.grey,
                width: 1,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(
                color: Colors.grey,
                width: 1,
              ),
            ),
            contentPadding: const EdgeInsets.symmetric(
              vertical: 15,
              horizontal: 20,
            ),
          ),
        ),
        Positioned(
          top: scale.getScaledHeight(17),
          right: scale.getScaledHeight(20),
          child: Icon(
            Icons.format_align_center_outlined,
            color: Colors.white,
            size: scale.getScaledHeight(20),
          ),
        ),
      ],
    );
  }

  Widget _items(ScalingUtility scale) {
    return ShadowBorderCard(
      content: Padding(
        padding: EdgeInsets.symmetric(
          vertical: scale.getScaledHeight(5),
          horizontal: scale.getScaledHeight(15),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage(ImageConstants.person),
                  radius: scale.getScaledHeight(13),
                ),
                SizedBox(width: scale.getScaledHeight(10)),
                Text(
                  "Leslie Alexander",
                  style: AppStyle.style1.copyWith(
                    fontSize: scale.getScaledHeight(10),
                  ),
                ),
              ],
            ),
            SizedBox(height: scale.getScaledHeight(10)),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage(ImageConstants.person),
                  radius: scale.getScaledHeight(13),
                ),
                SizedBox(width: scale.getScaledHeight(10)),
                Text(
                  "Guy Hawkins",
                  style: AppStyle.style1.copyWith(
                    fontSize: scale.getScaledHeight(10),
                  ),
                ),
              ],
            ),
            SizedBox(height: scale.getScaledHeight(10)),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage(ImageConstants.person),
                  radius: scale.getScaledHeight(13),
                ),
                SizedBox(width: scale.getScaledHeight(10)),
                Text(
                  "Robert Fox",
                  style: AppStyle.style1.copyWith(
                    fontSize: scale.getScaledHeight(10),
                  ),
                ),
              ],
            ),
            SizedBox(height: scale.getScaledHeight(10)),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage(ImageConstants.person),
                  radius: scale.getScaledHeight(13),
                ),
                SizedBox(width: scale.getScaledHeight(10)),
                Text(
                  "Jacob Jones",
                  style: AppStyle.style1.copyWith(
                    fontSize: scale.getScaledHeight(10),
                  ),
                ),
              ],
            ),
            SizedBox(height: scale.getScaledHeight(15)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    fixedSize: Size(
                        scale.getScaledHeight(90), scale.getScaledHeight(30)),
                    backgroundColor: ColorConstant.color3,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Export List',
                        style: AppStyle.style3.copyWith(
                          fontSize: scale.getScaledHeight(9),
                        ),
                      ),
                      const Icon(
                        Icons.arrow_drop_down_rounded,
                        color: Colors.white,
                        size: 20,
                      )
                    ],
                  ),
                ),
                SizedBox(width: scale.getScaledHeight(8)),
                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    fixedSize: Size(
                        scale.getScaledHeight(110), scale.getScaledHeight(30)),
                    backgroundColor: ColorConstant.color3,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                    ),
                  ),
                  child: Text(
                    'Notification Settings',
                    style: AppStyle.style3.copyWith(
                      fontSize: scale.getScaledHeight(9),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
