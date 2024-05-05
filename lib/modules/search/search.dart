// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
//
// import '../../shared/components/scanner.dart';
// import '../../shared/styles/color.dart';
// import '../scanner_screen/qr_scanner.dart';
//
// class SearchStudent extends StatelessWidget {
//   var searchController=TextEditingController();
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         leading: IconButton(onPressed: ()
//         {
//           navigateAndFinish(context, QrScanPage());
//         },icon:const Icon(Icons.arrow_back)),
//         title:const Text('Search Student'),
//         systemOverlayStyle:SystemUiOverlayStyle(
//           statusBarColor: kPrimaryColor,
//           statusBarIconBrightness: Brightness.light,
//         ),
//         backgroundColor: kPrimaryColor,
//       ),
//       body:Column(
//         children:
//         [
//           Padding(
//             padding: const EdgeInsets.all(20.0),
//             child: defaultForm(
//              style: TextStyle(color: kPrimaryColor),
//                 onChange: (value)
//                 {
//                   //NewsAppCubit.get(context).getSearcheData(value);
//                 },
//                 controller: searchController,
//                 validator: (String? value)
//                 {
//                   if(value!.isEmpty)
//                   {
//                     return 'Search must Not be Empty';
//                   }
//                   return null;
//                 },
//                 type: TextInputType.text,
//                 label: 'Search',
//                 onSubmit: (String ?value)
//                 {
//                   //navigateTo(context, LectureReservation(code:searchController.text));
//                 },
//                 prefix: (Icons.search)),
//
//           ),
//           /*  Expanded(
//                 child: ConditionalBuilder(
//                   condition: list.length > 0,
//                   builder: (context) => ListView.separated(
//                     physics: BouncingScrollPhysics(),
//                     itemBuilder: (context, index) => articleNewsBuilder(list[index],context,isSearch: false),
//                     separatorBuilder: (context, index) => Container(
//                       color: Colors.grey[400],
//                       height: 1,
//                     ),
//                     itemCount: list.length,
//                   ),
//                   fallback: (context) => isSearch? Container(): Center(child: CircularProgressIndicator()),
//                 ),
//               ),*/
//         ],
//       ),
//
//     );
//   }
// }
