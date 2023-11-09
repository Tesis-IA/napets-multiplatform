import 'package:flutter/material.dart';

class ItemCard extends StatefulWidget {
  const ItemCard({
    super.key,
    required this.text,
    required this.linkAssets,
    this.onTap,
  });
  final String text;
  final String linkAssets;
  final void Function()? onTap;

  @override
  State<ItemCard> createState() => _ItemCardState();
}

class _ItemCardState extends State<ItemCard> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return InkWell(
      onTap: widget.onTap,
      child: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          color: Color(0xFFffffff),
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 15.0,
              spreadRadius: 5.0,
              offset: Offset(
                5.0,
                5.0,
              ),
            )
          ],
        ),
        height: size.height * 0.18,
        width: size.width * 0.25,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Image(
                height: size.height * 0.10,
                width: size.width * 0.18,
                image: AssetImage(widget.linkAssets)),
            Text(
              widget.text,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
