import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trade_crossing_ios/config/theme.dart';
import 'package:trade_crossing_ios/domains/animal_crossing/villagers.model.dart';
import 'package:trade_crossing_ios/widgets/custom_button.dart';

class ProfileSelectWidget extends HookWidget {
  const ProfileSelectWidget(this.profileImage, {super.key, required this.onSelect});

  final String? profileImage;
  final void Function(String? profileImg) onSelect;

  Future<Villager> findRandomVillager() async {
    final villagerList = await Villager.findAll((villager) => true);
    final randomInt = Random().nextInt(villagerList.length);
    return villagerList[randomInt];
  }

  @override
  Widget build(BuildContext context) {
    final selected = useState<int?>(null);
    final randomVillagerSnapshot = useFuture(useMemoized(() => findRandomVillager()));

    useEffect(() {
      return null;
    }, const []);

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        //
        _Profile(
          profileImage: profileImage ?? '',
          seleceted: selected.value == 0,
          onClick: () {
            selected.value = 0;
            onSelect(profileImage);
          },
        ),
        //
        20.horizontalSpace,
        //
        if (randomVillagerSnapshot.hasData)
          _Profile(
            profileImage: randomVillagerSnapshot.data!.iconImage,
            seleceted: selected.value == 1,
            onClick: () {
              onSelect(randomVillagerSnapshot.data!.iconImage);
              selected.value = 1;
            },
          ),
      ],
    );
  }
}

class _Profile extends StatelessWidget {
  const _Profile({required this.profileImage, required this.seleceted, required this.onClick});

  final String profileImage;
  final bool seleceted;
  final VoidCallback onClick;

  @override
  Widget build(BuildContext context) {
    return CustomButton(
      width: 100.w,
      height: 100.h,
      onPressed: onClick,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(36.r),
          image: DecorationImage(
            image: NetworkImage(profileImage),
            fit: BoxFit.cover,
          ),
          border: seleceted ? Border.all(color: AppColor.primaryColor, width: 4) : null,
        ),
      ),
    );
  }
}
