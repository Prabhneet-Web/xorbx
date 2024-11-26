import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xorbx/constants/app_style.dart';
import 'package:xorbx/constants/color_constants.dart';
import 'package:xorbx/utils/scaling_utility.dart';

class CurrentDeviceTemperature extends StatelessWidget {
  const CurrentDeviceTemperature({super.key});

  @override
  Widget build(BuildContext context) {
    var scale = Get.find<ScalingUtility>()..setCurrentDeviceSize(context);
    return Container(
      color: ColorConstant.color1,
      child: Column(
        children: [
          _items(
            Colors.yellow,
            const Icon(
              Icons.check_circle_outline_rounded,
              size: 17,
              color: Colors.green,
            ),
            scale,
          ),
          SizedBox(
            height: scale.getScaledHeight(20),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Temperature",
                style: AppStyle.style1.copyWith(
                  fontSize: scale.getScaledHeight(9),
                  color: Colors.white54,
                ),
              ),
              SizedBox(width: scale.getScaledHeight(10)),
              Text(
                "|",
                style: AppStyle.style1.copyWith(
                  fontSize: scale.getScaledHeight(9),
                  color: Colors.white54,
                ),
              ),
              SizedBox(width: scale.getScaledHeight(10)),
              Text(
                "Precipitation",
                style: AppStyle.style1.copyWith(
                  fontSize: scale.getScaledHeight(9),
                  color: Colors.white54,
                ),
              ),
              SizedBox(width: scale.getScaledHeight(10)),
              Text(
                "|",
                style: AppStyle.style1.copyWith(
                  fontSize: scale.getScaledHeight(9),
                  color: Colors.white54,
                ),
              ),
              SizedBox(width: scale.getScaledHeight(10)),
              Text(
                "Wind",
                style: AppStyle.style1.copyWith(
                  fontSize: scale.getScaledHeight(9),
                  color: Colors.white54,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget _items(Color color, Icon icon, ScalingUtility scale) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: scale.getScaledHeight(5),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: scale.getScaledHeight(15),
                backgroundColor: color,
              ),
              SizedBox(
                width: scale.getScaledHeight(10),
              ),
              Text(
                "33",
                style: AppStyle.style1.copyWith(
                  fontSize: scale.getScaledHeight(30),
                ),
              ),
              SizedBox(
                width: scale.getScaledHeight(10),
              ),
              Text(
                "°C / °F",
                style: AppStyle.style1.copyWith(
                  fontSize: scale.getScaledHeight(9),
                ),
              ),
              SizedBox(
                width: scale.getScaledHeight(10),
              ),
              Column(
                children: [
                  Text(
                    "Precipitation: 0%",
                    style: AppStyle.style1.copyWith(
                      fontSize: scale.getScaledHeight(9),
                      color: Colors.white54,
                    ),
                  ),
                  Text(
                    "Humidity: 30%",
                    style: AppStyle.style1.copyWith(
                      fontSize: scale.getScaledHeight(9),
                      color: Colors.white54,
                    ),
                  ),
                  Text(
                    "Wind: 10 km/h",
                    style: AppStyle.style1.copyWith(
                      fontSize: scale.getScaledHeight(9),
                      color: Colors.white54,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
