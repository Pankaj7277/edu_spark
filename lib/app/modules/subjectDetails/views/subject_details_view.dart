import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../controllers/subject_details_controller.dart';
import 'package:easy_stepper/easy_stepper.dart';

class SubjectDetailsView extends GetView<SubjectDetailsController> {
  final String chapter;
  SubjectDetailsView({required this.chapter, super.key});

  final int activeStep = 0;
  final int activeStep2 = 0;
  final int reachedStep = 0;
  final int upperBound = 5;
  final double progress = 0.2;
  final double lineLength = 10;
  final  Set<int> reachedSteps = <int>{0, 2, 4, 5};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(chapter),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(
                height: 100.h,
                width: double.infinity,
                child: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Dummy Text"),
              ),
              Expanded(
                child: ListView.builder(
                    itemCount: 10,
                    shrinkWrap: true,
                    physics: ScrollPhysics(),
                    itemBuilder: (context, index) {
                      return ExpansionTile(title: Text("Title Here"));
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
