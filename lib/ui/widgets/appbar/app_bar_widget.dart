import 'package:control_speding_2/utils/core/app_gradients.dart';
import 'package:control_speding_2/utils/core/app_text_styles.dart';
import 'package:flutter/material.dart';

class AppBarWidget extends PreferredSize {
AppBarWidget({Key? key}):super(key: key,
  preferredSize: const Size.fromHeight(200),

  child: Container(
      height: 120,
    decoration: const BoxDecoration(
      gradient: AppGradients.linear
    ),
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("Gastos", style: AppTextStyles.title,),
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: const DecorationImage(

                image: NetworkImage(
                  "https://avatars.githubusercontent.com/u/43302823?v=4"
                )
              )
            ),
          )
        ],
      ),
    ),
  ),
);

}
