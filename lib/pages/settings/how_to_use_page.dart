import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

import '../../utils/colors.dart';


class HowToUsePage extends StatefulWidget {
  const HowToUsePage({Key? key}) : super(key: key);

  @override
  State<HowToUsePage> createState() => _HowToUsePageState();
}

class _HowToUsePageState extends State<HowToUsePage> {
  late final VideoPlayerController _controller;
  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.network("https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4")
    ..addListener(() => setState(() {})) // update video if later playing
    ..setLooping(true)
     ..initialize().then((_) => _controller.play() );
  }
  @override
  void dispose() {
    // clean if the widget destroy
    super.dispose();
    _controller.dispose();

  }
  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData;
    queryData = MediaQuery.of(context);
    double largeur = queryData.size.width;
    double hauteur = queryData.size.height;
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Column(
        children: [
          Container(
            alignment: Alignment.topLeft,
            margin: EdgeInsets.only(top: 20, left: 20),
            child: Icon(Icons.arrow_back, color: Colors.white, size: 36,),),

          Container(
            margin: EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0),
            width: largeur,
            height: hauteur / 6.5,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30.0),
              color: AppColors.backgroundButtonSettingDisabledColor,
            ),
            child: Padding(padding: EdgeInsets.only(left: 20, top: 25.0),
              child: Text("Settings", style: TextStyle(color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),),
            ),
          ),
          Container(
              margin: EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0),
              width: largeur,
              height: hauteur / 4,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30)
            ),
             child : _controller.value.isInitialized 
                ? AspectRatio(
                 aspectRatio: _controller.value.aspectRatio,
                 child: VideoPlayer(_controller),)
                 : Container(
                             height: 200 ,
                              child:  Center ( child:  CircularProgressIndicator() ,),
             )

           

          ),

          Container(alignment: Alignment.topLeft,
            child: Padding(padding: EdgeInsets.all(15),
              child: Text("About us :",
                style: TextStyle(color: Colors.white,
                    fontSize: 19,
                    fontWeight: FontWeight.bold),),),),

          Padding(padding: EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              'making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like)'
              , style: TextStyle(color: Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.normal),),)
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Wrap the play or pause in a call to `setState`. This ensures the
          // correct icon is shown.
          setState(() {
            // If the video is playing, pause it.
            if (_controller.value.isPlaying) {
              _controller.pause();
            } else {
              // If the video is paused, play it.
              _controller.play();
            }
          });
        },
        // Display the correct icon depending on the state of the player.
        child: Icon(
          _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
        ),
      ),
    );
  }

}
