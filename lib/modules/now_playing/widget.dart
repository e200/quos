import 'package:flutter/material.dart';
import 'package:quos/modules/music/model.dart';
import 'package:quos/theme.dart';
import 'package:quos/widgets.dart';

class QuosNowPlaying extends StatelessWidget {
  static const heroTag = 'PLAYING_NOW';

  const QuosNowPlaying({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final music = Music(
      title: 'Haka',
      artist: 'Wilson Kentura',
      art: 'assets/album1.jpg',
    );

    return Hero(
      tag: heroTag,
      child: SizedBox(
        height: 52,
        child: Material(
          color: const Color(0xFF282940),
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 7,
                ),
                child: Row(
                  children: [
                    Expanded(child: QuosMusicListTile(music: music)),
                    const _Buttons(),
                  ],
                ),
              ),
              const _QuosTrackProgress(),
            ],
          ),
        ),
      ),
    );
  }
}

class _Buttons extends StatelessWidget {
  const _Buttons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          padding: EdgeInsets.zero,
          color: iconButtonColor,
          icon: const Icon(Icons.play_arrow),
          onPressed: () {},
        ),
        IconButton(
          padding: EdgeInsets.zero,
          color: iconButtonColor,
          icon: const Icon(Icons.skip_next),
          onPressed: () {},
        ),
        IconButton(
          padding: EdgeInsets.zero,
          color: iconButtonColor,
          icon: const Icon(Icons.playlist_play),
          onPressed: () {},
        ),
      ],
    );
  }
}

class _QuosTrackProgress extends StatelessWidget {
  const _QuosTrackProgress({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Colors.black.withOpacity(.3),
          height: 2,
        ),
        Container(
          height: 2,
          width: 250,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xFF6063FE),
                Color(0xFFCF59C9),
                Color(0xFFFB826F),
              ],
            ),
          ),
        ),
      ],
    );
  }
}