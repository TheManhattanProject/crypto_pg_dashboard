import 'package:dashboard/home/overview_section.dart';
import 'package:dashboard/home/top_insights.dart';
import 'package:dashboard/util/responsive.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String current = 'Collected Amount';

  @override
  Widget build(BuildContext context) {
    bool isDesktop = Responsive.isDesktop(context);
    bool isMobile = Responsive.isMobile(context);
    bool isTablet = Responsive.isTablet(context);
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            width: double.maxFinite,
            decoration: BoxDecoration(
              color: Colors.blue,
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
              children: [
                Text(
                  'Good Afternoon, Ritesh Kumar',
                  style: TextStyle(color: Colors.white, fontSize:isMobile?32 : 40),
                ),
                const Text(
                  'Sun,30 June',
                  style: TextStyle(color: Colors.white, fontSize: 22),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 142, 183, 255),
                      borderRadius: BorderRadius.circular(20)),
                  margin:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                  child: Row(
                    mainAxisAlignment:isMobile?MainAxisAlignment.center: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment:isMobile?CrossAxisAlignment.center:  CrossAxisAlignment.start,
                        children:const [
                          Row(
                            children: [
                              Text(
                                'Current balance',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18),
                              ),
                              Icon(
                                Icons.info,
                                color: Colors.white,
                              )
                            ],
                          ),
                          Text(
                            '₹ 0.98',
                            style: TextStyle(color: Colors.black, fontSize: 18),
                          ),
                        ],
                      ),
                      if(!isMobile)
                      Container(
                        width: MediaQuery.sizeOf(context).width / 2.2,
                        // margin: const EdgeInsets.only(right: 10),
                        decoration: BoxDecoration(
                            gradient: const LinearGradient(colors: [
                              Color.fromARGB(255, 255, 51, 51),
                              Colors.white
                            ]),
                            borderRadius: BorderRadius.circular(20)),
                        padding: const EdgeInsets.symmetric( vertical: 10,horizontal: 20),
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Current balance',
                              style: TextStyle(
                                  color: Colors.white, fontSize: 18),
                            ),
                            Text("Your settlements are not being processed as we've noticed lack of transactional activity. Collect more payments to continue receiving settlements",
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          const Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 18.0, bottom: 20),
                child: Text(
                  'Key Updates',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 17,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 18.0, bottom: 20),
            child: Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: Colors.blue[200],
                      borderRadius: BorderRadius.circular(10)),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  margin:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: const Row(
                    children: [
                      Icon(
                        Icons.dangerous,
                        color: Colors.red,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10.0),
                        child: Column(
                          children: [
                            Text(
                              'Rejected: Website Update',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600),
                            ),
                            Text(
                              "short details will come here ",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          const Row(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 18.0, bottom: 20),
                child: Text(
                  'Payment Overview',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 17,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ],
          ),
          PaymentOverview(
              selectedOverview: current,
              onOverviewChanged: (e) {
                setState(() {
                  current = e;
                });
              }),
          const SizedBox(
            height: 20,
          ),
          PaymentGraph(
            overviewType: current,
          ),
          const SizedBox(
            height: 30,
          ),
          const TopInsights()
        ],
      ),
    );
  }
}
