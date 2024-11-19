import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xorbx/presentation/dashboard_screen/screen/sub_dashboard_screen/real_time_threat_detection/controller/real_time_threat_detection_controller.dart';
import 'package:xorbx/widgets/container_decoration.dart';
import 'package:xorbx/widgets/inner_shadow_painter.dart';

class RecentIncidentsTable
    extends GetWidget<RealTimeThreadDetectionController> {
  const RecentIncidentsTable({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildIncidentTable(),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _pagecard("<"),
            _pagecard("1"),
            _pagecard("2"),
            _pagecard("..."),
            _pagecard("9"),
            _pagecard(">"),
          ],
        ),
      ],
    );
  }

  Widget _pagecard(String item) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4.0),
      child: CustomPaint(
        painter: InnerShadowPainter(),
        child: Container(
          height: 25,
          width: 25,
          decoration: cardDecoration(),
          child: Center(
            child: Text(
              item,
              style: const TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildIncidentTable() {
    return Column(
      children: [
        CustomPaint(
          painter: InnerShadowPainter(),
          child: Container(
            decoration: cardDecoration(),
            child: Center(
              child: DataTable(
                border: const TableBorder(
                  verticalInside: BorderSide(color: Colors.white38),
                ),
                columnSpacing: 10,
                columns: const [
                  DataColumn(
                      label: Text('Timestamp',
                          style: TextStyle(color: Colors.white, fontSize: 10))),
                  DataColumn(
                      label: Text('Severity',
                          style: TextStyle(color: Colors.white, fontSize: 10))),
                  DataColumn(
                      label: Text('Type of Threat',
                          style: TextStyle(color: Colors.white, fontSize: 10))),
                  DataColumn(
                      label: Text('Action Taken',
                          style: TextStyle(color: Colors.white, fontSize: 10))),
                ],
                rows: const [
                  DataRow(cells: [
                    DataCell(Text('2024-09-07',
                        style: TextStyle(color: Colors.white, fontSize: 10))),
                    DataCell(Text('High',
                        style: TextStyle(color: Colors.white, fontSize: 10))),
                    DataCell(Text('Malware',
                        style: TextStyle(color: Colors.white, fontSize: 10))),
                    DataCell(Text('In Progress',
                        style: TextStyle(color: Colors.white, fontSize: 10))),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('2024-09-07',
                        style: TextStyle(color: Colors.white, fontSize: 10))),
                    DataCell(Text('High',
                        style: TextStyle(color: Colors.white, fontSize: 10))),
                    DataCell(Text('Malware',
                        style: TextStyle(color: Colors.white, fontSize: 10))),
                    DataCell(Text('In Progress',
                        style: TextStyle(color: Colors.white, fontSize: 10))),
                  ]),
                  DataRow(cells: [
                    DataCell(Text('2024-09-07',
                        style: TextStyle(color: Colors.white, fontSize: 10))),
                    DataCell(Text('High',
                        style: TextStyle(color: Colors.white, fontSize: 10))),
                    DataCell(Text('Malware',
                        style: TextStyle(color: Colors.white, fontSize: 10))),
                    DataCell(Text('In Progress',
                        style: TextStyle(color: Colors.white, fontSize: 10))),
                  ]),
                  DataRow(
                    cells: [
                      DataCell(Text('2024-09-07',
                          style: TextStyle(color: Colors.white, fontSize: 10))),
                      DataCell(Text('High',
                          style: TextStyle(color: Colors.white, fontSize: 10))),
                      DataCell(Text('Malware',
                          style: TextStyle(color: Colors.white, fontSize: 10))),
                      DataCell(Text('In Progress',
                          style: TextStyle(color: Colors.white, fontSize: 10))),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
