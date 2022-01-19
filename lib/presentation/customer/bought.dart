import 'package:flutter/material.dart';
// import 'package:shared_preferences/shared_preferences.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

// make a hook for infinite scrolling
//paymentbought.vue is used in website for this page
class Bought extends StatefulWidget {
  Bought({Key? key}) : super(key: key);

  @override
  _BoughtState createState() => _BoughtState();
}

class _BoughtState extends State<Bought> {
  FirebaseFirestore _firestore = FirebaseFirestore.instance;
  List<dynamic> boughts = []; // stores fetched products
  bool isLoading = false; // track if products fetching
  bool hasMore = true; // flag for more products available or not
  int documentLimit = 10; // documents to be fetched per request
  DocumentSnapshot?
      lastDocument; // flag for last document from where next 10 records to be fetched
  ScrollController _scrollController =
      ScrollController(); // listener for listview scrolling
//initstate must have the id from which data has to be fetched
//shared preference gives id only then
// also has to be called here
  @override
  void initState() {
    super.initState();
    _getProducts(); //todo: can be called on initialized event using firstTen repo method
    _scrollController.addListener(() {
      double maxScroll = _scrollController.position.maxScrollExtent;
      double currentScroll = _scrollController.position.pixels;
      double delta = MediaQuery.of(context).size.height * 0.20;
      if (maxScroll - currentScroll <= delta) {
        // BlocProvider.of<BoughtWatcherBLoc>(context)
        _getProducts(); //use blocprovider
        //todo:  can call the rest from within build function
        //? this funciton wont be required then

      }
    });
  }

// BuildContext context
  _getProducts() async {
    if (!hasMore) {
      print('No More Products');
      return;
    }
    if (isLoading) {
      return;
    }
    setState(() {
      isLoading = true;
    });
    QuerySnapshot querySnapshot;
    //todo: put querySnapshot in state
    if (lastDocument == null) {
      querySnapshot = await _firestore
          .collection('bought')
          .orderBy('updated_at')
          .limit(documentLimit)
          .get();
    } else {
      querySnapshot = await _firestore
          .collection('bought')
          .orderBy('updated_at')
          .startAfterDocument(lastDocument!)
          .limit(documentLimit)
          .get();
      print(1);
    }

    if (querySnapshot.docs.length < documentLimit) {
      hasMore = false;
    }
    //todo: put lastDocument in state
    lastDocument = querySnapshot.docs[querySnapshot.docs.length - 1];
    boughts.addAll(querySnapshot.docs);
    print(querySnapshot.docs[0]);
    setState(() {
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        Expanded(
          child: boughts.length == 0
              ? Center(
                  child: Text('No Data...'),
                )
              : ListView.builder(
                  controller: _scrollController,
                  itemCount: boughts.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      contentPadding: EdgeInsets.all(5),
                      title:
                          Text(boughts[index].data()['enterprise_name'] ?? ''),
                      subtitle: Text(index.toString()),
                    );
                  },
                ),
        ),
        isLoading
            ? Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.all(5),
                color: Colors.yellowAccent,
                child: Text(
                  'Loading',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            : Container()
      ]),
    );
  }
}
