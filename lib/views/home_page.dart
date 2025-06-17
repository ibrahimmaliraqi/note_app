import 'package:flutter/material.dart';
import 'package:note_app/constants.dart';
import 'package:note_app/widgets/add_note_buttons.dart';
import 'package:note_app/widgets/custom_appbar.dart';
import 'package:note_app/widgets/list_view_build.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: textFeildColor,
        onPressed: () {
          showModalBottomSheet(
            shape: RoundedRectangleBorder(
              borderRadius:
                  BorderRadiusGeometry.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
            ),
            context: context,
            builder: (context) {
              return AddNotesButton();
            },
          );
        },
        child: Icon(
          Icons.add,
          color: Colors.black,
          size: 30,
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 18,
          ),
          child: Column(
            children: [
              CutsomAppBar(
                title: "Notes",
                icon: Icons.search,
              ),
              Expanded(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(
                        vertical: 16,
                      ),
                  child: ListViewBuild(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
