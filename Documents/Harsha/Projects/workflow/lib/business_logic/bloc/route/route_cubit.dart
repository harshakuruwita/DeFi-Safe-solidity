import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:workflow/util/router/route_constants.dart';

part 'route_state.dart';

class RouteCubit extends Cubit<RouteState> {
  RouteCubit()
      : super(const RouteState(bottomNavItems: Routes.homeNamedPage, index: 0));

  void getNavBarItem(int index) {
    switch (index) {
      case 0:
        emit(const RouteState(bottomNavItems: Routes.homeNamedPage, index: 0));
        break;
      case 1:
        emit(const RouteState(
            bottomNavItems: Routes.profileNamedPage, index: 1));
        break;
      case 2:
        emit(const RouteState(
            bottomNavItems: Routes.settingsNamedPage, index: 2));
        break;
    }
  }
}
