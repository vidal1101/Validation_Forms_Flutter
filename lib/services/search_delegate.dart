import 'package:flutter/material.dart';

class SearchDelegateCustom extends SearchDelegate {

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [IconButton(
      onPressed: (){
        query = '';
      }, icon: Icon(Icons.close))
      ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return Container();
  }

  @override
  Widget buildResults(BuildContext context) {
   return Container();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
   return Container();
  }


}