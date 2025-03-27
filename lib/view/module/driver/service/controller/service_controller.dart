import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class ServiceController extends GetxController{
  var selectedImagePath = RxString('');

  // Id card
  var selectedIdCardFrontPath = RxString('');
  var selectedIdCardBackPath = RxString('');

  // driving licence
  var selectedDrivingLicenceFrontPart = RxString('');
  var selectedDrivingLicenceBackPart = RxString('');

  // vehicle registration
  var selectedVehicleRegistrationFrontPart = RxString('');
  var selectedVehicleRegistrationBackPart = RxString('');

  // vehicle registration
  var selectedVehicleFitnessFrontPart = RxString('');
  var selectedVehicleFitnessBackPart = RxString('');

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
    final XFile? image = await _picker.pickImage(source: ImageSource.camera,imageQuality: 50);
    if (image != null) {
      selectedImagePath.value = image.path;
    }
  }

  // Id Card
  Future<void> pickIdFrontPartFromCamera() async {
    final XFile? image = await _picker.pickImage(source: ImageSource.camera, imageQuality: 50);
    if (image != null) {
      selectedIdCardFrontPath.value = image.path;
    }
  }
  Future<void> pickIdBackPartFromCamera() async {
    final XFile? image = await _picker.pickImage(source: ImageSource.camera, imageQuality: 50);
    if (image != null) {
      selectedIdCardBackPath.value = image.path;
    }
  }

  // licence
  Future<void> pickDrivingLicenceFrontPartFromCamera() async {
    final XFile? image = await _picker.pickImage(source: ImageSource.camera, imageQuality: 50);
    if (image != null) {
      selectedDrivingLicenceFrontPart.value = image.path;
    }
  }
  Future<void> pickDrivingLicenceBackPartFromCamera() async {
    final XFile? image = await _picker.pickImage(source: ImageSource.camera, imageQuality: 50);
    if (image != null) {
      selectedDrivingLicenceBackPart.value = image.path;
    }
  }

  // vehicle registration
  Future<void> pickVehicleRegistrationFrontPartFromCamera() async {
    final XFile? image = await _picker.pickImage(source: ImageSource.camera, imageQuality: 50);
    if (image != null) {
      selectedVehicleRegistrationFrontPart.value = image.path;
    }
  }
  Future<void> pickVehicleRegistrationBackPartFromCamera() async {
    final XFile? image = await _picker.pickImage(source: ImageSource.camera, imageQuality: 50);
    if (image != null) {
      selectedVehicleRegistrationBackPart.value = image.path;
    }
  }

  // vehicle fitness
  Future<void> pickVehicleFitnessFrontPartFromCamera() async {
    final XFile? image = await _picker.pickImage(source: ImageSource.camera, imageQuality: 50);
    if (image != null) {
      selectedVehicleFitnessFrontPart.value = image.path;
    }
  }
  Future<void> pickVehicleFitnessBackPartFromCamera() async {
    final XFile? image = await _picker.pickImage(source: ImageSource.camera, imageQuality: 50);
    if (image != null) {
      selectedVehicleFitnessBackPart.value = image.path;
    }
  }

  // check all values selected or not
  RxBool selectedAllDocuments= false.obs;

  void updateSelectedDocuments() {
    selectedAllDocuments.value = checkIsSelected();
  }
  bool checkIsSelected(){
    if(selectedIdCardFrontPath.value.isNotEmpty
    && selectedIdCardBackPath.value.isNotEmpty
    && selectedDrivingLicenceFrontPart.value.isNotEmpty
    && selectedDrivingLicenceBackPart.value.isNotEmpty
    && selectedVehicleRegistrationFrontPart.value.isNotEmpty
    && selectedVehicleRegistrationBackPart.value.isNotEmpty
    // && selectedVehicleFitnessFrontPart.value.isNotEmpty
    // && selectedVehicleFitnessBackPart.value.isNotEmpty
    ){
      return true;
    }else{
      return false;
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
