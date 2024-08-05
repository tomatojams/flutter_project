import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:trade_crossing_ios/domains/animal_crossing/villagers.model.dart';

part 'villagers_provider.g.dart';

@riverpod
class VillagersViewModel extends _$VillagersViewModel {
  @override
  FutureOr<List<Villager>> build() async => await Villager.findWithPagination();

  final List<Villager> _cachedVillagers = [];

  Future<void> fetchMore() async {
    if (state is AsyncLoading) return;

    final copyState = state.value;
    state = const AsyncLoading();
    final villagers = await Villager.findWithPagination(after: copyState!.last.name);
    state = AsyncValue.data([...copyState, ...villagers]);
    _cachedVillagers.addAll(villagers);
  }

  Future<void> search(String villagerName) async {
    state = const AsyncLoading();

    if (villagerName.isEmpty) {
      state = AsyncData(_cachedVillagers);
      return;
    } else {
      final villagers = await Villager.findWithPagination(
          filter: (villager) => villager.translations.kRko.contains(villagerName) ?? false);
      state = AsyncData(villagers);
    }
  }
}
