import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:learn/utils/assets_path.dart';
import 'package:learn/utils/routes.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            color: Theme.of(context).canvasColor,
            child: Column(
              children: [
                DrawerHeader(
                  padding: const EdgeInsets.all(0),
                  decoration: BoxDecoration(color: Theme.of(context).canvasColor),
                  child: UserAccountsDrawerHeader(
                    margin: const EdgeInsets.all(0),
                    decoration: BoxDecoration(color: Theme.of(context).canvasColor),
                    accountName: Text(
                      "Kidsia App",
                      style: Theme.of(context)
                          .textTheme
                          .titleLarge
                          ?.copyWith(fontWeight: FontWeight.bold),
                    ),
                    accountEmail: Text(
                      "Темирлан Алик уулу",
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                    currentAccountPicture: const CircleAvatar(
                      backgroundImage: AssetImage("assets/images/solar/aktanakylai.jpg"),
                    ),
                  ),
                ),
                _buildListTile(
                  icon: Icons.home,
                  title: "Home",
                  onTap: () {
                    Navigator.pushReplacementNamed(context, AllRoutes.homeRoute);
                  },
                  context: context,
                ),
                _buildListTile(
                  icon: Icons.text_fields,
                  title: "A - Z",
                  onTap: () {
                    Navigator.pushNamed(context, AllRoutes.atozRoute);
                  },
                  context: context,
                ),
                _buildListTile(
                  icon: Icons.pest_control_rodent_outlined,
                  title: "Animals-Жаныбарлар",
                  onTap: () {
                    Navigator.pushNamed(context, AllRoutes.animalRoute);
                  },
                  context: context,
                ),
                _buildListTile(
                  icon: Icons.egg,
                  title: "Birds-Куштар",
                  onTap: () {
                    Navigator.pushNamed(context, AllRoutes.birdsRoute);
                  },
                  context: context,
                ),
                _buildListTile(
                  icon: Icons.cloud,
                  title: "Seasons",
                  onTap: () {
                    Navigator.pushNamed(context, AllRoutes.seasonRoute);
                  },
                  context: context,
                ),
                _buildListTile(
                  icon: Icons.pentagon_outlined,
                  title: "Shapes",
                  onTap: () {
                    Navigator.pushReplacementNamed(context, AllRoutes.shapesRoute);
                  },
                  context: context,
                ),
                _buildListTile(
                  icon: Icons.back_hand_rounded,
                  title: "Body parts",
                  onTap: () {
                    Navigator.pushNamed(context, AllRoutes.partsRoute);
                  },
                  context: context,
                ),
                _buildListTile(
                  icon: Icons.work,
                  title: "Occupations",
                  onTap: () {
                    Navigator.pushNamed(context, AllRoutes.occupationRoute);
                  },
                  context: context,
                ),
                _buildListTile(
                  icon: Icons.sunny,
                  title: "Solar System",
                  onTap: () {
                    Navigator.pushNamed(context, AllRoutes.solarRoute);
                  },
                  context: context,
                ),
                _buildListTile(
                  icon: Icons.palette,
                  title: "Colours",
                  onTap: () {
                    Navigator.pushNamed(context, AllRoutes.colourRoute);
                  },
                  context: context,
                ),
                _buildListTileSVG(
                  icon: AssetsPath.getFlowerImage(Flowers.flowerIcon),
                  title: "Flowers",
                  onTap: () {
                    Navigator.pushNamed(context, AllRoutes.flowerRoute);
                  },
                  context: context,
                ),
                _buildListTile(
                  icon: Icons.question_mark_outlined,
                  title: "About us",
                  onTap: () {
                    Navigator.pushNamed(context, AllRoutes.aboutRoute);
                  },
                  context: context,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildListTile({
    required BuildContext context,
    required IconData icon,
    required String title,
    required VoidCallback onTap,
  }) {
    return ListTile(
      leading: Icon(icon),
      title: Text(
        title,
        style: Theme.of(context).textTheme.bodyLarge,
      ),
      onTap: onTap,
    );
  }

  Widget _buildListTileSVG({
    required BuildContext context,
    required String icon,
    required String title,
    required VoidCallback onTap,
  }) {
    return ListTile(
      leading: SvgPicture.asset(
        icon,
        width: 24,
        height: 24,
      ),
      title: Text(
        title,
        style: Theme.of(context).textTheme.bodyLarge,
      ),
      onTap: onTap,
    );
  }
}
