import 'package:flutter/material.dart';

class SafeHome extends StatelessWidget {
  const SafeHome({Key? key}) : super(key: key);

  showModalSafeHome(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return Container(
          height: MediaQuery.of(context).size.height / 1.4,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => showModalSafeHome(context),
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          children: [
            Expanded(
              child: Column(
                children: [
                  ListTile(
                    title: Text("send Location"),
                    subtitle: Text("Share Location"),
                  ),
                ],
              ),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset('assets/route.jpg'),
            ),
          ],
        ),
      ),
    );
  }
}

