import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xorbx/constants/app_style.dart';
import 'package:xorbx/presentation/sub_dashboard_screen/real_time_threat_detection/controller/real_time_threat_detection_controller.dart';
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
        SizedBox(
          height: scale.getScaledHeight(20),
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
      padding: EdgeInsets.symmetric(horizontal: scale.getScaledHeight(4.0)),
      child: CustomPaint(
        painter: InnerShadowPainter(),
        child: Container(
          height: scale.getScaledHeight(25),
          width: scale.getScaledHeight(25),
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
                label: Text('Timestamp',
                    style: TextStyle(color: Colors.white, fontSize: 8))),
            DataColumn(
              label: Row(
                children: [
                  Text('Severity',
                      style: TextStyle(color: Colors.white, fontSize: 8)),
                  Icon(
                    Icons.arrow_drop_down_rounded,
                    size: 17,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
            DataColumn(
              label: Row(
                children: [
                  Text('Type of Threat',
                      style: TextStyle(color: Colors.white, fontSize: 8)),
                  Icon(
                    Icons.arrow_drop_down_rounded,
                    size: 17,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
            DataColumn(
                label: Text('Action Taken',
                    style: TextStyle(color: Colors.white, fontSize: 8))),
          ],
          rows: [
            DataRow(cells: [
              DataCell(
                _overlayText("Last Synced:", "September 01, 2024"),
              ),
              const DataCell(Text('High',
                  style: TextStyle(color: Colors.white, fontSize: 8))),
              const DataCell(Text('Malware',
                  style: TextStyle(color: Colors.white, fontSize: 8))),
              const DataCell(Text('In Progress',
                  style: TextStyle(color: Colors.white, fontSize: 8))),
            ]),
            DataRow(cells: [
              DataCell(
                _overlayText("Last Synced:", "September 01, 2024"),
              ),
              const DataCell(Text('Medium',
                  style: TextStyle(color: Colors.white, fontSize: 8))),
              const DataCell(Text('Phishing',
                  style: TextStyle(color: Colors.white, fontSize: 8))),
              const DataCell(Text('Resolved',
                  style: TextStyle(color: Colors.white, fontSize: 8))),
            ]),
            DataRow(cells: [
              DataCell(
                _overlayText("Last Synced:", "September 01, 2024"),
              ),
              const DataCell(Text('Low',
                  style: TextStyle(color: Colors.white, fontSize: 8))),
              const DataCell(Text('Spam',
                  style: TextStyle(color: Colors.white, fontSize: 8))),
              const DataCell(Text('Ignored',
                  style: TextStyle(color: Colors.white, fontSize: 8))),
            ]),
            DataRow(cells: [
              DataCell(
                _overlayText("Last Synced:", "September 01, 2024"),
              ),
              const DataCell(Text('Critical',
                  style: TextStyle(color: Colors.white, fontSize: 8))),
              const DataCell(Text('Ransomware',
                  style: TextStyle(color: Colors.white, fontSize: 8))),
              const DataCell(Text('Quarantined',
                  style: TextStyle(color: Colors.white, fontSize: 8))),
            ]),
          ],
        ),
      ),
    );
  }

  Widget _overlayText(String name, String date) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          children: [
            const Icon(
              Icons.refresh,
              size: 8,
              color: Colors.white60,
            ),
            SizedBox(width: scale.getScaledHeight(2)),
            Text(
              name,
              style: AppStyle.style2.copyWith(
                  color: Colors.white60,
                  fontWeight: FontWeight.normal,
                  fontSize: 8),
            ),
          ],
        ),
        Text(
          date,
          style: TextStyle(
            color: Colors.white60,
            fontSize: scale.getScaledHeight(6),
          ),
        ),
      ],
    );
  }
}
