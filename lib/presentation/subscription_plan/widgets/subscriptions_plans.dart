import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xorbx/constants/app_style.dart';
import 'package:xorbx/constants/color_constants.dart';
import 'package:xorbx/utils/scaling_utility.dart';
import 'package:xorbx/widgets/shadow_border_card.dart';

class SubscriptionsPlans extends StatelessWidget {
  const SubscriptionsPlans({super.key});

  @override
  Widget build(BuildContext context) {
    var scale = Get.find<ScalingUtility>()..setCurrentDeviceSize(context);
    return Container(
      color: ColorConstant.color1,
      child: Column(
        children: [
          ShadowBorderCard(
            content: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: scale.getScaledHeight(10),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Master Card Password",
                        style: AppStyle.style1.copyWith(
                          fontSize: scale.getScaledHeight(11),
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                          fixedSize: Size(scale.getScaledWidth(60),
                              scale.getScaledHeight(5)),
                          backgroundColor: ColorConstant.color3,
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                          ),
                        ),
                        child: Text(
                          'Change',
                          style: AppStyle.style3.copyWith(
                            fontSize: scale.getScaledHeight(10),
                          ),
                        ),
                      ),
                    ],
                  ),
                  _items(
                    Colors.green,
                    "Two Factor Authentication",
                    const Icon(
                      Icons.circle,
                      size: 12,
                      color: Colors.green,
                    ),
                    scale,
                  ),
                  _items(
                    Colors.red,
                    "Backup / Restore",
                    const Icon(
                      Icons.circle,
                      size: 12,
                      color: Colors.red,
                    ),
                    scale,
                  ),
                  _items(
                    Colors.green,
                    "Security Audit feature",
                    const Icon(
                      Icons.circle,
                      size: 12,
                      color: Colors.green,
                    ),
                    scale,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: scale.getScaledHeight(30),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Notification Settings",
                style: AppStyle.style2.copyWith(
                  fontSize: scale.getScaledHeight(16),
                  color: Colors.white,
                  letterSpacing: 1,
                ),
              ),
            ],
          ),
          SizedBox(height: scale.getScaledHeight(16)),
          ShadowBorderCard(
            content: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: scale.getScaledHeight(10),
              ),
              child: Column(
                children: [
                  _items(
                    Colors.green,
                    "Alert for password breach",
                    const Icon(
                      Icons.circle,
                      size: 12,
                      color: Colors.green,
                    ),
                    scale,
                  ),
                  _items(
                    Colors.green,
                    "Update Password Reminder",
                    const Icon(
                      Icons.circle,
                      size: 12,
                      color: Colors.green,
                    ),
                    scale,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: scale.getScaledHeight(12)),
        ],
      ),
    );
  }

  Widget _buildIncidentTable() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(scale.getScaledHeight(12)),
        border: Border.all(
            color: Colors.white38, width: scale.getScaledHeight(1.5)),
      ),
      child: Center(
        child: DataTable(
          border: TableBorder(
            verticalInside: BorderSide(
                color: Colors.white38, width: scale.getScaledHeight(1.5)),
            horizontalInside: BorderSide.none,
          ),
          columnSpacing: scale.getScaledHeight(12),
          horizontalMargin: scale.getScaledHeight(3),
          columns: const [
            DataColumn(
                label: Text('Service',
                    style: TextStyle(color: Colors.white, fontSize: 9))),
            DataColumn(
              label: Text('Email',
                  style: TextStyle(color: Colors.white, fontSize: 9)),
            ),
            DataColumn(
              label: Text('Password',
                  style: TextStyle(color: Colors.white, fontSize: 9)),
            ),
            DataColumn(
                label: Text('Last Update',
                    style: TextStyle(color: Colors.white, fontSize: 9))),
            DataColumn(
                label: Text('Action',
                    style: TextStyle(color: Colors.white, fontSize: 9))),
          ],
          rows: [
            DataRow(
              cells: [
                const DataCell(Text('Facebook',
                    style: TextStyle(color: Colors.white, fontSize: 8))),
                const DataCell(Text('user@gmail.com',
                    style: TextStyle(color: Colors.white, fontSize: 6))),
                const DataCell(Text('******',
                    style: TextStyle(color: Colors.white, fontSize: 10))),
                const DataCell(Text('01/3/2024',
                    style: TextStyle(color: Colors.white, fontSize: 8))),
                DataCell(
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      height: scale.getScaledHeight(15),
                      width: scale.getScaledHeight(27),
                      decoration: const BoxDecoration(
                        color: ColorConstant.color3,
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                      ),
                      child: Center(
                        child: Text(
                          'Edit',
                          style: AppStyle.style3.copyWith(
                            fontSize: scale.getScaledHeight(9),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            DataRow(
              cells: [
                const DataCell(Text('Facebook',
                    style: TextStyle(color: Colors.white, fontSize: 8))),
                const DataCell(Text('user@gmail.com',
                    style: TextStyle(color: Colors.white, fontSize: 6))),
                const DataCell(Text('******',
                    style: TextStyle(color: Colors.white, fontSize: 10))),
                const DataCell(Text('01/3/2024',
                    style: TextStyle(color: Colors.white, fontSize: 8))),
                DataCell(
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      height: scale.getScaledHeight(15),
                      width: scale.getScaledHeight(27),
                      decoration: const BoxDecoration(
                        color: ColorConstant.color3,
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                      ),
                      child: Center(
                        child: Text(
                          'Edit',
                          style: AppStyle.style3.copyWith(
                            fontSize: scale.getScaledHeight(9),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            DataRow(
              cells: [
                const DataCell(Text('Facebook',
                    style: TextStyle(color: Colors.white, fontSize: 8))),
                const DataCell(Text('user@gmail.com',
                    style: TextStyle(color: Colors.white, fontSize: 6))),
                const DataCell(Text('******',
                    style: TextStyle(color: Colors.white, fontSize: 10))),
                const DataCell(Text('01/3/2024',
                    style: TextStyle(color: Colors.white, fontSize: 8))),
                DataCell(
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      height: scale.getScaledHeight(15),
                      width: scale.getScaledHeight(27),
                      decoration: const BoxDecoration(
                        color: ColorConstant.color3,
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                      ),
                      child: Center(
                        child: Text(
                          'Edit',
                          style: AppStyle.style3.copyWith(
                            fontSize: scale.getScaledHeight(9),
                          ),
                        ),
                      ),
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

  Widget _items(Color color, String txt, Icon innerIcon, ScalingUtility scale) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          txt,
          style: AppStyle.style1.copyWith(
            fontSize: scale.getScaledHeight(11),
          ),
        ),
        Stack(
          alignment: Alignment.centerRight,
          children: [
            Switch(
              value: false,
              activeColor: ColorConstant.color4,
              inactiveThumbColor: ColorConstant.color4,
              activeTrackColor: ColorConstant.color3,
              inactiveTrackColor: ColorConstant.color3,
              onChanged: (bool value) {},
            ),
            const Positioned(
              right: 15,
              child: Text(
                'ON',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 9,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
