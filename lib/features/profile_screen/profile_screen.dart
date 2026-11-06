import 'package:e_commerce/config/routes.dart';
import 'package:e_commerce/core/utils/app_images.dart';
import 'package:flutter/material.dart';
import '../../core/utils/app_colors.dart';
import '../tabs/whilist/favorite_tab.dart';
import '../tabs/home/home_tab.dart';
import '../tabs/search/search_tab.dart';
import '../tabs/setting/setting_tab.dart';

class ProfileScreen extends StatefulWidget
{
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  int selectedIndex = 0;
  List<Widget> tabs = [
    HomeTab(), FavoriteTab(),SearchTap(), SettingTab()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
            canvasColor: AppColors.whiteColor
        ),
        child: BottomAppBar(
          padding: EdgeInsets.zero,
          shape: CircularNotchedRectangle(),
          notchMargin: 4,
          child: BottomNavigationBar(
              currentIndex: selectedIndex,
              onTap: (index)
              {
                selectedIndex = index;
                setState(() {});
              },
              items: [
                buildBottomNavigationBar(
                    index: 0,
                    iconSelectedName: AppImages.homeIcon,
                    label: "Home",),
                buildBottomNavigationBar(
                    index: 1,
                    iconSelectedName: AppImages.favoriteIcon,
                   label: "Wishlist",),
                buildBottomNavigationBar(
                  index: 2,
                  iconSelectedName: AppImages.searchIcon,
                  label: "Search",),
                buildBottomNavigationBar(
                  index: 3,
                  iconSelectedName: AppImages.settingIcon,
                  label: "Setting",),
              ]
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Icon(Icons.shopping_cart_outlined,size: 30,color: AppColors.blackColor,),),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: tabs[selectedIndex],
    );
  }

  BottomNavigationBarItem buildBottomNavigationBar({required int index,required String iconSelectedName,required String label})
  {
    return BottomNavigationBarItem(
        icon: ImageIcon(AssetImage(iconSelectedName)),
        label: label,
    );
  }
}
