import 'package:get/get.dart';
import 'package:validation/ui/widget/update_profile/bottom_sheet_model.dart';

class ChangePasswordBottomSheet {
  static void bottomSheet() {
    Get.bottomSheet(
      BottomSheetModel(),
    );
  }
}
