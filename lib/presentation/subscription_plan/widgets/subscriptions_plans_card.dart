import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xorbx/constants/app_style.dart';
import 'package:xorbx/constants/color_constants.dart';
import 'package:xorbx/utils/scaling_utility.dart';
import 'package:xorbx/widgets/shadow_border_card.dart';

class SubscriptionsPlansCard extends StatelessWidget {
  const SubscriptionsPlansCard({super.key});

  @override
  Widget build(BuildContext context) {
    var scale = Get.find<ScalingUtility>()..setCurrentDeviceSize(context);
    return Container(
      color: ColorConstant.color1,
      child: Column(
        children: [
          _buildIncidentTable(),
          SizedBox(
            height: scale.getScaledHeight(30),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Benefits",
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
                vertical: scale.getScaledHeight(10),
                horizontal: scale.getScaledHeight(10),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: scale.getScaledHeight(3),
                        backgroundColor: Colors.white,
                      ),
                      SizedBox(
                        width: scale.getScaledHeight(10),
                      ),
                      Text(
                        "Access to exclusive content",
                        style: AppStyle.style1.copyWith(
                          fontSize: scale.getScaledHeight(11),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: scale.getScaledHeight(12)),
                  Row(
                    children: [
                      CircleAvatar(
                        radius: scale.getScaledHeight(3),
                        backgroundColor: Colors.white,
                      ),
                      SizedBox(
                        width: scale.getScaledHeight(10),
                      ),
                      Text(
                        "Add free experience",
                        style: AppStyle.style1.copyWith(
                          fontSize: scale.getScaledHeight(11),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: scale.getScaledHeight(12)),
                  Row(
                    children: [
                      CircleAvatar(
                        radius: scale.getScaledHeight(3),
                        backgroundColor: Colors.white,
                      ),
                      SizedBox(
                        width: scale.getScaledHeight(10),
                      ),
                      Text(
                        "24/7 customer Support",
                        style: AppStyle.style1.copyWith(
                          fontSize: scale.getScaledHeight(11),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )
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
              label: Text('Plan Name',
                  style: TextStyle(color: Colors.white, fontSize: 12)),
            ),
            DataColumn(
                label: Text('Monthly Price',
                    style: TextStyle(color: Colors.white, fontSize: 12))),
            DataColumn(
                label: Text('Yearly Price',
                    style: TextStyle(color: Colors.white, fontSize: 12))),
          ],
          rows: [
            DataRow(
              cells: [
                const DataCell(Text('Basics Plan',
                    style: TextStyle(color: Colors.white, fontSize: 11))),
                DataCell(
                  Row(
                    children: [
                      const Text(
                        '\$9.99',
                        style: TextStyle(color: Colors.white, fontSize: 11),
                      ),
                      SizedBox(
                        width: scale.getScaledHeight(5),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          height: scale.getScaledHeight(20),
                          width: scale.getScaledHeight(60),
                          decoration: const BoxDecoration(
                            color: ColorConstant.color3,
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                          ),
                          child: Center(
                            child: Text(
                              'Subscribe',
                              style: AppStyle.style3.copyWith(
                                fontSize: scale.getScaledHeight(11),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                DataCell(
                  Row(
                    children: [
                      const Text(
                        '\$9.99',
                        style: TextStyle(color: Colors.white, fontSize: 11),
                      ),
                      SizedBox(
                        width: scale.getScaledHeight(5),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          height: scale.getScaledHeight(20),
                          width: scale.getScaledHeight(60),
                          decoration: const BoxDecoration(
                            color: ColorConstant.color3,
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                          ),
                          child: Center(
                            child: Text(
                              'Subscribe',
                              style: AppStyle.style3.copyWith(
                                fontSize: scale.getScaledHeight(11),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            DataRow(
              cells: [
                const DataCell(Text('Premium Plan',
                    style: TextStyle(color: Colors.white, fontSize: 11))),
                DataCell(
                  Row(
                    children: [
                      const Text(
                        '\$9.99',
                        style: TextStyle(color: Colors.white, fontSize: 11),
                      ),
                      SizedBox(
                        width: scale.getScaledHeight(5),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          height: scale.getScaledHeight(20),
                          width: scale.getScaledHeight(60),
                          decoration: const BoxDecoration(
                            color: ColorConstant.color3,
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                          ),
                          child: Center(
                            child: Text(
                              'Subscribe',
                              style: AppStyle.style3.copyWith(
                                fontSize: scale.getScaledHeight(11),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                DataCell(
                  Row(
                    children: [
                      const Text(
                        '\$9.99',
                        style: TextStyle(color: Colors.white, fontSize: 11),
                      ),
                      SizedBox(
                        width: scale.getScaledHeight(5),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          height: scale.getScaledHeight(20),
                          width: scale.getScaledHeight(60),
                          decoration: const BoxDecoration(
                            color: ColorConstant.color3,
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                          ),
                          child: Center(
                            child: Text(
                              'Subscribe',
                              style: AppStyle.style3.copyWith(
                                fontSize: scale.getScaledHeight(11),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            DataRow(
              cells: [
                const DataCell(Text('Pro Plan',
                    style: TextStyle(color: Colors.white, fontSize: 11))),
                DataCell(
                  Row(
                    children: [
                      const Text(
                        '\$9.99',
                        style: TextStyle(color: Colors.white, fontSize: 11),
                      ),
                      SizedBox(
                        width: scale.getScaledHeight(5),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          height: scale.getScaledHeight(20),
                          width: scale.getScaledHeight(60),
                          decoration: const BoxDecoration(
                            color: ColorConstant.color3,
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                          ),
                          child: Center(
                            child: Text(
                              'Subscribe',
                              style: AppStyle.style3.copyWith(
                                fontSize: scale.getScaledHeight(11),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                DataCell(
                  Row(
                    children: [
                      const Text(
                        '\$9.99',
                        style: TextStyle(color: Colors.white, fontSize: 11),
                      ),
                      SizedBox(
                        width: scale.getScaledHeight(5),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          height: scale.getScaledHeight(20),
                          width: scale.getScaledHeight(60),
                          decoration: const BoxDecoration(
                            color: ColorConstant.color3,
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                          ),
                          child: Center(
                            child: Text(
                              'Subscribe',
                              style: AppStyle.style3.copyWith(
                                fontSize: scale.getScaledHeight(11),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
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
