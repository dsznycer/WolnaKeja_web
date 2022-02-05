import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:scroll_to_index/scroll_to_index.dart';

import 'package:wolnakeja/widgets/aboutwk/aboutwk.dart';
import 'package:wolnakeja/widgets/centeredview/centeredview.dart';
import 'package:wolnakeja/widgets/footer/footer.dart';
import 'package:wolnakeja/widgets/mainSilder/main_slider_desktop.dart';
import 'package:wolnakeja/widgets/partyEvent/partyEvent.dart';
import 'package:wolnakeja/widgets/partyEvent/partyEvent_desktop.dart';
import 'package:wolnakeja/widgets/portPanel/portPanel.dart';
import 'package:wolnakeja/widgets/portPanel/portPanel_desktop.dart';
import 'package:wolnakeja/widgets/uspRow/usprow.dart';
import 'package:wolnakeja/widgets/usprow/usprow_desktop.dart';
import 'package:wolnakeja/widgets/valuesProduct/valuesProduct.dart';
import 'package:wolnakeja/widgets/valuesProduct/valuesProduct_desktop.dart';

class ScrollHomeView extends StatefulWidget {
  const ScrollHomeView({Key? key}) : super(key: key);

  @override
  _ScrollHomeViewState createState() => _ScrollHomeViewState();
}

class _ScrollHomeViewState extends State<ScrollHomeView> {
  final scrollDirection = Axis.vertical;
  late AutoScrollController controller;

  @override
  void initState() {
    super.initState();
    controller = AutoScrollController(
        viewportBoundaryGetter: () =>
            Rect.fromLTRB(0, 0, 0, MediaQuery.of(context).padding.bottom),
        axis: scrollDirection);
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: scrollDirection,
      controller: controller,
      children: [
        MainSliderDesktop(),
        SizedBox(height: 40),
        FloatingActionButton(
          onPressed: () {
            _scrollToIndex;
          },
        ),
        CenteredView(
          child: Column(
            children: [
              aboutwk(),
              SizedBox(height: 40),
              usprow(),
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
        AutoScrollTag(
            key: ValueKey(2),
            controller: controller,
            index: 2,
            child: footer()),
      ],
    );
  }

  Future _scrollToIndex() async {
    await controller.scrollToIndex(2, preferPosition: AutoScrollPosition.begin);

    print('kliken');
  }
}
