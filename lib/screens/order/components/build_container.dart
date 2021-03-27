import 'package:flutter/material.dart';
import 'package:md2_tab_indicator/md2_tab_indicator.dart';

Container buildContainer(_selectPages) {
  return Container(
    height: 40,
    child: DefaultTabController(
      length: 2,
      child: TabBar(
          labelColor: Colors.blue,
          indicatorSize: TabBarIndicatorSize.label,
          onTap: _selectPages,
          unselectedLabelColor: Colors.black54,
          indicator: MD2Indicator(
              //it begins here
              indicatorHeight: 3,
              indicatorColor: Color(0xff1a73e8),
              indicatorSize:
                  MD2IndicatorSize.full //3 different modes tiny-normal-full
              ),
          tabs: [
            Tab(
              child: Container(
                child:
                    Align(alignment: Alignment.center, child: Text("Ongoing")),
              ),
            ),
            Tab(
              child: Container(
                child:
                    Align(alignment: Alignment.center, child: Text("History")),
              ),
            ),
          ]),
    ),
  );
}
