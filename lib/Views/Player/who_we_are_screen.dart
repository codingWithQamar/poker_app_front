// import '../../Customs/routes/imports.dart';

// class WhoWeAre extends StatelessWidget {
//   const WhoWeAre({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return WillPopScope(
//       onWillPop: () async {
//         return await Alert.showConfirmationDialogue(context) ?? false;
//       },
//       child: renderBody(
//         child: Scaffold(
//           drawer: myDrawer(context),
//           appBar: renderAppbar(
//             revT: true,
//             leading: () {
//               PlayerScreens.NAVIGATEBACK(context);
//             },
//             // trailing: () {
//             //   scaffoldKey.currentState!.openDrawer();
//             // },
//           ),
//           body: Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 8.0),
//             child: Center(
//               child: SizedBox(
//                 // width: AppWidgetsSize.NORMAL_CONTAINER,
//                 child: SingleChildScrollView(
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     children: [
//                       heightSpacer(40.h),
//                       assetImage('assets/images/splash.png', false,
//                           width: AppWidgetsSize.NORMAL_CONTAINER * 0.8),
//                       heightSpacer(10.h),
//                       customText('Who we are', AppStyles.HEADING),
//                       heightSpacer(20.h),
//                       customText(
//                           'Poker Nation started out business in Tasmania in July 2009 with poker as the primary product. With an expansion to Victoria in July of 2011, further products were added to the portfolio.\nPoker Nation makes holding any or all of our events very simple for our venues by providing one entity to deal with for all your entertainment needs. We supply all the equipment for all our events, except chairs. There is nothing our venues have to do. Our pricing is the most competitive in the market.\nThe Mission of Poker Nation is to provide events where patrons, young or old, any gender, religion or ethnic background, can come along,  enjoy a night or day out, in a friendly & safe environment.',
//                           AppStyles.SMALL,
//                           align: TextAlign.justify,
//                           maxLine: null),
//                       heightSpacer(15.h),
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../Customs/image/custom_image.dart';
import '../../Customs/screens/player_screens.dart';
import '../../Customs/styles/font_sizes.dart';
import '../../Customs/widgets/appbar_widget.dart';
import '../../Customs/widgets/confirmation_dialogue.dart';
import '../../Customs/widgets/gradiant_body_widget.dart';
import '../../Customs/widgets/height_spacer.dart';
import '../../Customs/widgets/text_widget.dart';
import '../../Utils/enums.dart';
import 'drawer_screen.dart';

class WhoWeAre extends StatelessWidget {
  const WhoWeAre({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return await Alert.showConfirmationDialogue(context) ?? false;
      },
      child: renderBody(
        child: Scaffold(
          drawer: playerDrawer(context),
          appBar: renderAppbar(
            revT: true,
            leading: () {
              PlayerScreens.NAVIGATEBACK(context);
            },
          ),
          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 0.w),
            child: Center(
              child: SizedBox(
                width: AppWidgetsSize.NORMAL_CONTAINER,
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      assetImage('assets/images/splash.png', false,
                          width: ScreenUtil().setWidth(300)),
                      heightSpacer(10.h),
                      customText('Who we are', AppStyles.HEADING),
                      heightSpacer(20.h),
                      customText(
                        'Poker Nation started out business in Tasmania in July 2009 with poker as the primary product. With an expansion to Victoria in July of 2011, further products were added to the portfolio.\n\nPoker Nation makes holding any or all of our events very simple for our venues by providing one entity to deal with for all your entertainment needs. We supply all the equipment for all our events, except chairs. There is nothing our venues have to do. Our pricing is the most competitive in the market.\n\nThe Mission of Poker Nation is to provide events where patrons, young or old, any gender, religion or ethnic background, can come along,  enjoy a night or day out, in a friendly & safe environment.',
                        AppStyles.SMALL,
                        align: TextAlign.justify,
                        maxLine: null,
                      ),
                      heightSpacer(15.h),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
