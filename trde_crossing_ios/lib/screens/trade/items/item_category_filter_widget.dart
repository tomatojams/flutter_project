// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:trade_crossing_ios/config/assets.dart';
import 'package:trade_crossing_ios/config/routes.dart';
import 'package:trade_crossing_ios/config/theme.dart';
import 'package:trade_crossing_ios/domains/animal_crossing/enums.dart';
import 'package:trade_crossing_ios/screens/trade/state/item_category_filter_provider.dart';
import 'package:trade_crossing_ios/screens/trade/state/items_provider.dart';
import 'package:trade_crossing_ios/widgets/base_button.dart';
import 'package:trade_crossing_ios/widgets/checkbox_widget.dart';
import 'package:trade_crossing_ios/widgets/custom_button.dart';
import 'package:trade_crossing_ios/widgets/selected_chip_widget.dart';

class ItemCategoryFilterChip extends StatefulHookConsumerWidget {
  const ItemCategoryFilterChip({super.key});

  @override
  ConsumerState<ItemCategoryFilterChip> createState() => _ItemCategoryFilterChipState();
}

class _ItemCategoryFilterChipState extends ConsumerState<ItemCategoryFilterChip> {
  Future<void> showFilter(int index) async {
    await showModalBottomSheet(
      context: rootNavKey.currentContext!,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(48.r),
          topRight: Radius.circular(48.r),
        ),
      ),
      builder: (context) => _FilterBottomModal(initialIndex: index),
    );
  }

  @override
  Widget build(BuildContext context) {
    final filter = ref.watch(itemTradeFilterProvider);
    final allFilter = useState<List<String>>([]);

    useEffect(() {
      allFilter.value = [...filter.category.map((e) => e.name).toList(), ...filter.source];
      return null;
    }, [filter]);

    return SizedBox(
      height: 24.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (filter.category.isEmpty && filter.source.isEmpty) ...{
            // 카테고리 버튼
            CustomButton(
              onPressed: () => showFilter(0),
              border: Border.all(color: AppColor.textDisable),
              borderRadius: 16.r,
              padding: EdgeInsets.fromLTRB(12.w, 4.h, 10.w, 4.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "카테고리",
                    style: labelMediumTextStyle.copyWith(fontSize: 12.sp),
                  ),
                  4.horizontalSpace,
                  SvgPicture.asset(Assets.assetsIconsDropdownArrow)
                ],
              ),
            ),
            //
            4.horizontalSpace,
            // 획득처 버튼
            CustomButton(
              onPressed: () => showFilter(1),
              border: Border.all(color: AppColor.textDisable),
              borderRadius: 16.r,
              padding: EdgeInsets.fromLTRB(12.w, 4.h, 10.w, 4.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "획득처",
                    style: labelMediumTextStyle.copyWith(fontSize: 12.sp),
                  ),
                  4.horizontalSpace,
                  SvgPicture.asset(Assets.assetsIconsDropdownArrow)
                ],
              ),
            ),
          } else ...{
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  //
                  SelectedChipWidget(
                    label:
                        "${allFilter.value.where((element) => element != "All").first}외 ${allFilter.value.length - 1}개",
                    onPressed: () => showFilter(0),
                  ),
                  //
                  4.horizontalSpace,
                  //
                  if (allFilter.value.contains('All')) SelectedChipWidget(label: "전체", onPressed: () => showFilter(0))
                ],
              ),
            )
          },
        ],
      ),
    );
  }
}

class _FilterBottomModal extends HookConsumerWidget {
  const _FilterBottomModal({required this.initialIndex});

  final int initialIndex;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final filterNotifier = ref.read(itemTradeFilterProvider.notifier);
    final selectedCategory = ref.watch(itemTradeFilterProvider.select((value) => value.category));
    final selectedSource = ref.watch(itemTradeFilterProvider.select((value) => value.source));

    return SafeArea(
      child: DefaultTabController(
        initialIndex: initialIndex,
        length: 2,
        child: Container(
          // height: 340.h,
          constraints: BoxConstraints(minHeight: 340.h),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //
              12.verticalSpace,
              //
              Center(
                child: Container(
                  width: 60.w,
                  height: 2.h,
                  decoration:
                      BoxDecoration(color: AppColor.buttonDisableColor, borderRadius: BorderRadius.circular(50.r)),
                ),
              ),
              //
              12.verticalSpace,
              //
              Container(
                padding: EdgeInsets.only(right: 12.w, left: 12.w),
                child: TabBar(
                  splashFactory: NoSplash.splashFactory,
                  unselectedLabelStyle: appBarTextStyle.copyWith(fontSize: 16.sp, color: AppColor.textDisable),
                  indicatorColor: AppColor.primaryColor,
                  labelStyle: appBarTextStyle.copyWith(fontSize: 16.sp),
                  tabs: const [
                    Tab(text: "분류"),
                    Tab(text: "획득처"),
                  ],
                ),
              ),
              //
              Flexible(
                child: TabBarView(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Flexible(
                          child: Scrollbar(
                            child: GridView.builder(
                              shrinkWrap: true,
                              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 16.h),
                              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 3,
                                childAspectRatio: 117.w / 20.h,
                                mainAxisSpacing: 16,
                              ),
                              itemCount: ItemCategory.values.length,
                              itemBuilder: (context, index) => CustomCheckboxWidget(
                                value: ItemCategory.values[index].name,
                                isSelected: selectedCategory.contains(ItemCategory.values[index]),
                                onChanged: (value) {
                                  if (ItemCategory.values[index] == ItemCategory.All) {
                                    if (selectedCategory.length == ItemCategory.values.length) {
                                      filterNotifier.applyCategoryFilter({});
                                    } else {
                                      filterNotifier.applyCategoryFilter(ItemCategory.values.toSet());
                                    }
                                  } else if (selectedCategory.contains(ItemCategory.values[index])) {
                                    filterNotifier.applyCategoryFilter(selectedCategory
                                        .where((element) => element != ItemCategory.values[index])
                                        .toSet());
                                  } else {
                                    filterNotifier
                                        .applyCategoryFilter({...selectedCategory, ItemCategory.values[index]});
                                  }
                                },
                              ),
                            ),
                          ),
                        ),
                        //
                        4.verticalSpace,
                        //
                        SingleChildScrollView(
                          padding: EdgeInsets.symmetric(horizontal: 20.w),
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: List.generate(
                              selectedCategory.length,
                              (index) => Padding(
                                padding: EdgeInsets.only(right: index == selectedCategory.length ? 0 : 4.w),
                                child: SelectedChipWidget(
                                  label: selectedCategory.elementAt(index).name,
                                  onPressed: () {
                                    if (selectedCategory.elementAt(index) == ItemCategory.All) {
                                      filterNotifier.applyCategoryFilter({});
                                    } else {
                                      filterNotifier.applyCategoryFilter(
                                          selectedCategory..remove(selectedCategory.elementAt(index)));
                                    }
                                  },
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      child: const Text("획득처"),
                    ),
                  ],
                ),
              ),
              //
              16.verticalSpace,
              //
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: BaseButton(
                  height: 48.w,
                  onPressed: () {
                    ref.read(itemsViewModelProvider.notifier).applyCategoryFilter(selectedCategory);
                    context.pop();
                  },
                  text: "필터 적용하기",
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
