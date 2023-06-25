import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:game_laucher/searchBloc/search_bloc.dart';
import 'package:game_laucher/searchBloc/search_event.dart';
import 'package:game_laucher/searchBloc/search_state.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xff1E1E1E),
        appBar: AppBar(
          toolbarHeight: 105,
          backgroundColor: Colors.transparent,
          elevation: 0,
          automaticallyImplyLeading: false,
          flexibleSpace: Container(
            height: 60,
            margin:
                const EdgeInsets.only(top: 30, bottom: 35, left: 25, right: 25),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(34),
              color: const Color(0xff1AFFFFFF),
            ),
            child: Row(
              children: [
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.only(left: 12),
                  child: TextField(
                    controller: controller,
                    cursorColor: Colors.white,
                    decoration: const InputDecoration.collapsed(
                      hintText: "Search",
                      hintStyle: TextStyle(color: Colors.white),
                      border: InputBorder.none,
                    ),
                  ),
                )),
                GestureDetector(
                  onTap: () {
                    context.read<SearchBloc>().add(SearchRequested(controller.text));
                  },
                  child: Image.asset('assets/images/icon_search.png'),
                ),
                const SizedBox(
                  width: 8,
                )
              ],
            ),
          ),
        ),
        body: BlocBuilder<SearchBloc, SearchState>(builder: (context, state) {
          return const Text('test');
        }),
      ),
    );
  }
}
