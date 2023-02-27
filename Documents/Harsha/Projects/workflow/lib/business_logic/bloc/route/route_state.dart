part of 'route_cubit.dart';

class RouteState extends Equatable {
  final String bottomNavItems;
  final int index;

  const RouteState({required this.bottomNavItems, required this.index});

  @override
  List<Object> get props => [bottomNavItems, index];
}
