import 'package:grambix/routes/routes.dart';
import 'package:grambix/views/splash/controller/splash_controller.dart';
import 'package:grambix/views/subscription_with_revenuecat/controller/revenue_cat_services.dart';
import 'package:purchases_flutter/purchases_flutter.dart';
import 'core/helpers/network_controller.dart';
import 'core/utils/basic_import.dart';
import 'initial.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Initial.init();
  // Configure RevenueCat
  try {
    await RevenueCatService().init();
  } catch (e) {
    debugPrint("RevenueCat init failed: $e");
  }
  runApp(const MyApp());

}

