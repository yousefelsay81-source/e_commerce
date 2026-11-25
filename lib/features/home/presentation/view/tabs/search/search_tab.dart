import 'package:e_commerce/core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import '../../../../../../core/components/custom_text_filed.dart';
import '../../../../../../core/utils/app_text.dart';

class SearchTap extends StatefulWidget
{
  const SearchTap({super.key});

  @override
  State<SearchTap> createState() => _SearchTapState();
}

class _SearchTapState extends State<SearchTap> {

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text(AppText.search, style: AppStyles.semiBold18Black,),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: height * .02, horizontal: width * .02),
        child: Column(
          children: [
            SizedBox(
              height: height * .07,
                child: CustomTextFiled(labelText: AppText.searchProduct,
                  suffixIcon: Icon(Icons.mic),
                )),

          ],
        ),
      ),
    );
  }
}