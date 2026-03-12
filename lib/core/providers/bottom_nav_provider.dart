import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'bottom_nav_provider.g.dart';

@Riverpod(keepAlive: true)
class BottomNavIndex extends _$BottomNavIndex {
  @override
  int build() => 2;

  void setIndex(int index) => state = index;
}
