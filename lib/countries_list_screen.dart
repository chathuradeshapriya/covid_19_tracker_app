import 'package:covid_tracker_app/status_services.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CountriesListScreen extends StatefulWidget {
  const CountriesListScreen({Key? key}) : super(key: key);

  @override
  State<CountriesListScreen> createState() => _CountriesListScreenState();
}

class _CountriesListScreenState extends State<CountriesListScreen> {
  
  TextEditingController searchController = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    StatusService statusService = StatusService();
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      ),

      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: searchController,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(horizontal: 20),
                  hintText: 'Search with country name',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50.0),
                  )

                ),
              ),
            ),

            Expanded(child: FutureBuilder(
              future: statusService.countriesListApi(),
              builder: (context, AsyncSnapshot<List<dynamic>> snapshot){
                if(!snapshot.hasData){
                  return Text('Loading...');
                } else{
                  return ListView.builder(
                      itemCount: 1,
                      itemBuilder: (context, index){
                    return Column(
                      children: [

                      ],
                    );
                  });
                }
              },
            ))
          ],
        ),
      ),

    );
  }
}
