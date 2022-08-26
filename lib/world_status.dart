import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';

class WorldStatus extends StatefulWidget {
  const WorldStatus({Key? key}) : super(key: key);

  @override
  State<WorldStatus> createState() => _WorldStatusState();
}

class _WorldStatusState extends State<WorldStatus>
    with TickerProviderStateMixin {
  late final AnimationController _controller =
      AnimationController(duration: const Duration(seconds: 3), vsync: this)
        ..repeat();

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  final colorList = <Color>[
    const Color(0xFF4285F4),
    const Color(0xFF1AA260),
    const Color(0xFFDE5246),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              SizedBox(height: MediaQuery.of(context).size.height * 0.01,),

              PieChart(
                dataMap: {
                  "Total" : 20,
                  "Recovered" : 15,
                  "Deaths" : 5,
                },
                chartRadius: MediaQuery.of(context).size.width / 3.2,
                legendOptions: const LegendOptions(
                  legendPosition: LegendPosition.left
                ),
                animationDuration: Duration(milliseconds: 1200),
                chartType: ChartType.ring,
                colorList: colorList,
              ),

              Padding(
                padding: EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.height * .06),
                child: Card(
                  child: Column(
                    children: [
                      ReusableRow(title: 'Total', value: '200',),
                      ReusableRow(title: 'Total', value: '200',),
                      ReusableRow(title: 'Total', value: '200',),
                    ],
                  ),
                ),
              ),

              Container(
                height: 50,
                decoration: BoxDecoration(
                  color: Color(0xFF1AA260),
                  borderRadius: BorderRadius.circular(10.0)

                ),
                child: Center(
                  child: Text('Track Countries'),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}


class ReusableRow extends StatelessWidget {
  String title, value;
  ReusableRow({Key? key, required this.title, required this.value}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0, bottom: 5.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(title),
              Text(value),
            ],
          ),
          SizedBox(height: 5,),
          Divider()
        ],
      ),
    );
  }
}
