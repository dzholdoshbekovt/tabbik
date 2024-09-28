import 'package:flutter/material.dart';
import 'package:theme/fonts/app_fonts.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    this.title,
    this.suffixIcon,
    required this.onTap,
  });

  final String? title;
  final IconData? suffixIcon;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ButtonStyle(
        maximumSize: const MaterialStatePropertyAll(Size(500, 58)),
        fixedSize: const MaterialStatePropertyAll(Size(500, 58)),
        elevation: MaterialStateProperty.all(0),
        shape: MaterialStateProperty.all(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(16))),
        //TODO change to token
        backgroundColor:
            MaterialStateProperty.resolveWith((i) => const Color(0xFF118A92)),
        foregroundColor:
            MaterialStateProperty.resolveWith((i) => const Color(0x0fffffff)),
        overlayColor:
            MaterialStateProperty.all(const Color.fromARGB(255, 28, 159, 168)),
        textStyle: MaterialStateProperty.all(AppFonts.font.mBold),
      ),
      child: Row(
        children: [
          if (suffixIcon != null)
            Icon(
              suffixIcon,
              color: Colors.white,
            ),
          const SizedBox(width: 16),
          if (title != null)
            Text(
              title!,
              style: AppFonts.font.lBold.copyWith(color: Colors.white),
            ),
        ],
      ),
    );
    // Material(
    //   color: const Color(0xFF118A92),
    //   borderRadius: BorderRadius.circular(18),
    //   child: InkWell(
    //     borderRadius: BorderRadius.circular(18),
    //     onTap: onTap,
    //     child: Container(
    //       height: 56,
    //       padding: const EdgeInsets.symmetric(horizontal: 30),
    //       decoration: BoxDecoration(
    //         //TODO change to token
    //         color: const Color(0xFF118A92),
    //         borderRadius: BorderRadius.circular(18),
    //         boxShadow: [
    //           BoxShadow(
    //             offset: const Offset(4, 6),
    //             blurRadius: 24,
    //             color: Colors.black.withOpacity(0.25),
    //             spreadRadius: 0,
    //             blurStyle: BlurStyle.normal,
    //           )
    //         ],
    //       ),
    //       child: Row(
    //         children: [
    //           if (suffixIcon != null)
    //             Icon(
    //               suffixIcon,
    //               color: Colors.white,
    //             ),
    //           const SizedBox(width: 16),
    //           if (title != null)
    //             Text(
    //               title!,
    //               style: AppFonts.font.lBold.copyWith(color: Colors.white),
    //             ),
    //         ],
    //       ),
    //     ),
    //   ),
    // );
  }
}
