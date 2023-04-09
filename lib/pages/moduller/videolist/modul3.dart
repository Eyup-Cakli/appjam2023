import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class YoutubePage3 extends StatelessWidget {
  final List<String> _videoTitles = [
    'Video: 1 ',
    'Video: 2',
    'Video: 3',
    'Video: 4',
  ];
  final List<String> _videoIds = [
    'EDxPb77TnQY',
    'xGB4JXRLTEc',
    '4eK1bYTIpIY',
    'WYK0PZOIfSY',

  ];
  final List<String> _videoSubtitles = [
    'Kullanıcı Kazanımı & Büyüme Yöntemleri 1',
    'Kullanıcı Kazanımı & Büyüme Yöntemleri 2',
    'Kullanıcı Kazanımı & Büyüme Yöntemleri 3',
    'Kullanıcı Kazanımı & Büyüme Yöntemleri 4',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF4283F1),
        title: Text(
            'Youtube Video',
            style: TextStyle(
            fontFamily: 'Raleway',
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: _videoIds.length,
        itemBuilder: (BuildContext context, int index) {
          return Column(
            children: [
              SizedBox(height: 16.0),
              Text(
                _videoTitles[index],
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8.0),
              Text(
                _videoSubtitles[index], // burada özel altbaşlığı ekliyoruz
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8.0),
              ClipRRect(
                borderRadius: BorderRadius.circular(50.0),
                child: YoutubePlayer(
                  width: 385, // Genişliği burada ayarlayabilirsiniz// Yüksekliği burada ayarlayabilirsiniz
                  controller: YoutubePlayerController(
                    initialVideoId: _videoIds[index],
                    flags: YoutubePlayerFlags(
                      autoPlay: false,
                      mute: false,
                    ),
                  ),
                  showVideoProgressIndicator: true,
                  progressIndicatorColor: Colors.blueAccent,
                ),
              ),
              SizedBox(height: 16.0),
              Divider(
                color: Colors.grey,
                thickness: 1.0,
              ),
              SizedBox(height: 16.0),
            ],
          );
        },
      ),
    );
  }
}
