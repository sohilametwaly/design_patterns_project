import 'package:design_patterns_project/Manager/IncomeTracker.dart';
import 'package:design_patterns_project/Manager/Manager.dart';
import 'package:design_patterns_project/Manager/ResidentViewer.dart';
import 'package:design_patterns_project/Manager/RoomMonitor.dart';
import 'package:design_patterns_project/Manager/reports.dart';
import 'package:design_patterns_project/Receptionist.dart';
import 'package:design_patterns_project/ResidentManagement.dart';
import 'package:design_patterns_project/residentList.dart';
import 'package:design_patterns_project/roomAssigner.dart';
import 'package:design_patterns_project/signup/signuppage.dart';
import 'package:flutter/material.dart';
import 'login/loginpage.dart';

import 'Manager/WorkerManager.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // WorkerManager workerManager = WorkerManager();
    // Incometracker incometracker = Incometracker();
    // Roommonitor roommonitor = Roommonitor();
    // Residentviewer residentviewer = Residentviewer();
    // Manager manager = Manager(
    //     workerManager: workerManager,
    //     incomeTracker: incometracker,
    //     roomMonitor: roommonitor,
    //     residentViewer: residentviewer);
    ResidentManagement residentManagement = ResidentManagement();
    RoomAssigner roomAssigner = RoomAssigner();
    Receptionist receptionist = Receptionist(residentManagement, roomAssigner);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //title: 'Firebase Sign Up',
      home: ResidentListPage(receptionist: receptionist),
    );
  }
}
