import 'package:dart_mappable/dart_mappable.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:trade_crossing_ios/domains/animal_crossing/enums.dart';

part 'item_category_filter_provider.g.dart';
part 'item_category_filter_provider.mapper.dart';

@MappableClass()
class ItemTradeFilterState with ItemTradeFilterStateMappable {
  const ItemTradeFilterState({
    this.category = const {},
    this.source = const {},
  });

  final Set<ItemCategory> category;
  final Set<String> source;
}

@riverpod
class ItemTradeFilter extends _$ItemTradeFilter {
  @override
  ItemTradeFilterState build() {
    return const ItemTradeFilterState();
  }

  void applyCategoryFilter(Set<ItemCategory> categories) {
    state = ItemTradeFilterState(
      category: categories,
      source: state.source,
    );
  }

  void applySourceFilter(Set<String> sources) {
    state = ItemTradeFilterState(
      category: state.category,
      source: sources,
    );
  }
}
