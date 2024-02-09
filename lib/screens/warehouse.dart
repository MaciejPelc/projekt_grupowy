import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:projekt_grupowy/auth_components/utlis/text_utils.dart';
import 'package:projekt_grupowy/bloc/auth_bloc/auth_bloc.dart';
import 'package:projekt_grupowy/bloc/productsbloc/products_bloc.dart';
import 'package:projekt_grupowy/widgets/bacground.dart';

class Warehouse extends StatefulWidget {
  Warehouse({
    super.key,
    required this.authBloc,
    required this.productsBloc,
  });
  AuthBloc authBloc = AuthBloc();
  ProductsBloc productsBloc = ProductsBloc();
  static const String routeName = "/warehouse";

  @override
  State<Warehouse> createState() => _WarehouseState();
}

class _WarehouseState extends State<Warehouse> {
  List<String> testList = [
    "test1",
    "test2",
    "test3",
    "test4",
    "test1",
    "test2",
    "test3",
    "test4",
    "test1",
    "test2",
    "test3",
    "test4",
    "test1",
    "test2",
    "test3",
    "test4",
    "test1",
    "test2",
    "test3",
    "test4",
    "test1",
    "test2",
    "test3",
    "test4",
  ];

  @override
  void initState() {
    super.initState();
    BlocProvider.of<ProductsBloc>(context).add(
      GetProducts(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Background(
      content: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Container(
              margin: const EdgeInsets.only(
                  top: 52.0, left: 16, right: 16, bottom: 16),
              constraints: const BoxConstraints.expand(),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white),
                borderRadius: BorderRadius.circular(15),
                color: Colors.black.withOpacity(0.1),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaY: 5, sigmaX: 5),
                  child: CustomScrollView(
                    slivers: [
                      const WarehouseAppBar(),
                      SliverList(
                        delegate: SliverChildListDelegate(
                          List.generate(
                            testList.length,
                            (index) {
                              return Text(
                                testList[index],
                              );
                            },
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class WarehouseAppBar extends StatelessWidget {
  const WarehouseAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      centerTitle: true,
      flexibleSpace: FlexibleSpaceBar(
        title: TextUtil(
          text: "Warehouse",
          size: 40,
        ),
      ),
      backgroundColor: Colors.black.withOpacity(0.3),
      leading: IconButton(
        icon: const Icon(Icons.logout),
        onPressed: () => BlocProvider.of<AuthBloc>(context).add(
          AuthLogout(),
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.settings),
        )
      ],
    );
  }
}
