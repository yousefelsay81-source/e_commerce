import 'package:flutter/material.dart';

class FavoriteTab extends StatefulWidget {
  const FavoriteTab({super.key});

  @override
  State<FavoriteTab> createState() => _FavoriteTabState();
}

class _FavoriteTabState extends State<FavoriteTab> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: CustomAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(
              height: 40,
              child: CustomTextFiled(
                prefixIcon: Icon(Icons.search),
                suffixIcon: Icon(Icons.mic),
                hintText: "Search any Product..",
                hintStyle: AppStyles.medium12Form,
              ),
            ),
            Row(
              children: [
                Text("52,082+ Iteams ",style: AppStyles.semiBold18Black),
                Spacer(),
                CustomFilterAndSort(text: "Sort", iconPath: Icons.swap_vert, onPressed: (){}),
                SizedBox(width: width*.02,),
                CustomFilterAndSort(text: "Filter", iconPath: Icons.filter_alt_outlined, onPressed: (){}),
              ],
            ),
            SizedBox(height: height * .02,),
            Expanded(
              child: MasonryGridView.builder(
                gridDelegate:
                SliverSimpleGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                ),
                itemCount: 20,
                mainAxisSpacing: 8,
                crossAxisSpacing: 8,
                itemBuilder: (context, index)
                {
                  return TopPicks(
                      imagePath: AppImages.blackWinterImage,
                      nameProduct: "Black Winter",
                      descProduct: "Autumn And Winter Casual\n cotton-padded jacket..."
                      , salary: "₹499",
                      view: 6890);
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
