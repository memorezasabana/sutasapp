// import 'package:flutter/material.dart';
// import 'package:video_player/video_player.dart';

// class VideoPlayerPage extends StatefulWidget {
//   const VideoPlayerPage({super.key});

//   @override
//   State<VideoPlayerPage> createState() => _VideoPlayerPageState();
// }

// class _VideoPlayerPageState extends State<VideoPlayerPage> {
//   late VideoPlayerController _controller;

//   @override
//   void initState() {
//     super.initState();
//     _controller = VideoPlayerController.asset('assets/video.mp4');
//     _controller.addListener(() {
//       if (_controller.value.position == _controller.value.duration) {
//         // When the video reaches the end, restart it.
//         _controller.seekTo(Duration(seconds: 0));
//       }
//     });
//     _controller.setLooping(true); // Set the video to loop.
//     _controller.initialize().then((_) {
//       setState(() {});
//     });
//   }

//   Widget build(BuildContext context) {
//     return Scaffold(
//       extendBodyBehindAppBar: true,
//       appBar: AppBar(
//         title: const Text("Page Video"),
//         backgroundColor: Colors.indigo,
//       ),
//       body: VideoPlayer(_controller),
//     );
//   }

//   void dispose() {
//     _controller.dispose();
//     super.dispose();
//   }
// }
