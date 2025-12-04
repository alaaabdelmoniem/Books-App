import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustomNewBookItem extends StatefulWidget {
  const CustomNewBookItem({super.key, required this.imageUrl});
  final String imageUrl;

  @override
  State<CustomNewBookItem> createState() => _CustomNewBookItemState();
}

class _CustomNewBookItemState extends State<CustomNewBookItem>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  @override
  void initState() {
    super.initState();

    initFadeAnimation();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  void initFadeAnimation() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 600),
    )..repeat(reverse: true);
  }

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadiusGeometry.circular(8),
      child: AspectRatio(
        aspectRatio: 2.5 / 4,
        child: CachedNetworkImage(
          fit: BoxFit.fill,
          imageUrl: widget.imageUrl,
          placeholder: (context, url) => FadeTransition(
            opacity: animationController,
            child: Container(color: Colors.grey.shade300),
          ),
          errorWidget: (context, url, error) => const Icon(Icons.error),
        ),
      ),
    );
  }
}
