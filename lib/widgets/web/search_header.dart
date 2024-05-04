import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_clone/colors.dart';
import 'package:google_clone/screens/search_screen.dart';

class SearchHeader extends StatelessWidget {
  const SearchHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: size.width >=786 ?  const EdgeInsets.only(top: 25): const EdgeInsets.only(top: 40),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Row(
              children: [
                Padding(
                  padding: size.width >= 768 ? const EdgeInsets.only(left: 28, right: 15, top: 5) : const EdgeInsets.only(left: 10, right: 0, top: 5),
                  child: Image.asset(
                    'assets/images/google-logo.png',
                    height: 30,
                    width: 92,
                  ),
                ),
                const SizedBox(
                  width: 25,
                ),
                Container(
                  width: size.width * 0.60,
                  decoration: BoxDecoration(
                      color: searchColor,
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(
                        color: searchColor,
                      )),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20, bottom: 5),
                    child: TextFormField(                    
                      onFieldSubmitted: (query) {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => SearchScreen(
                            searchQuery: query,
                            start: '0',
                          ),
                        ));
                      },
                      style: const TextStyle(fontSize: 16),
                      textAlignVertical: TextAlignVertical.center,
                      decoration: InputDecoration(
                          suffixIcon: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Container(
                              constraints: const BoxConstraints(maxWidth: 150),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  SvgPicture.asset('assets/images/mic-icon.svg',
                                      height: 20, width: 20),
                                  const SizedBox(
                                    width: 8,
                                  ),
                                  const Icon(
                                    Icons.search,
                                    color: blueColor,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
