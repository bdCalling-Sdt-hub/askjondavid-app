// import 'dart:io';
// import 'package:baller_world/Helper/shared_prefe/shared_prefe.dart';
// import 'package:baller_world/Service/api_url.dart';
// import 'package:baller_world/Utils/AppConst/app_const.dart';
// import 'package:dio/dio.dart';
//
// typedef OnProgressCallback = void Function(double progress);
//
// Future<String?> uploadVideoChunks(File file) async {
//   const int chunkSize = 5 * 1024 * 1024; // 5 MB per chunk
//   int totalChunks = (file.lengthSync() / chunkSize).ceil();
//   int uploadedBytes = 0;
//   Dio dio = Dio();
//
//   // Get Bearer Token (Ensure it is available)
//   String bearerToken = await SharePrefsHelper.getString(AppConstants.bearerToken);
//
//   for (int index = 0; index < totalChunks; index++) {
//     int start = index * chunkSize;
//     int end = (start + chunkSize).clamp(0, file.lengthSync());
//     List<int> chunkData = file.readAsBytesSync().sublist(start, end);
//
//     FormData formData = FormData.fromMap({
//       "chunk": MultipartFile.fromBytes(chunkData, filename: file.uri.pathSegments.last),
//       "originalname": file.uri.pathSegments.last,
//       "chunkIndex": index.toString(),
//       "totalChunks": totalChunks.toString(),
//     });
//
//     try {
//       Response response = await dio.post(
//         ApiConstant.baseUrl+ApiConstant.create_post,
//         data: formData,
//         options: Options(
//           headers: {
//             "Authorization": "Bearer $bearerToken",
//             "Content-Type": "multipart/form-data",
//             "Accept": "application/json",
//           },
//         ),
//       );
//
//       uploadedBytes += chunkData.length;
//       double totalProgress = (uploadedBytes / file.lengthSync()) * 100;
//
//       if (index == totalChunks - 1 && response.data["videoUrl"] != null) {
//         return response.data["videoUrl"];
//       }
//     } catch (e) {
//       print("Error uploading chunk: $e");
//       return null;
//     }
//   }
//   return null;
// }
