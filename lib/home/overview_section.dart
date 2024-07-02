import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class PaymentOverview extends StatelessWidget {
  final String selectedOverview;
  final Function(String) onOverviewChanged;

  const PaymentOverview({
    super.key,
    required this.selectedOverview,
    required this.onOverviewChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            flex: 1,
            child: InkWell(
              onTap: () {
                onOverviewChanged('Collected Amount');
              },
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                decoration: BoxDecoration(
                    color: selectedOverview == 'Collected Amount'
                        ? Colors.white
                        : const Color.fromARGB(255, 194, 194, 194),
                    border: Border(
                        bottom: BorderSide(
                          color: selectedOverview == 'Collected Amount'
                              ? Colors.blue
                              : Colors.grey,
                        ),
                        right: const BorderSide(color: Colors.grey))),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text('Collected Amount'),
                        Icon(
                          Icons.info,
                          color: Colors.black,
                        )
                      ],
                    ),
                    Text(
                      '₹ 0.98',
                      style: TextStyle(color: Colors.black, fontSize: 18),
                    ),
                  ],
                ),
              ),
            )),
        Expanded(
            flex: 1,
            child: InkWell(
              onTap: () {
                onOverviewChanged('Refunds');
              },
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                decoration: BoxDecoration(
                    color: selectedOverview == 'Refunds'
                        ? Colors.white
                        : const Color.fromARGB(255, 194, 194, 194),
                    border: Border(
                        bottom: BorderSide(
                          color: selectedOverview == 'Refunds'
                              ? Colors.blue
                              : Colors.grey,
                        ),
                        right: const BorderSide(color: Colors.grey))),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text('Refunds'),
                        Icon(
                          Icons.info,
                          color: Colors.black,
                        )
                      ],
                    ),
                    Text(
                      '₹ 0.98',
                      style: TextStyle(color: Colors.black, fontSize: 18),
                    ),
                  ],
                ),
              ),
            )),
        Expanded(
            flex: 1,
            child: InkWell(
              onTap: () {
                onOverviewChanged('Orders');
              },
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                decoration: BoxDecoration(
                    color: selectedOverview == 'Orders'
                        ? Colors.white
                        : const Color.fromARGB(255, 194, 194, 194),
                    border: Border(
                        bottom: BorderSide(
                          color: selectedOverview == 'Orders'
                              ? Colors.blue
                              : Colors.grey,
                        ),
                        right: const BorderSide(color: Colors.grey))),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text('Orders'),
                        Icon(
                          Icons.info,
                          color: Colors.black,
                        )
                      ],
                    ),
                    Text(
                      '₹ 0.98',
                      style: TextStyle(color: Colors.black, fontSize: 18),
                    ),
                  ],
                ),
              ),
            )),
      ],
    );
  }
}

class OverviewButton extends StatelessWidget {
  final String title;
  final bool isSelected;
  final VoidCallback onTap;

  const OverviewButton({
    super.key,
    required this.title,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        backgroundColor: isSelected ? Colors.white : Colors.black,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      ),
      child: Text(
        title,
        style: TextStyle(
          color: isSelected ? Colors.black : Colors.white,
        ),
      ),
    );
  }
}

class PaymentGraph extends StatelessWidget {
  final String overviewType;

  const PaymentGraph({super.key, required this.overviewType});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 450,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 1,
            blurRadius: 3,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '$overviewType Overview',
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 16),
          Expanded(
            child: LineChart(
              LineChartData(
                gridData: const FlGridData(show: false),
                titlesData: FlTitlesData(
                  show: true,
                  bottomTitles: AxisTitles(
                    sideTitles: SideTitles(
                      showTitles: true,
                      reservedSize: 22,
                      getTitlesWidget: (double value, TitleMeta meta) {
                        const style = TextStyle(
                          color: Color(0xff68737d),
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                        );
                        Widget text;
                        switch (value.toInt()) {
                          case 0:
                            text = const Text('JAN', style: style);
                            break;
                          case 2:
                            text = const Text('MAR', style: style);
                            break;
                          case 4:
                            text = const Text('MAY', style: style);
                            break;
                          case 6:
                            text = const Text('JUL', style: style);
                            break;
                          case 8:
                            text = const Text('SEP', style: style);
                            break;
                          case 10:
                            text = const Text('NOV', style: style);
                            break;
                          default:
                            text = const Text('', style: style);
                            break;
                        }
                        return SideTitleWidget(
                          axisSide: meta.axisSide,
                          child: text,
                        );
                      },
                    ),
                  ),
                  leftTitles: AxisTitles(
                    sideTitles: SideTitles(
                      showTitles: true,
                      getTitlesWidget: (double value, TitleMeta meta) {
                        const style = TextStyle(
                          color: Color(0xff67727d),
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                        );
                        String text;
                        switch (value.toInt()) {
                          case 1:
                            text = '10k';
                            break;
                          case 3:
                            text = '30k';
                            break;
                          case 5:
                            text = '50k';
                            break;
                          default:
                            return Container();
                        }
                        return Text(text,
                            style: style, textAlign: TextAlign.left);
                      },
                      reservedSize: 28,
                    ),
                  ),
                ),
                borderData: FlBorderData(
                  show: true,
                  border: Border.all(color: const Color(0xff37434d), width: 1),
                ),
                minX: 0,
                maxX: 11,
                minY: 0,
                maxY: 6,
                lineBarsData: [
                  LineChartBarData(
                    spots: _getSpots(),
                    // isCurved: true,
                    color: Colors.blue,
                    barWidth: 2,
                    isStrokeCapRound: true,
                    dotData: const FlDotData(show: false),
                    belowBarData: BarAreaData(
                        show: true, color: Colors.blue.withOpacity(0.3)),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  List<FlSpot> _getSpots() {
    switch (overviewType) {
      case 'Collected Amount':
        return [
          const FlSpot(0, 3),
          const FlSpot(2.6, 2),
          const FlSpot(4.9, 5),
          const FlSpot(6.8, 3.1),
          const FlSpot(8, 4),
          const FlSpot(9.5, 3),
          const FlSpot(11, 4),
        ];
      case 'Refunds':
        return [
          const FlSpot(0, 1),
          const FlSpot(2.6, 1.5),
          const FlSpot(4.9, 1.2),
          const FlSpot(6.8, 2.1),
          const FlSpot(8, 1.4),
          const FlSpot(9.5, 2),
          const FlSpot(11, 1.8),
        ];
      case 'Orders':
        return [
          const FlSpot(0, 2),
          const FlSpot(2.6, 3.5),
          const FlSpot(4.9, 4.2),
          const FlSpot(6.8, 3.1),
          const FlSpot(8, 5),
          const FlSpot(9.5, 4),
          const FlSpot(11, 4.8),
        ];
      default:
        return [];
    }
  }
}
