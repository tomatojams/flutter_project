import 'package:flutter/material.dart';

class UserConv extends StatelessWidget {
  final String conv;
  const UserConv({
    super.key,
    required this.conv,
  });

  // Future<List<String>> findId(String conv) async {
  //   List<String> findId = ["[m20240103]", "[m20240104]", "[m20240105]"];
  //   String reConv = conv;
  //   // Iterating through the list of IDs
  //   for (String id in findId) {
  //     if (conv.contains(id)) {
  //       reConv = conv.replaceAll(id, '');

  //       MentorModel mentor = await ApiService.getMentor(id);
  //       return [id, reConv, mentor.profile];
  //     }
  //   }
  //   return ['none', reConv, 'none'];
  // }

  // @override
  // Widget build(BuildContext context) {
  //   String reConv = widget.conv;
  //   String mentorId = 'none';
  //   String foundProfile = 'none';

  //   Future<List<String>> convP = findId(widget.conv);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.1,
            ),
            Container(
              alignment: Alignment.centerRight,
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 15.0,
                  vertical: 10.0,
                ),
                child: ConstrainedBox(
                  // 동적 조정하는 바로 위에 지정해야만 함
                  constraints: BoxConstraints(
                    maxWidth: MediaQuery.of(context).size.width * 0.66,
                  ),
                  child: Column(
                    children: [
                      Text(
                        conv,
                        style: TextStyle(
                          color: Theme.of(context).cardColor,
                          fontSize: 16.0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 15.0,
        ),
      ],
    );
  }
}
