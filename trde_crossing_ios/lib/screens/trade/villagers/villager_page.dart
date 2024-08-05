import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:trade_crossing_ios/screens/trade/state/villagers_provider.dart';
import 'package:trade_crossing_ios/screens/trade/widgets/grid_card.dart';
import 'package:trade_crossing_ios/widgets/search_widget.dart';

class VillagerTradePage extends HookConsumerWidget {
  const VillagerTradePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isLoading = useState(false);
    final scrollController = useScrollController();
    final villagerState = ref.watch(villagersViewModelProvider);

    scrollController.addListener(() async {
      if (scrollController.position.pixels > scrollController.position.maxScrollExtent - 100.h) {
        if (isLoading.value) return;
        isLoading.value = true;
        await ref.read(villagersViewModelProvider.notifier).fetchMore();
        isLoading.value = false;
      }
    });

    return Scaffold(
      body: Center(
        child: villagerState.when(
          error: (error, stackTrace) => const CircularProgressIndicator.adaptive(),
          loading: () => const CircularProgressIndicator.adaptive(),
          data: (data) => Scrollbar(
            controller: scrollController,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: CustomScrollView(
                controller: scrollController,
                slivers: [
                  //
                  // TODO: 검색 기능 추가
                  SliverPadding(
                    padding: EdgeInsets.fromLTRB(0, 12.h, 0, 12.h),
                    sliver: SliverToBoxAdapter(
                      child: SearchWidget(
                        hintText: '어떤 주민을 찾고 있나요?',
                        onChanged: (value) {},
                      ),
                    ),
                  ),

                  //
                  SliverToBoxAdapter(child: 4.verticalSpace),

                  //
                  SliverGrid.builder(
                    itemCount: data.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2, mainAxisSpacing: 8.h, crossAxisSpacing: 8.h),
                    itemBuilder: (context, index) =>
                        GridCard(imageUrl: data[index].iconImage, name: data[index].translations.kRko),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
