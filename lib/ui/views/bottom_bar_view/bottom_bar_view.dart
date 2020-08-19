import 'package:anabolix_app/ui/shared/constants.dart';
import 'package:anabolix_app/ui/views/bottom_bar_view/bottom_bar_viewmodel.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:stacked/stacked.dart';
import 'package:flutter/material.dart';

class BottomBarView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<BottomBarViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        appBar: AppBar(
          title: Text(model.currentTitle),
          centerTitle: true,
        ),
        drawer: Drawer(),
        body: model.currentView,
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: model.currentIndex,
          backgroundColor: Colors.white,
          selectedItemColor: kPrimaryAccent,
          unselectedItemColor: Colors.black38,
          onTap: model.setCurrentView,
          items: [
            BottomNavigationBarItem(
              icon: Icon(MdiIcons.newspaperVariantOutline),
              title: Text('Новости'),
            ),
            BottomNavigationBarItem(
              icon: Icon(MdiIcons.bookOpenOutline),
              title: Text('Справочник'),
            ),
            BottomNavigationBarItem(
              icon: Icon(MdiIcons.fileEditOutline),
              title: Text('Курсы'),
            ),
            BottomNavigationBarItem(
              icon: Icon(MdiIcons.calendarClock),
              title: Text('Дневник'),
            ),
            BottomNavigationBarItem(
              icon: Icon(MdiIcons.chatOutline),
              title: Text('Чат'),
            ),
          ],
        ),
      ),
      viewModelBuilder: () => BottomBarViewModel(),
    );
  }
}
