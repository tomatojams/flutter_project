import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pt_mind/features/favorite/widgets/mentor_popup_dialog.dart';
import 'package:simple_shadow/simple_shadow.dart';
import 'package:pt_mind/constants/gaps.dart';

class FavoriteCard extends StatelessWidget {
  final String profile;
  final String titleName;
  final String name;
  final String slogan;
  final String description1;
  final String description2;

  const FavoriteCard({
    super.key,
    required this.profile,
    required this.titleName,
    required this.name,
    required this.slogan,
    required this.description1,
    required this.description2,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        popupDialog(context);
      },
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Theme.of(context).shadowColor,
              spreadRadius: 1,
              blurRadius: 3,
              offset: const Offset(0, 0),
            ),
          ],
          color: Theme.of(context).cardColor,
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20.0,
            vertical: 15.0,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SimpleShadow(
                opacity: 0.4, // Default: 0.5 // Default: Black
                offset: const Offset(1, 1), // Default: Offset(2, 2)
                sigma: 3,
                child: Image.asset(
                  profile,
                  width: 70.0,
                  height: 70.0,
                  scale: 0.5,
                ),
              ),
              Gaps.h24,
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text(
                              titleName,
                              style: TextStyle(
                                  color: Theme.of(context).focusColor,
                                  fontSize: 13.0,
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(width: 3.0),
                            Text(
                              name,
                              style: TextStyle(
                                  color: Theme.of(context).indicatorColor,
                                  fontSize: 13.0,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        SvgPicture.asset(
                          'assets/icon/favoriteMenu2.svg',
                        )
                      ],
                    ),
                    Gaps.v10,
                    Text(
                      slogan,
                      style: TextStyle(
                        color: Theme.of(context).hintColor,
                        fontSize: 12.0,
                      ),
                    ),
                    Gaps.v10,
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.grey.withOpacity(0.5),
                            ),
                            color: Theme.of(context).cardColor,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(
                                top: 0, bottom: 2, left: 5, right: 5),
                            child: Text(
                              description1,
                              style: TextStyle(
                                color: Theme.of(context).hintColor,
                                fontSize: 10.0,
                              ),
                            ),
                          ),
                        ),
                        Gaps.h10,
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.grey.withOpacity(0.5),
                            ),
                            color: Theme.of(context).cardColor,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(
                                top: 0, bottom: 2, left: 9, right: 9),
                            child: Text(
                              description2,
                              style: TextStyle(
                                color: Theme.of(context).hintColor,
                                fontSize: 10.0,
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
