import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:blend/global_provider.dart';

class PostingPlatformsPage extends StatelessWidget {
  var eachPlatform = <String>[
    "Instagram",
    "TikTok",
    "Youtube",
    "Snapchat",
    "X",
    "Facebook",
    "LinkedIn"
  ];
  var eachPlatformIcon = <IconData>[
    Icons.camera_alt_sharp,
    Icons.music_note,
    Icons.play_arrow_sharp,
    Icons.snapchat,
    Icons.cancel_presentation,
    Icons.facebook,
    Icons.language_sharp
  ];
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<GlobalProvider>(context);
    // var cur_platforms = appState.platforms;

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Title(
            color: Color(0xFFFFFFFF),
            child: Text(
              "Choose Platforms",
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          Divider(
            color: Colors.white,
            thickness: 3.0,
            indent: 12.0,
            endIndent: 12.0,
          ),
          Column(
            children: List.generate(
              eachPlatform.length,
              (index) {
                return MediaSelectionButton(eachPlatformIcon[index],
                    eachPlatform[index], provider.selectedPlatforms);
              },
            ),
          ),
          // adding a button group
          Container(
            margin: EdgeInsets.only(right: 0.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Spacer(),
                ElevatedButton(
                  child: Text('Next'),
                  onPressed: () {
                    print('We want to go next!');
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class MediaSelectionButton extends StatelessWidget {
  final IconData buttonIcon;
  final String label;
  final Set<String> selectedPlatforms;

  MediaSelectionButton(this.buttonIcon, this.label, this.selectedPlatforms);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        selectedPlatforms.add(label);
        print(selectedPlatforms);
      },
      child: Column(
        children: <Widget>[
          Container(
            margin:
                EdgeInsets.only(bottom: 10.0), // Adjust the margin as needed
            padding: EdgeInsets.only(left: 20.0, right: 10.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              gradient: LinearGradient(
                colors: [
                  const Color(0xFF3366FF),
                  const Color(0xFF00CCFF),
                ],
                begin: const FractionalOffset(0.0, 0.0),
                end: const FractionalOffset(1.0, 0.0),
                stops: [0.0, 1.0],
                tileMode: TileMode.clamp,
              ),
            ),
            child: ListTile(
              contentPadding:
                  EdgeInsets.all(0), // Remove default ListTile padding
              leading: Icon(buttonIcon),
              title: Text(label),
            ),
          ),
        ],
      ),
    );
  }
}
