import 'package:flutter/material.dart';

import '../statics/data_values.dart';
import '../statics/key_holders.dart';
import '../theme/app_theme.dart';
import '../widgets/container_card.dart';
import '../widgets/frame_title.dart';

class DS3Education extends StatelessWidget {
  const DS3Education({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      key: KeyHolders.educationKey,
      color: AppThemeData.backgroundGrey,
      child: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const FrameTitle(
                title: DataValues.educationTitle,
                description: DataValues.educationDescription),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child:
                  // ContainerCard().type2(
                  //   image: 'mms',
                  //   title: DataValues.educationOrg1Title,
                  //   values: [
                  //     DataValues.educationOrg1Course1Name,
                  //     DataValues.educationOrg1Course1Grade,
                  //     DataValues.educationOrg1Course1Year,
                  //     DataValues.educationOrg1Course2Name,
                  //     DataValues.educationOrg1Course2Grade,
                  //     DataValues.educationOrg1Course2Year,
                  //     DataValues.educationOrg1Course3Name,
                  //     DataValues.educationOrg1Course3Year,
                  //     DataValues.educationOrg1Course3Year2,
                  //   ],
                  //   message: DataValues.linkedinURL.toString(),
                  //   url: DataValues.linkedinURL,
                  // ),
                  ContainerCard().type1(
                    image: 'assets/images/mms.png',
                    title: DataValues.educationOrg1Title,
                    message: DataValues.linkedinURL.toString(),
                    url: DataValues.linkedinURL,
                    description: '${DataValues.educationOrg1Course1Name}\n'
                        '${DataValues.educationOrg1Course1Grade}\n'
                        '${DataValues.educationOrg1Course1Year}',
                  ),
                ),
                SizedBox(width: MediaQuery.of(context).size.width * 0.05),
                Expanded(
                  child: ContainerCard().type1(
                    image: 'assets/images/nibm.png',
                    title: DataValues.educationOrg2Title,
                    message: DataValues.linkedinURL.toString(),
                    url: DataValues.linkedinURL,
                    description: '${DataValues.educationOrg2Course1Name}\n'
                   '${DataValues.educationOrg2Course1Grade}\n'
                    '${DataValues.educationOrg2Course1Year}',
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
