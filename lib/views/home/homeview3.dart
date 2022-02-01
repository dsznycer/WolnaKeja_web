import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:scroll_to_index/scroll_to_index.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

import 'package:wolnakeja/widgets/aboutwk/aboutwk.dart';
import 'package:wolnakeja/widgets/centeredview/centeredview.dart';
import 'package:wolnakeja/widgets/footer/footer.dart';
import 'package:wolnakeja/widgets/mainSilder/mainslider_row.dart';
import 'package:wolnakeja/widgets/partyEvent/partyEvent.dart';
import 'package:wolnakeja/widgets/portPanel/portPanel.dart';
import 'package:wolnakeja/widgets/usprow/usprow.dart';
import 'package:wolnakeja/widgets/valuesProduct/valuesProduct.dart';

class ScrollHomeView extends StatefulWidget {
  const ScrollHomeView({Key? key}) : super(key: key);

  @override
  _ScrollHomeViewState createState() => _ScrollHomeViewState();
}

class _ScrollHomeViewState extends State<ScrollHomeView> {
  final ItemScrollController itemScrollController = ItemScrollController();
  final ItemPositionsListener itemPositionsListener =
      ItemPositionsListener.create();

  @override
  Widget build(BuildContext context) {
    return ScrollablePositionedList.builder(
      itemScrollController: itemScrollController,
      itemPositionsListener: itemPositionsListener,
      children: [
        MainSlider2(),
        SizedBox(height: 40),
        FloatingActionButton(
          onPressed: () {},
        ),
        CenteredView(
          child: Column(
            children: [
              aboutwk(),
              SizedBox(height: 40),
              UspRow(),
              SizedBox(height: 70),
              partyEvent(),
              SizedBox(height: 70),
              valuesProduct(),
              SizedBox(height: 100),
              portPanel(),
              SizedBox(height: 120),
            ],
          ),
        ),
        footer(),
      ],
    );
  }
}
