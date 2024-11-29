import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xorbx/constants/app_style.dart';
import 'package:xorbx/constants/color_constants.dart';
import 'package:xorbx/utils/scaling_utility.dart';

class DeviceList extends StatelessWidget {
  const DeviceList({super.key});

  @override
  Widget build(BuildContext context) {
    var scale = Get.find<ScalingUtility>()..setCurrentDeviceSize(context);
    return Container(
      color: Colors.transparent,
      child: Column(
        children: [
          _itemTextField(scale),
          SizedBox(height: scale.getScaledHeight(20)),
          _buildIncidentTable(),
          SizedBox(height: scale.getScaledHeight(20)),
          _buttonItems(scale),
        ],
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
            hintText: 'Search by Transactions',
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
                label: Text('Name',
                    style: TextStyle(color: Colors.white, fontSize: 9))),
            DataColumn(
              label: Text('Type',
                  style: TextStyle(color: Colors.white, fontSize: 9)),
            ),
            DataColumn(
              label: Text('Type',
                  style: TextStyle(color: Colors.white, fontSize: 9)),
            ),
            DataColumn(
                label: Text('Last Updated',
                    style: TextStyle(color: Colors.white, fontSize: 9))),
            DataColumn(
                label: Text('Action',
                    style: TextStyle(color: Colors.white, fontSize: 9))),
          ],
          rows: [
            DataRow(
              cells: [
                const DataCell(Text('Device A',
                    style: TextStyle(color: Colors.white, fontSize: 8))),
                const DataCell(Text('Type A',
                    style: TextStyle(color: Colors.white, fontSize: 8))),
                const DataCell(Text('Active',
                    style: TextStyle(color: Colors.white, fontSize: 8))),
                const DataCell(Text('01/3/2024',
                    style: TextStyle(color: Colors.white, fontSize: 8))),
                DataCell(
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          height: scale.getScaledHeight(15),
                          width: scale.getScaledHeight(27),
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                            border: Border.all(color: Colors.white),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(5)),
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
                      SizedBox(width: scale.getScaledHeight(2)),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          height: scale.getScaledHeight(15),
                          width: scale.getScaledHeight(35),
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                            border: Border.all(color: Colors.white),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(5)),
                          ),
                          child: Center(
                            child: Text(
                              'Delete',
                              style: AppStyle.style3.copyWith(
                                fontSize: scale.getScaledHeight(9),
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
                const DataCell(Text('Device B',
                    style: TextStyle(color: Colors.white, fontSize: 8))),
                const DataCell(Text('Type B',
                    style: TextStyle(color: Colors.white, fontSize: 8))),
                const DataCell(Text('Inactive',
                    style: TextStyle(color: Colors.white, fontSize: 8))),
                const DataCell(Text('01/3/2024',
                    style: TextStyle(color: Colors.white, fontSize: 8))),
                DataCell(
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          height: scale.getScaledHeight(15),
                          width: scale.getScaledHeight(27),
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                            border: Border.all(color: Colors.white),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(5)),
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
                      SizedBox(width: scale.getScaledHeight(2)),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          height: scale.getScaledHeight(15),
                          width: scale.getScaledHeight(35),
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                            border: Border.all(color: Colors.white),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(5)),
                          ),
                          child: Center(
                            child: Text(
                              'Delete',
                              style: AppStyle.style3.copyWith(
                                fontSize: scale.getScaledHeight(9),
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
                const DataCell(Text('Device C',
                    style: TextStyle(color: Colors.white, fontSize: 8))),
                const DataCell(Text('Type C',
                    style: TextStyle(color: Colors.white, fontSize: 8))),
                const DataCell(Text('Error',
                    style: TextStyle(color: Colors.white, fontSize: 8))),
                const DataCell(Text('01/3/2024',
                    style: TextStyle(color: Colors.white, fontSize: 8))),
                DataCell(
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          height: scale.getScaledHeight(15),
                          width: scale.getScaledHeight(27),
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                            border: Border.all(color: Colors.white),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(5)),
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
                      SizedBox(width: scale.getScaledHeight(2)),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          height: scale.getScaledHeight(15),
                          width: scale.getScaledHeight(35),
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                            border: Border.all(color: Colors.white),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(5)),
                          ),
                          child: Center(
                            child: Text(
                              'Delete',
                              style: AppStyle.style3.copyWith(
                                fontSize: scale.getScaledHeight(9),
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

  Widget _buttonItems(ScalingUtility scale) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
            backgroundColor: ColorConstant.color3,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(5)),
            ),
          ),
          child: Text(
            'Add Device',
            style: AppStyle.style3.copyWith(
              fontSize: scale.getScaledHeight(12),
            ),
          ),
        ),
      ],
    );
  }
}
