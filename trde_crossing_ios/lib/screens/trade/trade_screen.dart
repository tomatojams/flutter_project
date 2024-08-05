import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trade_crossing_ios/config/theme.dart';
import 'package:trade_crossing_ios/screens/trade/villagers/villager_page.dart';
import 'package:trade_crossing_ios/screens/trade/items/item_trade_page.dart';

class TradeScreen extends StatelessWidget {
  const TradeScreen({super.key});

  static const routePath = '/trade';
  static const routeName = 'TradeScreen';

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 52.h,
          centerTitle: false,
          title: Text('Trade Crossing', style: appBarTextStyle.copyWith(fontSize: 17.sp)),
        ),
        body: Column(
          children: [
            // TabBar
            Container(
              height: 44.h,
              decoration: BoxDecoration(
                color: AppColor.backgroundColor,
                border: Border(
                  bottom: BorderSide(
                    color: AppColor.borderColor,
                    width: 1.h,
                  ),
                ),
              ),
              child: TabBar(
                indicatorColor: AppColor.primaryColor,
                tabs: [
                  Tab(
                    child: Text(
                      "아이템",
                      style: bodyMediumTextStyle.copyWith(fontSize: 14.sp, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Tab(
                    child: Text(
                      "주민",
                      style: bodyMediumTextStyle.copyWith(fontSize: 14.sp, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Tab(
                    child: Text(
                      "무 주식",
                      style: bodyMediumTextStyle.copyWith(fontSize: 14.sp, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
            //
            Expanded(
              child: TabBarView(
                physics: const NeverScrollableScrollPhysics(),
                children: [
                  const ItemTradePage(),
                  const VillagerTradePage(),
                  Container(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
