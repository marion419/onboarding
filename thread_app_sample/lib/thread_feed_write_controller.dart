import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class ThreadFeedWriteController extends GetxController {
  String contents = '';
  List<XFile>? selectedImages;
  // 텍스트 등록
  void setContent(String value) {
    contents = value;
    update();
  }
  // 이미지 파일 등록
  void setSelectedImages(List<XFile>? value) {
    selectedImages = value;
    update();
  }
}
