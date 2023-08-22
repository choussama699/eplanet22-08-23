

import 'package:flutter/material.dart';

import '../presentation/ressources/color_manager.dart';
import '../presentation/ressources/values_manager.dart';

final ButtonStyle buttonPrimary = ElevatedButton.styleFrom(
  shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(AppSize.s7_14))
            ),
      minimumSize: Size(AppSize.s345, AppSize.s56_32),
      backgroundColor: ColorManager.green,        
);


final ButtonStyle buttonAdmin = ElevatedButton.styleFrom(
  shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(AppSize.s7_14))
            ),
      minimumSize: Size(AppSize.s100, AppSize.s56_32),
      backgroundColor: ColorManager.green,     
);
     