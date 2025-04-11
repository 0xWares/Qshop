import 'package:dynamic_height_grid_view/dynamic_height_grid_view.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:qshop/widgets/products/product_widget.dart';
import 'package:shimmer/shimmer.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  late TextEditingController searchController;
  @override
  void initState() {
    // TODO: implement initState
    searchController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        backgroundColor: const Color(0xFF1E201E),
        appBar: AppBar(
          leading: Image.asset("assets/images/bag/shopping_cart.png"),
          title: Shimmer.fromColors(
            baseColor: const Color.fromARGB(255, 64, 120, 241),
            highlightColor: const Color.fromARGB(255, 198, 226, 199),
            child: const Text(
              'Search',
              style: TextStyle(
                color: Colors.teal,
                fontWeight: FontWeight.bold,
                fontSize: 35,
              ),
            ),
          ),
          backgroundColor: Colors.transparent,
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 0),
                  child: TextField(
                    controller: searchController,
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.all(10),
                      filled: true,
                      fillColor: const Color.fromARGB(255, 145, 148, 145),
                      hintText: 'Search',
                      hintStyle: const TextStyle(
                        color: Color.fromARGB(179, 84, 139, 211),
                      ),
                      prefixIcon: const Icon(
                        IconlyBroken.search,
                        color: Colors.blueAccent,
                      ),
                      suffixIcon: GestureDetector(
                        onTap: () {
                          setState(() {
                            searchController.clear();
                          });
                        },
                        child: const Icon(
                          IconlyBroken.close_square,
                          color: Color.fromARGB(179, 255, 2, 2),
                        ),
                      ),

                      border: const OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 0, left: 5, right: 5),
                    child: DynamicHeightGridView(
                      mainAxisSpacing: 12,
                      crossAxisSpacing: 12,
                      builder: (context, index) {
                        return const ProductWidget();
                      },
                      itemCount: 200,
                      crossAxisCount: 2,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
