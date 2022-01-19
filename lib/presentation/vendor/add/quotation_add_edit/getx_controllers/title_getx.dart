import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:logger/logger.dart';

class TitleQuotationController extends GetxController {
  /// You do not need that. I recommend using it just for ease of syntax.
  /// with static method: Controller.to.increment();
  /// with no static method: Get.find<Controller>().increment();
  /// There is no difference in performance, nor any side effect of using either syntax. Only one does not need the type, and the other the IDE will autocomplete it.
  static TitleQuotationController get to => Get.find(); // add this line
  // Logger logger = Logger();

  String titleQuotation = "";
  final box = GetStorage();
  void uxTitle(String title) {
    box.write('titleQuotation', title);
    this.titleQuotation = box.read('titleQuotation');
    update();
  }

  void remove() {
    this.titleQuotation = "";
    box.erase();
    update();
    // logger.v("box " + box.read('titleQuotation').toString());
    // box.remove('titleQuotation');
  }
}
