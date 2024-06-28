import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:pt_mind/features/provider/PT_chat_provider.dart';

class FavoriteToggleWidget extends StatelessWidget {
  const FavoriteToggleWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<FavoriteProvider>(builder: (context, provider, _) {
      return GestureDetector(
        onTap: () {
          provider.toggleFavorite();
        },
        child: Container(
          child: provider.isFavorite // 즐겨찾기 여부에 따라 아이콘 변경
              ? SvgPicture.asset(
                  'assets/icon/heart2.svg',
                  width: 18,
                )
              : SvgPicture.asset(
                  'assets/icon/heart1.svg',
                  width: 18,
                ),
        ),
      );
    });
  }
}
