import 'package:flutter/material.dart';


class ListCountry extends StatefulWidget {
  ListCountry({Key? key}) : super(key: key);

  @override
  State<ListCountry> createState() => _ListCountryState();
}

class _ListCountryState extends State<ListCountry> {

List<String> _country = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    this._country.add('mexico');
    this._country.add('costa rica');
    this._country.add('Guatemala');
    this._country.add('Panama');
    this._country.add('Peru');
    this._country.add('Argentina');
    this._country.add('Boliva');
    this._country.add('Venezuela');
    this._country.add('cuba');
    this._country.add('Ecuador');
    this._country.add('Colombia');
    this._country.add('Chile');
    this._country.add('Canada');
    this._country.add('estados unidos');
    this._country.add('Brazil');
    this._country.add('Republica dominaca');
    this._country.add('Uruguay');
    this._country.add('España');
    this._country.add('Nigeria');
    this._country.add('Japon');

  }


  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: _country.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text(_country[index].toString().toUpperCase()),
          );
        },
      ),
    );
  }
}