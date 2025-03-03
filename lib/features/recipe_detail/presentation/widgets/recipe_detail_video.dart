import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:recipe_app/core/core.dart';
import 'package:recipe_app/features/categories_detail/presentation/widgets/recipe_icon_button_container.dart';
import 'package:video_player/video_player.dart';

class RecipeDetailVideo extends StatefulWidget {
  const RecipeDetailVideo({
    super.key,
    required this.videoUrl,
  });

  final String videoUrl;

  @override
  State<RecipeDetailVideo> createState() => _RecipeDetailVideoState();
}

class _RecipeDetailVideoState extends State<RecipeDetailVideo> {
  late final VideoPlayerController controller;

  @override
  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft,
    ]);

    controller = VideoPlayerController.networkUrl(Uri.parse(widget.videoUrl));
    controller.initialize().then(
          (value) => setState(() {
        controller.play();
      }),
    );
  }

  void dispose()
  {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp
    ]);
    controller.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AspectRatio(
          aspectRatio: controller.value.aspectRatio,
            child: Stack(children: [
              GestureDetector(
                  onTap: () {
                    if(controller.value.isPlaying) {
                      controller.pause();
                    }else{
                      controller.play();
                    }
                    setState(() {});
                  },
                  child: VideoPlayer(controller)),
              Positioned(
                bottom: 40,
                  left: 0,
                  right: 0,
                  child: SizedBox(
                    height: 15,
                      child: VideoProgressIndicator(controller, allowScrubbing: true),
                  )
              ),
              if(!controller.value.isPlaying)
                Center(
                  child: RecipeIconButtonContainer(
                  image: 'assets/svg/play.svg',
                  callback: (){
                    controller.play();
                    setState(() {});
                  },
                  iconWidth: 30,
                  iconHeight: 40,
                containerWidth: 74,
                containerHeight: 74,
                containerColor: AppColors.redPinkMain,
                  iconColor: Colors.white,
              ),
              ),
              Positioned(
                bottom: 60,
                left: 0,
                right: 0,
                child: Row(children: [
                  IconButton(
                      onPressed: (){
                        controller.seekTo(controller.value.position - Duration(seconds: 5));
                      },
                      icon: Icon(Icons.arrow_back),
                  ),
                  IconButton(onPressed: (){
                    controller.seekTo(controller.value.position + Duration(seconds: 5));
                  },
                    icon: Icon(Icons.arrow_forward),
                  ),
                  Text(controller.value.duration.inMinutes.toString())
                ],
                ),
              )
            ],
            ),
        ),
      ),
    );
  }
}

