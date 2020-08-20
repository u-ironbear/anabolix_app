import 'package:anabolix_app/app/locator.dart';
import 'package:anabolix_app/ui/views/books_view/books_view.dart';
import 'package:anabolix_app/ui/views/cycles_view/cycles_view.dart';
import 'package:anabolix_app/ui/views/diary_view/diary_view.dart';
import 'package:anabolix_app/ui/views/news_view/news_view.dart';
import 'package:anabolix_app/ui/views/reference_full_view/reference_view.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class BottomBarViewModel extends BaseViewModel {
  NavigationService _navigationService = locator<NavigationService>();

  List<Map<String, Object>> _views = [
    {
      'title': 'Новости',
      'view': NewsView(),
    },
    {
      'title': 'Справочник',
      'view': ReferenceView(),
    },
    {
      'title': 'Готовые курсы',
      'view': CyclesView(),
    },
    {
      'title': 'Дневник',
      'view': DiaryView(),
    },
    {
      'title': 'Книги',
      'view': BooksView(),
    },
  ];
  List<Map<String, Object>> get views => _views;

  int _currentIndex = 0;
  int get currentIndex => _currentIndex;
  String _currentTitle = 'Anabolix';
  String get currentTitle => _currentTitle;
  Widget currentView = NewsView();

  void setCurrentView(index) {
    _currentIndex = index;
    _currentTitle = _views[_currentIndex]['title'];
    currentView = _views[_currentIndex]['view'];
    notifyListeners();
  }
}
