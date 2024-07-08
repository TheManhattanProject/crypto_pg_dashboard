import 'package:dashboard/util/responsive.dart';
import 'package:flutter/material.dart';

class TopInsights extends StatelessWidget {
  const TopInsights({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600,
      width: double.maxFinite,
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
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            'Top Insights',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [TopInsightsCard(), TopInsightsCard()],
          ),
          SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [TopInsightsCard(), TopInsightsCard()],
          ),
          SizedBox(height: 16),
          PaymentMethodSplitCard()
        ],
      ),
    );
  }
}

class TopInsightsCard extends StatelessWidget {
  const TopInsightsCard({super.key});

  @override
  Widget build(BuildContext context) {
    bool isMobile = Responsive.isMobile(context);
    return Container(
      width: MediaQuery.of(context).size.width * 0.38,
      height: 130,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: const Color.fromARGB(255, 221, 204, 204))),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        mainAxisAlignment:isMobile?MainAxisAlignment.center : MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
          Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                 const Row(
                    children: [
                      Text(
                        'Payment Count',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w400),
                      ),
                      Icon(Icons.info)
                    ],
                  ),
                 const SizedBox(width: 4,),
                  if(isMobile)
                 const Text('Last Month : 0')
                  else
                 const Text('Last Month')
                ],
              ),
              if(!isMobile)
             const Text(
                '0',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w600),
              ),
            ],
          ),
          if(!isMobile)
          Container(
            height: 100,
            width: 100,
            color: Colors.grey,
          )
        ],
      ),
    );
  }
}

class PaymentMethodSplitCard extends StatelessWidget {
  const PaymentMethodSplitCard({super.key});

  @override
  Widget build(BuildContext context) {
    double width =  MediaQuery.of(context).size.width;
    return Container(
       width:width * 0.38,
      height: 130,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: const Color.fromARGB(255, 221, 204, 204))),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        mainAxisAlignment:width<875?MainAxisAlignment.center : MainAxisAlignment.spaceBetween,
        children: [
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    'Payment method split',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w400),
                  ),
                  SizedBox(width: 4,),
                  Icon(Icons.info)
                ],
              ),
              Text('Last Month')
            ],
          ),
        if(!(MediaQuery.sizeOf(context).width < 875))
          Container(
            height: 100,
            width: 100,
            color: Colors.grey,
          )
        ],
      ),
    );
  }
}
