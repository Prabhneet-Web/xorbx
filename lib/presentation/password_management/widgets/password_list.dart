import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xorbx/constants/app_style.dart';
import 'package:xorbx/constants/color_constants.dart';
import 'package:xorbx/presentation/password_management/controller/password_management_controller.dart';
import 'package:xorbx/widgets/shadow_border_card.dart';

class PasswordList extends GetWidget<PasswordManagementController> {
  const PasswordList({super.key});

  @override
  Widget build(BuildContext context) {
    return ShadowBorderCard(
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildIncidentTable(),
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
}
