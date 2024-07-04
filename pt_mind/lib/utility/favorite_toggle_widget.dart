import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:pt_mind/provider/PT_chat_provider.dart';

import 'mentor_popup_dialog.dart';

class FavoriteToggleWidget extends StatelessWidget {
  final String mentorId;
  const FavoriteToggleWidget({
    super.key,
    required this.mentorId,
  });

  @override
  Widget build(BuildContext context) {
    return Selector<AiChatProvider, bool>(
      selector: (context, provider) => provider.getFavoriteID(mentorId),
      builder: (context, isFavorite, child) {
        return GestureDetector(
          onTap: () {
            Provider.of<AiChatProvider>(context, listen: false)
                .toggleFavoriteID(mentorId);
          },
          child: Container(
            child: isFavorite // 즐겨찾기 여부에 따라 아이콘 변경
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
      },
    );
  }
}
