// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
//
//
// import '../helpers/app_color.dart';
// import '../helpers/enums.dart';
// import '../helpers/utils_functions.dart';
//
// class NoDataWidget extends StatelessWidget {
//   NoDataWidget(
//       {Key? key,
//       required this.errorState,
//       required this.errorMsg,
//       this.containRefresh = false,
//       this.onRefresh,
//       this.btnText})
//       : super(key: key);
//   final PageStates errorState;
//   final String errorMsg;
//   bool containRefresh;
//   Function? onRefresh;
//   String? btnText;
//
//   @override
//   Widget build(BuildContext context) {
//     return
//       Column(
//       crossAxisAlignment: CrossAxisAlignment.center,
//       children: [
//         Expanded(
//           child: Lottie.asset(
//             setImage(errorState),
//             height: 250,
//             width: 250,
//           ),
//         ),
//         Text(
//           errorMsg,
//           style: TextStyle(fontSize: 16.sp, color: Colors.black),
//           textAlign: TextAlign.center,
//         ),
//         SizedBox(
//           height: 16,
//         ),
//         containRefresh
//             ? Center(
//                 child: Padding(
//                   padding:
//                       EdgeInsets.symmetric(horizontal: 0.w, vertical: 15.h),
//                   child: Container(
//                     height: MediaQuery.of(context).size.height * 0.1,
//                     width: MediaQuery.of(context).size.width * 0.7,
//                     decoration: BoxDecoration(
//                       color: AppColor.mainColor,
//                       borderRadius: BorderRadius.circular(15.r),
//                     ),
//                     child: ElevatedButton(
//                       child: Text('Refresh'),
//                       onPressed: () => onRefresh,
//                     ),
//                   ),
//                 ),
//               )
//             : SizedBox.shrink()
//       ],
//     );
//   }
// }
