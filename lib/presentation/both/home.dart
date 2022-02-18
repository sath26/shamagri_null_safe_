//bought and sold tab will be here
import 'dart:async';
import 'dart:convert';
import 'dart:io';

// import 'package:another_flushbar/flushbar.dart';
import 'package:another_flushbar/flushbar_helper.dart';
import 'package:auto_route/auto_route.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:intl/intl.dart';
import 'package:logger/logger.dart';
import 'package:shamagri_latest_flutter_version/domain/auth/i_auth_facade.dart';
import 'package:shamagri_latest_flutter_version/domain/core/errors.dart';
import 'package:shamagri_latest_flutter_version/injection.dart';
// import 'package:logger/logger.dart';
import 'package:shamagri_latest_flutter_version/presentation/routes/router.gr.dart';
import 'package:shamagri_latest_flutter_version/presentation/vendor/sold.dart';
import 'package:shamagri_latest_flutter_version/presentation/customer/bought_bloc.dart';
import 'package:shamagri_latest_flutter_version/themes.dart';
// import 'package:mobile_shamagri/third.dart';

class HomeScreen extends StatefulWidget {
  int? selectedPage = 0;
  HomeScreen({Key? key, this.selectedPage}) : super(key: key);

  @override
  State createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  final FirebaseAnalytics? _firebaseAnalytics = FirebaseAnalytics.instance;
  HomeScreenState({Key? key});
// Create a tab controller
  TabController? controller;
  // Future<String?>? iosSubscription;
  final FirebaseMessaging? firebaseMessaging = FirebaseMessaging.instance;
  final FlutterLocalNotificationsPlugin? flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();
  // Logger logger = new Logger();
  int? num = 0;
  int? currentTab = 0;
  @override
  void initState() {
    super.initState();
    _setAnalyticsProperties();
    _logAppOpen();
    // widget.selectedPage = 0;
    // Initialize the Tab Controller
    num = widget.selectedPage;

    // logger.i("selectedpage num  " + num.toString());
    controller = TabController(initialIndex: num ?? 0, length: 2, vsync: this);
    // if (currentTab == 0) {}
    if (widget.selectedPage == 1) {
      setState(() {
        currentTab = 1;
      });
    }
    controller!.addListener(() {
      setState(() {
        currentTab = controller!.index;
      });
      if (currentTab == 0) {
        _trackBoughtClicked();
      } else {
        _trackSoldClicked();
      }
      // logger.i("Selected index " + currentTab.toString());
      // print("Selected Index: " + controller.index.toString());
    });

    registerNotification();
    configLocalNotification();
  }

  void _logAppOpen() async {
    await _firebaseAnalytics!.logAppOpen();
  }

  DateFormat dateFormat = DateFormat("yyyy-MM-dd HH:mm:ss");

  void _trackBoughtClicked() async {
    String now = dateFormat.format(DateTime.now());
    // DateTime now = new DateTime.now();
    await _firebaseAnalytics!.logEvent(
      name: 'BOUGHT_Clicked',
      parameters: {
        'clicked_time': now,
      },
    );
  }

  void _trackSoldClicked() async {
    String now = dateFormat.format(DateTime.now());

    // DateTime now = new DateTime.now();
    await _firebaseAnalytics!.logEvent(
      name: 'Sold_Clicked',
      parameters: {
        'clicked_time': now,
      },
    );
  }

  String? userID;
  void _setAnalyticsProperties() async {
    final userOption = await getIt<IAuthFacade>().getSignedInUser();
    logger.i("BOught userOption " + userOption.toString());

    final user = userOption.getOrElse(() => throw NotAuthenticatedError());
    userID = user.id!.getOrCrash();
    await _firebaseAnalytics!.logEvent(name: "userDetails", parameters: {
      "userId": userID,
      "email": user.email,
    });
    /* await _firebaseAnalytics.setUserProperty(
      name: 'favorite_color',
      value: 'pink',
    ); */
  }

  void configLocalNotification() {
    AndroidInitializationSettings initializationSettingsAndroid =
        AndroidInitializationSettings('app_icon');
    IOSInitializationSettings initializationSettingsIOS =
        IOSInitializationSettings();
    InitializationSettings initializationSettings = InitializationSettings(
        android: initializationSettingsAndroid, iOS: initializationSettingsIOS);
    flutterLocalNotificationsPlugin!.initialize(initializationSettings);
  }

