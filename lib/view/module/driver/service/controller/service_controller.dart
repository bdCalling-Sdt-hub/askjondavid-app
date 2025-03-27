import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class ServiceController extends GetxController{
  var selectedImagePath = RxString('');

  final ImagePicker _picker = ImagePicker();

  // Method to pick image from gallery
  Future<void> pickImageFromGallery() async {
    final XFile? image = await _picker.pickImage(source: ImageSource.gallery);
    if (image != null) {
      selectedImagePath.value = image.path;
    }
  }

  // Method to capture image from camera
  Future<void> pickImageFromCamera() async {
    final XFile? image = await _picker.pickImage(source: ImageSource.camera);
    if (image != null) {
      selectedImagePath.value = image.path;
    }
  }

  // Declare the selected value for the dropdown
  var selectedValue = ''.obs;

  // List of dropdown items
  var items = ['Bespoke concierge services', 'Private drivers', 'Security personnel management'].obs;

  // Method to change the selected value
  void updateSelectedValue(String value) {
    selectedValue.value = value;
  }
}
