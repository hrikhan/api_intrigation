import 'package:flutter/material.dart';

class ShimmarEffect extends StatelessWidget {
  const ShimmarEffect({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      itemCount: 10,
      itemBuilder: (BuildContext context, int index) {
        return  Container(
           height: 120,
           width: 180,
           margin: EdgeInsets.all(8),
           padding: EdgeInsets.all(16),
           decoration: BoxDecoration(
             borderRadius: BorderRadius.circular(8),
             color: Colors.grey[50],
             boxShadow: [
               BoxShadow(
                 color: Colors.black.withOpacity(0.3),
                 spreadRadius: 2,
                 offset: Offset(0, 3),
               ),
             ],
            
             
           ),
        );
      },
    );
  }
}