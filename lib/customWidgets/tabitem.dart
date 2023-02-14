
import "package:flutter/material.dart";


class TabItem extends StatelessWidget {

  final IconData icon;
  final bool isSelected;
  final Function()? onIconTap;

  const TabItem ({super.key, required this.icon, required this.isSelected, required this.onIconTap });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      
      onTap: onIconTap,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(15.0, 22.0, 15.0,16),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color:  isSelected ?Color(0xFFdee5f1) : Color(0x00000000),),
          padding: EdgeInsets.all(4),
          child: Icon(icon, color: Color(0xFF0c54fc),)  
        ),
      ),
    );
  }
}