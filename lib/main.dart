// ignore_for_file: depend_on_referenced_packages

import 'dart:async';

import 'package:flutter/foundation.dart';

import 'Observers/IntervalObserver.dart';
import 'firebase_options.dart';
import 'exports/exports.dart';
import 'package:firebase_core/firebase_core.dart';

@pragma('vm:entry-point')
void firebaseMessagingBackgroundHandler(RemoteMessage message) {
  // If you're going to use other Firebase services in the background, such as Firestore,

}
Future<void> main() async {
   WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      systemNavigationBarIconBrightness: Brightness.light,
      statusBarIconBrightness: Brightness.dark,
      statusBarBrightness: Brightness.dark,
      statusBarColor: Colors.transparent,
      systemNavigationBarDividerColor: Colors.transparent,
    ),
  );
  final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();
  const AndroidInitializationSettings initializationSettingsAndroid =
      AndroidInitializationSettings('android12splash');
  const InitializationSettings initializationSettings =
      InitializationSettings(android: initializationSettingsAndroid);

  flutterLocalNotificationsPlugin
      .resolvePlatformSpecificImplementation<
          AndroidFlutterLocalNotificationsPlugin>()
      ?.requestPermission();

  await flutterLocalNotificationsPlugin.initialize(initializationSettings,
      onDidReceiveNotificationResponse: (payload) async {
    if (kDebugMode) {
      print(payload);
    }
  });
 
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

   // firebase messaging
  await FirebaseMessaging.instance.setAutoInitEnabled(true);
  FirebaseMessaging.onMessage.listen((event) {
    if (kDebugMode) {
      print(event);
    }
  });

  // end of firebase messaging
  Timer.periodic(const Duration(seconds: 7), (timer) {
    // sendNotification();
  });
  Bloc.observer = const Observer();
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => UserdataController()),
        BlocProvider(create: (_) => AmountController()),
        BlocProvider(create: (_) => TenantController()),
        BlocProvider(create: (_) => PowerStatusController()),
        ChangeNotifierProvider(create: (_) => MainController()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: Routes.splash,
        routes: Routes.routes,
      ),
    ),
  );
}
