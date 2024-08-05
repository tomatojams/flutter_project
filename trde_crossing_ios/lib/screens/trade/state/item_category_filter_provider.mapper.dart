// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'item_category_filter_provider.dart';

class ItemTradeFilterStateMapper extends ClassMapperBase<ItemTradeFilterState> {
  ItemTradeFilterStateMapper._();

  static ItemTradeFilterStateMapper? _instance;
  static ItemTradeFilterStateMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ItemTradeFilterStateMapper._());
      ItemCategoryMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'ItemTradeFilterState';

  static Set<ItemCategory> _$category(ItemTradeFilterState v) => v.category;
  static const Field<ItemTradeFilterState, Set<ItemCategory>> _f$category =
      Field('category', _$category, opt: true, def: const {});
  static Set<String> _$source(ItemTradeFilterState v) => v.source;
  static const Field<ItemTradeFilterState, Set<String>> _f$source =
      Field('source', _$source, opt: true, def: const {});

  @override
  final MappableFields<ItemTradeFilterState> fields = const {
    #category: _f$category,
    #source: _f$source,
  };

  static ItemTradeFilterState _instantiate(DecodingData data) {
    return ItemTradeFilterState(
        category: data.dec(_f$category), source: data.dec(_f$source));
  }

  @override
  final Function instantiate = _instantiate;

  static ItemTradeFilterState fromJson(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ItemTradeFilterState>(map);
  }

  static ItemTradeFilterState deserialize(String json) {
    return ensureInitialized().decodeJson<ItemTradeFilterState>(json);
  }
}

mixin ItemTradeFilterStateMappable {
  String serialize() {
    return ItemTradeFilterStateMapper.ensureInitialized()
        .encodeJson<ItemTradeFilterState>(this as ItemTradeFilterState);
  }

  Map<String, dynamic> toJson() {
    return ItemTradeFilterStateMapper.ensureInitialized()
        .encodeMap<ItemTradeFilterState>(this as ItemTradeFilterState);
  }

  ItemTradeFilterStateCopyWith<ItemTradeFilterState, ItemTradeFilterState,
          ItemTradeFilterState>
      get copyWith => _ItemTradeFilterStateCopyWithImpl(
          this as ItemTradeFilterState, $identity, $identity);
  @override
  String toString() {
    return ItemTradeFilterStateMapper.ensureInitialized()
        .stringifyValue(this as ItemTradeFilterState);
  }

  @override
  bool operator ==(Object other) {
    return ItemTradeFilterStateMapper.ensureInitialized()
        .equalsValue(this as ItemTradeFilterState, other);
  }

  @override
  int get hashCode {
    return ItemTradeFilterStateMapper.ensureInitialized()
        .hashValue(this as ItemTradeFilterState);
  }
}

extension ItemTradeFilterStateValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ItemTradeFilterState, $Out> {
  ItemTradeFilterStateCopyWith<$R, ItemTradeFilterState, $Out>
      get $asItemTradeFilterState =>
          $base.as((v, t, t2) => _ItemTradeFilterStateCopyWithImpl(v, t, t2));
}

abstract class ItemTradeFilterStateCopyWith<
    $R,
    $In extends ItemTradeFilterState,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  $R call({Set<ItemCategory>? category, Set<String>? source});
  ItemTradeFilterStateCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _ItemTradeFilterStateCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ItemTradeFilterState, $Out>
    implements ItemTradeFilterStateCopyWith<$R, ItemTradeFilterState, $Out> {
  _ItemTradeFilterStateCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ItemTradeFilterState> $mapper =
      ItemTradeFilterStateMapper.ensureInitialized();
  @override
  $R call({Set<ItemCategory>? category, Set<String>? source}) =>
      $apply(FieldCopyWithData({
        if (category != null) #category: category,
        if (source != null) #source: source
      }));
  @override
  ItemTradeFilterState $make(CopyWithData data) => ItemTradeFilterState(
      category: data.get(#category, or: $value.category),
      source: data.get(#source, or: $value.source));

  @override
  ItemTradeFilterStateCopyWith<$R2, ItemTradeFilterState, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _ItemTradeFilterStateCopyWithImpl($value, $cast, t);
}
