// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:cook4life/views/utils/AppColor.dart';
// import 'package:cook4life/views/widgets/user_info_tile.dart';

// class ProfilePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         //brightness: Brightness.dark,
//         backgroundColor: AppColor.primary,
//         elevation: 0,
//         centerTitle: true,
//         title: Text('โปรไฟล์ของฉัน',
//             style: TextStyle(
//                 color: Colors.white,
//                 fontFamily: 'inter',
//                 fontWeight: FontWeight.w400,
//                 fontSize: 16)),
//         leading: IconButton(
//           icon: Icon(Icons.arrow_back_ios, color: Colors.white),
//           onPressed: () {
//             Navigator.of(context).pop();
//           },
//         ),
//         actions: [
//           TextButton(
//             onPressed: () {},
//             child: Text(
//               'แก้ไข',
//               style: TextStyle(
//                   color: Colors.white,
//                   fontSize: 14,
//                   fontWeight: FontWeight.w600),
//             ),
//             style: TextButton.styleFrom(
//                 //b4 primary: Colors.white,
//                 foregroundColor: Colors.white,
//                 shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(100))),
//           ),
//         ],
//         systemOverlayStyle: SystemUiOverlayStyle.light,
//       ),
//       body: ListView(
//         shrinkWrap: true,
//         physics: BouncingScrollPhysics(),
//         children: [
//           // Section 1 - Profile Picture Wrapper
//           Container(
//             color: AppColor.primary,
//             padding: EdgeInsets.symmetric(vertical: 24),
//             child: GestureDetector(
//               onTap: () {
//                 print('Code to open file manager');
//               },
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: [
//                   Container(
//                     width: 130,
//                     height: 130,
//                     margin: EdgeInsets.only(bottom: 15),
//                     decoration: BoxDecoration(
//                       color: Colors.grey,
//                       borderRadius: BorderRadius.circular(100),
//                       // Profile Picture
//                       image: DecorationImage(
//                           image: AssetImage('assets/images/profile.jpg'),
//                           fit: BoxFit.cover),
//                     ),
//                   ),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Text('เปลี่ยนรูปโปรไฟล์',
//                           style: TextStyle(
//                               fontFamily: 'inter',
//                               fontWeight: FontWeight.w600,
//                               color: Colors.white)),
//                       SizedBox(width: 8),
//                       SvgPicture.asset('assets/icons/camera.svg',
//                           color: Colors.white),
//                     ],
//                   )
//                 ],
//               ),
//             ),
//           ),
//           // Section 2 - User Info Wrapper
//           Container(
//             margin: EdgeInsets.only(top: 24),
//             width: MediaQuery.of(context).size.width,
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.start,
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 UserInfoTile(
//                   margin: EdgeInsets.only(bottom: 16),
//                   label: 'Email',
//                   value: 'sickmydug@gmail.com',
//                 ),
//                 UserInfoTile(
//                   margin: EdgeInsets.only(bottom: 16),
//                   label: 'Full Name',
//                   value: 'Monkey D. Luffy',
//                 ),
//                 UserInfoTile(
//                   margin: EdgeInsets.only(bottom: 16),
//                   label: 'Subscription Type',
//                   value: 'Premium Subscription',
//                   valueBackground: AppColor.secondary,
//                 ),
//                 UserInfoTile(
//                   margin: EdgeInsets.only(bottom: 16),
//                   label: 'Subscription Time',
//                   value: 'Until 22 Oct 2021',
//                 ),
//               ],
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:cook4life/views/utils/AppColor.dart';
import 'package:cook4life/views/widgets/user_info_tile.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //brightness: Brightness.dark,
        backgroundColor: AppColor.primary,
        elevation: 0,
        centerTitle: true,
        title: Text('โปรไฟล์ของฉัน',
            style: TextStyle(
                color: Colors.white,
                fontFamily: 'inter',
                fontWeight: FontWeight.w400,
                fontSize: 16)),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.white),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        systemOverlayStyle: SystemUiOverlayStyle.light,
      ),
      body: ListView(
        shrinkWrap: true,
        physics: BouncingScrollPhysics(),
        children: [
          // Section 1 - Profile Picture Wrapper
          Container(
            color: AppColor.primary,
            padding: EdgeInsets.symmetric(vertical: 24),
            child: GestureDetector(
              onTap: () {
                print('Code to open file manager');
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 130,
                    height: 130,
                    margin: EdgeInsets.only(bottom: 15),
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(100),
                      // Profile Picture
                      image: DecorationImage(
                          image: AssetImage('assets/images/profile.jpg'),
                          fit: BoxFit.cover),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('เปลี่ยนรูปโปรไฟล์',
                          style: TextStyle(
                              fontFamily: 'inter',
                              fontWeight: FontWeight.w600,
                              color: Colors.white)),
                      SizedBox(width: 8),
                      SvgPicture.asset('assets/icons/camera.svg',
                          color: Colors.white),
                    ],
                  )
                ],
              ),
            ),
          ),
          // Section 2 - User Info Wrapper
          Container(
            margin: EdgeInsets.only(top: 24),
            width: MediaQuery.of(context).size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                UserInfoTile(
                  margin: EdgeInsets.only(bottom: 16),
                  label: 'Email',
                  value: 'karn.yong@melivecode.com',
                ),
                UserInfoTile(
                  margin: EdgeInsets.only(bottom: 16),
                  label: 'Full Name',
                  value: 'Monkey D. Luffy',
                ),
                UserInfoTile(
                  margin: EdgeInsets.only(bottom: 16),
                  label: 'Subscription Type',
                  value: 'Premium Subscription',
                  valueBackground: AppColor.secondary,
                ),
                UserInfoTile(
                  margin: EdgeInsets.only(bottom: 16),
                  label: 'Subscription Time',
                  value: 'Until 22 Oct 2021',
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
