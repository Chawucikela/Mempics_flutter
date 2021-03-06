import 'package:flutter/cupertino.dart';

class MemAvatar extends StatefulWidget {
  final double width;
  final double height;
  final EdgeInsetsGeometry margin;
  final EdgeInsetsGeometry padding;
  final BoxBorder border;
  final String inputUrl;
  final bool isOnline;
  final bool isOval;

  MemAvatar(
    this.inputUrl, {
    this.width,
    this.height,
    this.margin,
    this.padding,
    this.border,
    this.isOnline,
    this.isOval = true,
  });

  @override
  State<StatefulWidget> createState() {
    return MemAvatarState();
  }
}

class MemAvatarState extends State<MemAvatar> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      height: widget.height,
      margin: widget.margin,
      padding: widget.padding,
      decoration: BoxDecoration(
        border: widget.border,
        shape: widget.isOval ? BoxShape.circle : BoxShape.rectangle,
      ),
      child: ClipOval(
        child: FadeInImage.assetNetwork(
          fit: BoxFit.cover,
          placeholder: 'res/image/no_avatar.png',
          image: widget.inputUrl,
          imageErrorBuilder: (context, error, stackTrace) {
            return Image.asset('res/image/no_avatar.png');
          },
        ),
      ),
      // child: ClipOval(
      //   child: FadeInImage(
      //     fit: BoxFit.cover,
      //     placeholder: AssetImage('res/image/no_avatar.png'),
      //     image: NetworkImage(widget.inputUrl, headers: {}),
      //   ),
      // ),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }
}
