import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:md2_tab_indicator/md2_tab_indicator.dart';
import 'package:sizer/sizer.dart';

Container buildContainer(_selectPages) {
  return Container(
    height: 5.3.h,
    child: DefaultTabController(
      length: 2,
      child: TabBar(
          labelColor: Colors.blue,
          indicatorSize: TabBarIndicatorSize.label,
          onTap: _selectPages,
          unselectedLabelColor: Colors.black54,
          indicator: MD2Indicator(
              //it begins here
              indicatorHeight: 0.4.h,
              indicatorColor: Color(0xff1a73e8),
              indicatorSize:
                  MD2IndicatorSize.full //3 different modes tiny-normal-full
              ),
          tabs: [
            Tab(
              child: Container(
                child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Ongoing",
                      style: GoogleFonts.lato(
                          textStyle: TextStyle(
                              fontSize: 13.0.sp, fontStyle: FontStyle.normal)),
                    )),
              ),
            ),
            Tab(
              child: Container(
                child: Align(
                    alignment: Alignment.center,
                    child: Text("History",
                        style: GoogleFonts.lato(
                            textStyle: TextStyle(
                                fontSize: 13.0.sp,
                                fontStyle: FontStyle.normal)))),
              ),
            ),
          ]),
    ),
  );
}
