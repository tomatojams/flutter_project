import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:trade_crossing_ios/config/assets.dart';
import 'package:trade_crossing_ios/main.dart';
import 'package:trade_crossing_ios/screens/trade/state/items_provider.dart';
import 'package:trade_crossing_ios/screens/trade/widgets/grid_card.dart';
import 'package:trade_crossing_ios/screens/trade/items/item_category_filter_widget.dart';
import 'package:trade_crossing_ios/widgets/search_widget.dart';

class ItemTradePage extends StatefulHookConsumerWidget {
  const ItemTradePage({super.key});

  @override
  ConsumerState<ItemTradePage> createState() => _ItemTradePageState();
}

class _ItemTradePageState extends ConsumerState<ItemTradePage> with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    final items = ref.watch(itemsViewModelProvider);
    final scrollController = useScrollController();
    final itemsNotifier = ref.read(itemsViewModelProvider.notifier);

    useEffect(() {
      talker.debug('ItemTradePage useEffect');
      scrollController.addListener(() async {
        if (scrollController.position.pixels >= scrollController.position.maxScrollExtent - 100) {
          await itemsNotifier.fetchMore();
        }
      });
      return null;
    }, [items.value]);

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //TODO: 아이템 거래 만들기 버튼 로직 추가하기
        },
        child: SvgPicture.asset(Assets.assetsIconsEdit),
      ),
      body: items.when(
        error: (error, stackTrace) {
          return Center(child: Text('Error: $error'));
        },
        loading: () {
          return const Center(child: CircularProgressIndicator.adaptive());
        },
        data: (data) {
          talker.debug(data.last.name);
          return Scrollbar(
            controller: scrollController,
            child: Padding(
              padding: EdgeInsets.fromLTRB(16.w, 12.h, 16.w, 0),
              child: CustomScrollView(
                controller: scrollController,
                slivers: [
                  //
                  SliverToBoxAdapter(
                    child: SearchWidget(
                      hintText: '어떤 아이템을 찾고 있나요?',
                      onChanged: (value) async => await itemsNotifier.search(value),
                    ),
                  ),
                  //
                  SliverToBoxAdapter(
                      child: Padding(
                    padding: EdgeInsets.only(
                      top: 16.h,
                    ),
                    child: const ItemCategoryFilterChip(),
                  )),

                  //
                  SliverToBoxAdapter(
                    child: 16.verticalSpace,
                  ),
                  //
                  SliverGrid.builder(
                    itemCount: data.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2, mainAxisSpacing: 8.h, crossAxisSpacing: 8.h),
                    itemBuilder: (context, index) => GridCard(
                        imageUrl: data[index].getImage, name: data[index].translations?.kRko ?? data[index].name),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
