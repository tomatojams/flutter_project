import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:trade_crossing_ios/domains/animal_crossing/enums.dart';
import 'package:trade_crossing_ios/domains/animal_crossing/items.model.dart';
import 'package:trade_crossing_ios/main.dart';

part 'items_provider.g.dart';

@riverpod
class ItemsViewModel extends _$ItemsViewModel {
  @override
  FutureOr<List<Item>> build() async => await Item.findWithPagination();

  List<Item> _cachedItem = [];
  Set<ItemCategory> _selectedCategory = {};

  Future<void> fetchMore() async {
    if (state is AsyncLoading) return;

    final copyState = state.value;
    state = const AsyncLoading();
    final items = await Item.findWithPagination(
        after: copyState!.last.name,
        filter: (item) => _selectedCategory.isNotEmpty || _selectedCategory.contains(item.category));
    state = AsyncValue.data([...copyState, ...items]);
    _cachedItem = [...copyState, ...items];
  }

  Future<void> search(String itemName) async {
    state = const AsyncLoading();
    if (itemName.isEmpty) {
      state = AsyncData(_cachedItem);
      return;
    } else {
      final items =
          await Item.findWithPagination(filter: (item) => item.translations?.kRko.contains(itemName) ?? false);
      state = AsyncData(items);
    }
  }

  Future<void> applyCategoryFilter(Set<ItemCategory> categories) async {
    _selectedCategory = categories;
    talker.debug(categories);

    if (categories.isEmpty) {
      await fetchMore();
    }
    state = AsyncData(state.requireValue.where((element) => _selectedCategory.contains(element.sourceSheet)).toList());
  }
}
