import 'package:dicoding/const.dart';
import 'package:dicoding/helper.dart';
import 'package:dicoding/widgets/image_asset.dart';
import 'package:flutter/material.dart';
import '../widgets/main_button.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int courseSelected = 0;

  get _mainButton => Container(
        margin: const EdgeInsets.fromLTRB(16, 0, 16, 16),
        height: 50,
        child: MainButton(
          onTap: _info,
          text: "Mulai",
        ),
      );

  get _appBarTitle => const Text(
        "Learning Path",
        style: TextStyle(
          color: primaryColor,
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
      );

  Widget get _boardLearningPath {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: primaryColor.withOpacity(.1),
      ),
      width: width(context),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: _boardStructures,
        ),
      ),
    );
  }

  get _boardStructures {
    return [
      Text(
        "${courses[courseSelected]['name']}",
        style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
      const SizedBox(height: 8),
      Text(
        "${courses[courseSelected]['class']} kelas",
        style: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.bold,
        ),
      ),
      const SizedBox(height: 8),
      Text(
        "${courses[courseSelected]['desc']}",
        style: const TextStyle(
          fontSize: 14,
        ),
        textAlign: TextAlign.justify,
      ),
    ];
  }

  List<Widget> get _contents {
    return [
      const Text(
        "Learning path akan membantu Anda dalam belajar di Academy dengan kurikulum yang dibangun bersama pelaku industri ternama.",
        textAlign: TextAlign.center,
      ),
      const SizedBox(height: 16),
      Row(
        children: curriculum.map((e) => ImageAsset("$partnerPath$e")).toList(),
      ),
      const SizedBox(height: 8),
      Row(
          children:
              learningPath.map((e) => ImageAsset("$partnerPath$e")).toList()),
      const SizedBox(height: 8),
      Wrap(spacing: 8, children: courses.map((e) => _selectBtn(e)).toList()),
      const SizedBox(height: 8),
      _boardLearningPath,
      const SizedBox(height: 8),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: _appBarTitle,
        elevation: 0,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: ListView(
            children: _contents,
          ),
        ),
      ),
      bottomNavigationBar: _mainButton,
    );
  }

  void _info() {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            title: const Text("Informasi"),
            content: const Text("Coming Soon!"),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Text(
                  "OK",
                  style: TextStyle(color: primaryColor),
                ),
              ),
            ],
          );
        });
  }

  Widget _selectBtn(Map<String, Object> e) {
    return TextButton(
      style: TextButton.styleFrom(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          backgroundColor: courses[courseSelected] != e
              ? primaryColor.withOpacity(.5)
              : primaryColor),
      onPressed: () {
        final i = courses.indexWhere((w) => w == e);
        setState(() {
          courseSelected = i;
        });
      },
      child: Text("${e['name']}"),
    );
  }
}
