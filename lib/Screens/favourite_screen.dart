import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_state_management/Provider/favourite_class.dart';

class FavouriteWidget extends StatefulWidget {
  const FavouriteWidget({super.key});

  @override
  State<FavouriteWidget> createState() => _FavouriteWidgetState();
}

class _FavouriteWidgetState extends State<FavouriteWidget> {
  @override
  Widget build(BuildContext context) {
    print('build');

    final favouriteProvider =
        Provider.of<FavouriteClass>(context, listen: false);
    return Scaffold(
        appBar: AppBar(
          title: Text('Favourite Screen'),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: ListView.builder(
          itemCount: 100,
          itemBuilder: (context, index) {
            return Consumer<FavouriteClass>(builder: (context, value, child) {
              print('build2');

              return ListTile(
                onTap: () {
                  if (value.getWishlistItems.contains(index)) {
                    value.removeItem(index);
                  } else {
                    value.addItem(index);
                  }
                },
                title: Text('Item $index'),
                trailing: value.getWishlistItems.contains(index)
                    ? Icon(Icons.favorite)
                    : Icon(Icons.favorite_border_outlined),
              );
            });
          },
        ));
  }
}
