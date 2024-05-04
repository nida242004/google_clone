import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_clone/colors.dart';
import 'package:google_clone/screens/search_screen.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Image.asset(
              'assets/images/google-logo.png',
              height: size.height * 0.10,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            width: size.width > 768 ? size.width * 0.4 : size.width * 0.9,
            //height: 45,
            child: TextFormField(
              onFieldSubmitted: (query) {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => SearchScreen(
                      searchQuery: query,
                      start: '0',
                    ),
                  ),
                );
              },
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                border: const OutlineInputBorder(
                  borderSide: BorderSide(color: searchBorder),
                  borderRadius: BorderRadius.all(
                    Radius.circular(30),
                  ),
                ),
                prefixIcon: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SvgPicture.asset(
                    'assets/images/search-icon.svg',
                    color: searchBorder,
                    width: 1,
                    height: 1,
                  ),
                ),
                suffixIcon: Padding(
                  padding: const EdgeInsets.all(8),
                  child: SvgPicture.asset(
                    'assets/images/mic-icon.svg',
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
