import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import '../../../bond%20details/domain/entities/bond_detail.dart';

class FinancialChart extends StatefulWidget {
  final Financials financials;

  const FinancialChart({super.key, required this.financials});

  @override
  State<FinancialChart> createState() => _FinancialChartState();
}

class _FinancialChartState extends State<FinancialChart> {
  bool showEbitda = true;

  @override
  Widget build(BuildContext context) {
    final ebitdaData = widget.financials.ebitda;
    final revenueData = widget.financials.revenue;
    final maxValue = _getMaxValue(ebitdaData, revenueData) * 1.2;

    return Card(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'COMPANY FINANCIALS',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey.shade600,
                    letterSpacing: 0.5,
                  ),
                ),
                _buildToggleButtons(),
              ],
            ),
            const SizedBox(height: 18),

            Expanded(
              child: BarChart(
                BarChartData(
                  alignment: BarChartAlignment.spaceAround,
                  maxY: maxValue,
                  barTouchData: BarTouchData(
                    enabled: true,
                    touchTooltipData: BarTouchTooltipData(
                      getTooltipItem: (group, groupIndex, rod, rodIndex) {
                        String label =
                            showEbitda
                                ? 'EBITDA: ${rod.toY.toStringAsFixed(1)}L'
                                : 'Revenue: ${rod.toY.toStringAsFixed(1)}L';

                        return BarTooltipItem(
                          label,
                          const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                          ),
                        );
                      },
                    ),
                  ),
                  titlesData: FlTitlesData(
                    show: true,
                    bottomTitles: AxisTitles(
                      sideTitles: SideTitles(
                        showTitles: true,
                        getTitlesWidget: (value, meta) {
                          if (value.toInt() >= ebitdaData.length) {
                            return const SizedBox();
                          }
                          String monthLabel = ebitdaData[value.toInt()].month
                              .substring(0, 1);
                          return Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(
                              monthLabel,
                              style: TextStyle(
                                color: Colors.grey.shade600,
                                fontSize: 10,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    leftTitles: AxisTitles(
                      sideTitles: SideTitles(showTitles: false),
                    ),
                    topTitles: AxisTitles(
                      sideTitles: SideTitles(showTitles: false),
                    ),
                    rightTitles: AxisTitles(
                      sideTitles: SideTitles(showTitles: false),
                    ),
                  ),
                  borderData: FlBorderData(show: false),
                  barGroups: List.generate(
                    ebitdaData.length,
                    (index) => BarChartGroupData(
                      x: index,
                      barRods: [
                        BarChartRodData(
                          toY:
                              showEbitda
                                  ? ebitdaData[index].value
                                  : revenueData[index].value,
                          color: showEbitda ? Colors.black : Colors.blue,
                          width: 16,
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ],
                    ),
                  ),
                  gridData: FlGridData(
                    show: true,
                    horizontalInterval: maxValue / 4,
                    getDrawingHorizontalLine: (value) {
                      return FlLine(
                        color: Colors.grey.shade200,
                        strokeWidth: 1,
                      );
                    },
                    drawVerticalLine: false,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildToggleButtons() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          _buildToggleButton('EBITDA', showEbitda, () {
            setState(() {
              showEbitda = true;
            });
          }),
          _buildToggleButton('Revenue', !showEbitda, () {
            setState(() {
              showEbitda = false;
            });
          }),
        ],
      ),
    );
  }

  Widget _buildToggleButton(String text, bool isSelected, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
          color: isSelected ? Colors.white : Colors.transparent,
          borderRadius: BorderRadius.circular(20),
          boxShadow:
              isSelected
                  ? [
                    BoxShadow(
                      color: Colors.grey.shade300,
                      blurRadius: 4,
                      offset: const Offset(0, 2),
                    ),
                  ]
                  : null,
        ),
        child: Text(
          text,
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w600,
            color: isSelected ? Colors.black : Colors.grey.shade600,
          ),
        ),
      ),
    );
  }

  double _getMaxValue(
    List<FinancialItem> ebitdaData,
    List<FinancialItem> revenueData,
  ) {
    double maxEbitda = ebitdaData.fold(
      0,
      (max, item) => item.value > max ? item.value : max,
    );
    double maxRevenue = revenueData.fold(
      0,
      (max, item) => item.value > max ? item.value : max,
    );
    return maxEbitda > maxRevenue ? maxEbitda : maxRevenue;
  }
}
