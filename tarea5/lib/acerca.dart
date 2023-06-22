import 'package:flutter/material.dart';
import 'dart:async';
import 'package:video_player/video_player.dart';

class Acerca extends StatelessWidget {
  const Acerca({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const AcercaDe();
    // return const AcercaDe();
  }
}

class AcercaDe extends StatefulWidget {
  const AcercaDe({super.key});

  @override
  State<AcercaDe> createState() => _AcercaDeState();
}

class _AcercaDeState extends State<AcercaDe> {
  late VideoPlayerController _videoCtrl;
  late Future<void> _initializeVideoPlayerFuture;

  @override
  void initState() {
    _videoCtrl = VideoPlayerController.asset("assets/images/playlist.mp4");

    _initializeVideoPlayerFuture = _videoCtrl.initialize();
    super.initState();
  }

  @override
  void dispose() {
    _videoCtrl.dispose();
    super.dispose();
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: _initializeVideoPlayerFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return Column(
              children: [
                AspectRatio(
                  aspectRatio: _videoCtrl.value.aspectRatio,
                  child: VideoPlayer(_videoCtrl),
                ),
                const Center(
                  child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'The Playlist',
                        style: TextStyle(fontSize: 30, color: Colors.white),
                      )),
                ),
                const Center(
                  child: Align(
                      alignment: Alignment.centerLeft,
                      child: Row(
                        children: [
                          Text(
                            'Año: 2022',
                            style: TextStyle(fontSize: 12, color: Colors.white),
                          ),
                          SizedBox(
                              width:
                                  16), // Adjust the spacing between the images
                          Text(
                            'Productor: Eiffel Mattsson',
                            style: TextStyle(fontSize: 12, color: Colors.white),
                          )
                        ],
                      )),
                ),
                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        if (_videoCtrl.value.isPlaying) {
                          _videoCtrl.pause();
                        } else {
                          _videoCtrl.play();
                        }
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.black,
                      backgroundColor: Colors.white,
                      textStyle: const TextStyle(fontSize: 18),
                      padding: const EdgeInsets.symmetric(vertical: 16),
                    ),
                    child: Icon(
                      _videoCtrl.value.isPlaying
                          ? Icons.pause
                          : Icons.play_arrow,
                    ),
                  ),
                )
              ],
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
      backgroundColor: Colors.black,
    );
  }
}
