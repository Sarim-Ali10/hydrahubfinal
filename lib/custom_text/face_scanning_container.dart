import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../constants/size_config.dart';
import 'colors.dart';

class FaceScanningContainer extends StatelessWidget {
  const FaceScanningContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

   // final ImagePickerService imagePickerService = ImagePickerService();

    return Container(
      width: SizeConfig.screenWidth * 1,
      height: SizeConfig.screenHeight * 0.3,
      alignment: Alignment.bottomLeft,
      padding: const EdgeInsets.only(left: 20,bottom: 40,right: 20),
      margin: const EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
          color: primaryColor,
          borderRadius: BorderRadius.circular(14)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
              width: SizeConfig.screenWidth * 0.4,
              child: Text('Scan Your Face and Get Solutions',style: TextStyle(fontSize: SizeConfig.textMultiplier * 2, fontWeight: FontWeight.w600,color: secondaryColor),)),

          GestureDetector(
            onTap: (){
              showDialog<void>(
                context: context,
                // false = user must tap button, true = tap outside dialog
                builder: (BuildContext dialogContext) {
                  return AlertDialog(
                    backgroundColor: secondaryColor,
                    title: Text('Face Scanner',style: TextStyle(fontSize: SizeConfig.textMultiplier * 2, fontWeight: FontWeight.w600,color: primaryColor),),
                    content: Text('Scan Your Face via',style: TextStyle(fontSize: SizeConfig.textMultiplier * 1.4, fontWeight: FontWeight.w400,color: primaryColor),),
                    actions: <Widget>[
                      TextButton(
                        child: const Text('Gallery'),
                        onPressed: () {
                       //   imagePickerService.pickImageGallery();// Dismiss alert dialog
                        },
                      ),
                      TextButton(
                        child: const Text('Camera'),
                        onPressed: () {
                        //  imagePickerService.pickImageCamera(); // Dismiss alert dialog
                        },
                      ),
                    ],
                  );
                },
              );
            },
            child: Container(
              decoration: BoxDecoration(
                  color: secondaryColor,
                  borderRadius: BorderRadius.circular(20)
              ),
              padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 8),
              child: Row(
                children: [
                  const Icon(Iconsax.user,size: 14,),
                  SizedBox(width: SizeConfig.widthMultiplier * 2,),
                  Text('Scan',style: TextStyle(fontSize: SizeConfig.textMultiplier * 1.4, fontWeight: FontWeight.w800,color: primaryColor)),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}