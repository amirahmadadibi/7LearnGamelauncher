import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff1E1E1E),
        appBar: AppBar(
          toolbarHeight: 105,
          backgroundColor: Colors.transparent,
          elevation: 0,
          flexibleSpace: Container(
            height: 60,
            margin:
                const EdgeInsets.only(top: 30, bottom: 35, left: 25, right: 25),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(34),
              color: Color(0xff1AFFFFFF),
            ),
            child: Row(
              children: [
                const Expanded(
                    child: Padding(
                  padding: EdgeInsets.only(left: 12),
                  child: TextField(
                    cursorColor: Colors.white,
                    decoration: InputDecoration.collapsed(
                      hintText: "Search",
                      hintStyle: TextStyle(color: Colors.white),
                      border: InputBorder.none,
                    ),
                  ),
                )),
                Image.asset('assets/images/icon_search.png'),
                SizedBox(
                  width: 8,
                )
              ],
            ),
          ),
        ),
        body: Center(child: Text('7Learn')),
      ),
    );
  }
}
