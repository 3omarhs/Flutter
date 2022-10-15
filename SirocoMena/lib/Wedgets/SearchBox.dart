import 'package:flutter/material.dart';

class SearchBox extends StatelessWidget {
  const SearchBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _controller = TextEditingController();
    return Container(
      width: MediaQuery.of(context).size.width-10,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: TextField(
          controller: _controller,
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(
                vertical: 15.0
            ),
            fillColor: Colors.white,
            filled: true,
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30.0),
                borderSide: const BorderSide(width: 0.8)
            ),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30.0),
                borderSide: BorderSide(width: 0.8, color: Theme.of(context).primaryColor)
            ),
            hintText: "Search",
            prefixIcon: InkWell(
                onTap: (){},
                child: Icon(Icons.search, size: 30,)
            ),
            suffixIcon: IconButton(
              onPressed: _controller.clear,
              icon: Icon(Icons.clear),
            ),
          ),

        ),
      ),
    );
  }
}