  Logger logger = Logger();
  void registerNotification() {
    firebaseMessaging!.requestPermission();
    logger.i("registerNotification called");

    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      Map<String, dynamic> data = message.data;

      print('onMessage: $message');
      logger.i("data from cloud onMessage" + data.toString());

      if (message.notification != null) {
        showNotification(message.notification!);
      }
      return;
    });
    FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
      // logger.i("data from cloud" + message.toString());

      Map<String, dynamic> data = message.data;
      logger.i("data from cloud onMessageOpenedApp" +
          data['sold_and_bought_Id'].toString());

      if (data['sold_and_bought_Id'] != null) {
        AutoRouter.of(context).push(FromNotificationBoughtBillRoute(
            soldAndboughtId: data['sold_and_bought_Id'],
            soldInvoiceAndBoughtInvoiceId:
                data['soldInvoice_boughtInvoice_Id']));
      } else if (data['bought_and_sold_Id'] != null) {
        //this shoudl have pushfromnotificaitonsoldbill
        AutoRouter.of(context).push(FromNotificationBoughtBillRoute(
            soldAndboughtId: data['bought_and_sold_Id'],
            soldInvoiceAndBoughtInvoiceId:
                data['boughtInvoice_soldInvoice_Id']));
      } else {}
    });
    // firebaseMessaging!.getToken().then((fcmToken) {
    firebaseMessaging!.onTokenRefresh.listen((fcmToken) {
      final FirebaseFirestore _db = FirebaseFirestore.instance;

      print('push token: $fcmToken');
      if (fcmToken != null) {
        var tokens;
        tokens = _db
            .collection('users')
            .doc(userID)
            .collection('tokens')
            .doc(fcmToken);

        tokens.set({
          'token': fcmToken,
          'createdAt': FieldValue.serverTimestamp(), // optional
          'platform': Platform.operatingSystem // optional
        }).catchError((error, stackTrace) =>
            FlushbarHelper.createError(message: error!.message.toString()));
      }
    }).onError((err) {
      // .catchError((err) {
      FlushbarHelper.createError(message: err.message.toString());
    });
  }

  Future<dynamic> myBackgroundMessageHandler(
      Map<String, dynamic> message) async {
    if (message.containsKey('data')) {
      // Handle data message
      final dynamic data = message['data'];
    }

    if (message.containsKey('notification')) {
      // Handle notification message
      final dynamic notification = message['notification'];
      Logger logger = Logger();
      logger.i("notification " + notification.toString());
      Platform.isAndroid
          ? showNotification(notification)
          : showNotification(message['aps']['alert']);
    }

    // Or do other work.
  }

  void showNotification(RemoteNotification remoteNotification) async {
    AndroidNotificationDetails androidPlatformChannelSpecifics =
        AndroidNotificationDetails(
      Platform.isAndroid
          ? 'com.dfa.flutterchatdemo'
          : 'com.duytq.flutterchatdemo',
      'Flutter chat demo',
      // 'your channel description',
      playSound: true,
      enableVibration: true,
      importance: Importance.max,
      priority: Priority.high,
    );
    IOSNotificationDetails iOSPlatformChannelSpecifics =
        IOSNotificationDetails();
    NotificationDetails platformChannelSpecifics = NotificationDetails(
        android: androidPlatformChannelSpecifics,
        iOS: iOSPlatformChannelSpecifics);

    print(remoteNotification);

    await flutterLocalNotificationsPlugin!.show(
      0,
      remoteNotification.title,
      remoteNotification.body,
      platformChannelSpecifics,
      payload: null,
    );
  }

  /// Get the token, save it to the database for current user

  @override
  void dispose() {
    // Dispose of the Tab Controller
    controller!.dispose();
    /*  if (Platform.isIOS) {
      iosSubscription!.ignore();
    } */
    super.dispose();
  }

  TabBar getTabBar() {
    return TabBar(
      tabs: <Tab>[
        Tab(
          // set icon to the tab

          text: "BOUGHT",
        ),
        Tab(
          text: "SOLD",
        ),
        // Tab(
        //   icon: Icon(Icons.airport_shuttle),
        // ),
      ],
      // setup the controller
      controller: controller,
    );
  }

  TabBarView getTabBarView(var tabs) {
    return TabBarView(
      // Add tabs as widgets
      children: tabs,
      // set the controller
      controller: controller,
    );
  }

  @override
  Widget build(BuildContext context) {
    // currentTab = controller.index;

    return Scaffold(
      appBar: AppBar(
          title: Text('Shamagri'),
          actions: [
            /* IconButton(
                icon: Icon(
                  Icons.open_with_rounded,
                  color: Colors.white,
                ),
                onPressed: () {
                  // do something
                },
              ), */
          ],
          // backgroundColor: Colors.indigo,
          bottom: getTabBar(),
          automaticallyImplyLeading: false),
      body: getTabBarView(<Widget>[Bought(), Sold()]), //Third()
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Visibility(
        visible:
            currentTab == 1 ? MyThemes.hideBillButton : MyThemes.showBillButton,
        // visible: false,

        child: FloatingActionButton.extended(
            // backgroundColor: Colors.white,
            onPressed: () async {
              //Navigator.pushReplacementNamed(context, '/select-bill');
              // ExtendedNavigator.of(context).replace(Routes.selectBillScreen);
              String now = dateFormat.format(DateTime.now());

              await _firebaseAnalytics!.logEvent(
                name: 'create_bill',
                parameters: {
                  'clicked_time': now,
                },
              );
              AutoRouter.of(context)
                  .push(SelectBillScreenRoute(afterSelectSoldOption: null));
            },
            icon: Icon(
              Icons.add,
              // color: Colors.white,
            ),
            label: Text(" BILL")),
      ),
      bottomNavigationBar: BottomAppBar(
        // color: Colors.black,
        notchMargin: 6.0,
        shape: AutomaticNotchedShape(
          RoundedRectangleBorder(),
          StadiumBorder(
            side: BorderSide(),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: new Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.home_outlined,
                  //home_outlined shows that the tab is inactive and just home shows active icon
                  // color: Colors.white,
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(
                  Icons.person_outline,
                  // color: Colors.white,
                ),
                onPressed: () {
                  AutoRouter.of(context).replace(ProfilePageRoute());
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
