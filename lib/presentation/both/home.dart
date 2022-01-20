//bought and sold tab will be here
import 'dart:async';
import 'dart:convert';
import 'dart:io';

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
  StreamSubscription? iosSubscription;
  final FirebaseMessaging? _fcm = FirebaseMessaging.instance;
  final FlutterLocalNotificationsPlugin? flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();
  // Logger logger = new Logger();
  int? num = 0;
  int? currentTab;
  @override
  void initState() {
    super.initState();
    _setAnalyticsProperties();
    _logAppOpen();
    // widget.selectedPage = 0;
    // Initialize the Tab Controller
    num = widget.selectedPage!;

    // logger.i("selectedpage num  " + num.toString());
    controller = TabController(initialIndex: num ?? 0, length: 2, vsync: this);
    // if (currentTab == 0) {}

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
    logger.i("configLocalNotification called");
    var initializationSettingsAndroid =
        new AndroidInitializationSettings('ic_launcher');
    var initializationSettingsIOS = new IOSInitializationSettings();
    var initializationSettings = new InitializationSettings(
        android: initializationSettingsAndroid, iOS: initializationSettingsIOS);
    flutterLocalNotificationsPlugin!.initialize(initializationSettings);
  }

  Logger logger = Logger();
  void registerNotification() {
    logger.i("registerNotification called");

    if (Platform.isIOS) {
      iosSubscription = _fcm!.onIosSettingsRegistered.listen((data) {
        // save the token  OR subscribe to a topic here
      });

      _fcm!.requestNotificationPermissions(IosNotificationSettings());
    }
    _fcm!.requestNotificationPermissions();

    _fcm!.configure(
      onMessage: (Map<String, dynamic> message) async {
        logger.i("onMessage: $message");
        if (message['notification']['sold_and_bought_Id']) {
          ExtendedNavigator.of(context).pushFromNotificationBoughtBill(
              soldAndboughtId: message['notification']['sold_and_bought_Id'],
              soldInvoiceAndBoughtInvoiceId: message['notification']
                  ['soldInvoice_boughtInvoice_Id']);
        } else {
          ExtendedNavigator.of(context).pushFromNotificationBoughtBill(
              soldAndboughtId: message['notification']['bought_and_sold_Id'],
              soldInvoiceAndBoughtInvoiceId: message['notification']
                  ['boughtInvoice_soldInvoice_Id']);
        }
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            content: ListTile(
              title: Text(message['notification']['title']),
              subtitle: Text(message['notification']['body']),
            ),
            actions: <Widget>[
              FlatButton(
                child: Text('Ok'),
                onPressed: () => Navigator.of(context).pop(),
              ),
            ],
          ),
        );
        Platform.isAndroid
            ? showNotification(message['notification'])
            : showNotification(message['aps']['alert']);
      },
      // onBackgroundMessage: myBackgroundMessageHandler,
      onLaunch: (Map<String, dynamic> message) async {
        logger.i("onLaunch: $message");
        // TODO optional
        Platform.isAndroid
            ? showNotification(message['notification'])
            : showNotification(message['aps']['alert']);
      },
      onResume: (Map<String, dynamic> message) async {
        logger.i("onResume: $message");
        // TODO optional
        Platform.isAndroid
            ? showNotification(message['notification'])
            : showNotification(message['aps']['alert']);
      },
    );
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

  void showNotification(message) async {
    var androidPlatformChannelSpecifics = new AndroidNotificationDetails(
      Platform.isAndroid
          ? 'com.shamagri.shamagri26'
          : 'com.duytq.flutterchatdemo',
      'Shamagri',
      playSound: true,
      enableVibration: true,
      importance: Importance.max,
      priority: Priority.high,
    );
    var iOSPlatformChannelSpecifics = new IOSNotificationDetails();
    var platformChannelSpecifics = new NotificationDetails(
        android: androidPlatformChannelSpecifics,
        iOS: iOSPlatformChannelSpecifics);

    logger.i('notification message $message');
//    print(message['body'].toString());
//    print(json.encode(message));

    await flutterLocalNotificationsPlugin!.show(0, message['title'].toString(),
        message['body'].toString(), platformChannelSpecifics,
        payload: json.encode(message));

//    await flutterLocalNotificationsPlugin.show(
//        0, 'plain title', 'plain body', platformChannelSpecifics,
//        payload: 'item x');
  }

  /// Get the token, save it to the database for current user

  @override
  void dispose() {
    // Dispose of the Tab Controller
    controller!.dispose();
    if (Platform.isIOS) {
      iosSubscription!.cancel();
    }
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
          title: const Text('Shamagri'),
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

              await _firebaseAnalytics.logEvent(
                name: 'create_bill',
                parameters: {
                  'clicked_time': now,
                },
              );
              ExtendedNavigator.of(context)
                  .pushSelectBillScreen(afterSelectSoldOption: null);
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
                  ExtendedNavigator.of(context).replace(Routes.profilePage);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
