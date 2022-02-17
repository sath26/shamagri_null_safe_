// TODO Implement this library.
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
// import 'package:shared_preferences/shared_preferences.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shamagri_latest_flutter_version/application/auth/auth_bloc.dart';
import 'package:shamagri_latest_flutter_version/application/bought_sold/list_bought/list_bought_bloc.dart';
import 'package:shamagri_latest_flutter_version/application/bought_sold/list_bought_invoice/list_bought_invoice_bloc.dart';
import 'package:shamagri_latest_flutter_version/domain/core/errors.dart';
import 'package:shamagri_latest_flutter_version/injection.dart';
import 'package:shamagri_latest_flutter_version/presentation/both/home.dart';
import 'package:shamagri_latest_flutter_version/presentation/routes/router.gr.dart';
import 'package:shamagri_latest_flutter_version/presentation/customer/bought/invoice_bought_widgets/invoice_bought_overview.dart';
import 'package:shamagri_latest_flutter_version/presentation/customer/bought/list_bought_widgets/bought_overview.dart';

// make a hook for infinite scrolling
//paymentBought.vue is used in website for this page
class BoughtInvoice extends StatelessWidget {
  BoughtInvoice({Key? key, this.boughtId}) : super(key: key);
  final String? boughtId;
  // FirebaseFirestore _firestore = FirebaseFirestore.instance;
  // List<DocumentSnapshot> Boughts = []; // stores fetched products
  // bool isLoading = false; // track if products fetching
  // bool hasMore = true; // flag for more products available or not
  // int documentLimit = 10; // documents to be fetched per request
  DocumentSnapshot?
      lastDocument; // flag for last document from where next 10 records to be fetched
  ScrollController _scrollController =
      ScrollController(); // listener for listview scrolling
//initstate must have the id from which data has to be fetched
//shared preference gives id only then
// also has to be called here
  /*  @override
  void initState() {
    super.initState();
    // _getProducts(); //todo: can be called on initialized event using firstTen repo method
  } */

// BuildContext context
  /* _getProducts() async {
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
          .collection('Bought')
          .orderBy('updated_at')
          .limit(documentLimit)
          .get();
    } else {
      querySnapshot = await _firestore
          .collection('Bought')
          .orderBy('updated_at')
          .startAfterDocument(lastDocument)
          .limit(documentLimit)
          .get();
      print(1);
    }

    if (querySnapshot.docs.length < documentLimit) {
      hasMore = false;
    }
    //todo: put lastDocument in state
    lastDocument = querySnapshot.docs[querySnapshot.docs.length - 1];
    Boughts.addAll(querySnapshot.docs);
    print(querySnapshot.docs[0]);
    setState(() {
      isLoading = false;
    });
  } */

  @override
  Widget build(BuildContext context) {
    _scrollController.addListener(() {
      double maxScroll = _scrollController.position.maxScrollExtent;
      double currentScroll = _scrollController.position.pixels;
      double delta = MediaQuery.of(context).size.height * 0.20;
      if (maxScroll - currentScroll <= delta) {
        BlocProvider.of<ListBoughtInvoiceBloc>(context)
            .add(ListBoughtInvoiceEvent.watchAfterTen());
        // _getProducts(); //use blocprovider
        //todo:  can call the rest from within build function
        //? this funciton wont be required then

      }
    });
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<ListBoughtInvoiceBloc>()
            ..add(ListBoughtInvoiceEvent.watchFirstTen(this.boughtId)),
        ),
      ],
      child: MultiBlocListener(
          listeners: [
            BlocListener<AuthBloc, AuthState>(
              listener: (context, state) {
                state.maybeMap(
                  unauthenticated: (_) =>
                      AutoRouter.of(context).replace(SignInPageRoute()),
                  orElse: () {},
                );
                /*   */
              },
            ),
          ],
          child: Builder(builder: (BuildContext context) {
            /* context.select((ListBoughtBloc bloc) => bloc.state.map(
                loadSuccess: (state) {
                  lastDocument = state.listBought[state.listBought.length - 1];
                  //.getOrElse(() => throw UnexpectedValueError());
                },
                initial: (state) {},
                loadFailure: (state) {},
                loadInProgress: (state) {})); */
            _scrollController.addListener(() {
              double maxScroll = _scrollController.position.maxScrollExtent;
              double currentScroll = _scrollController.position.pixels;
              double delta = MediaQuery.of(context).size.height * 0.20;
              if (maxScroll - currentScroll <= delta) {
                BlocProvider.of<ListBoughtInvoiceBloc>(context).state.map(
                    initial: (initial) => null,
                    loadInProgress: (loadInProgress) => null,
                    loadSuccess: (state) {
                      if (!(state.watchAfterTenCountIsZeroToNine!)) {
                        print('called loadsuccess');
                        return BlocProvider.of<ListBoughtInvoiceBloc>(context)
                            .add(ListBoughtInvoiceEvent.watchAfterTen());
                      }
                      return null;
                    },
                    loadFailure: (loadFailure) => null);
              }
            });
            return WillPopScope(
              onWillPop: () async {
                bool? result;
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => HomeScreen(
                              selectedPage: 0,
                            )));
                if (result == null) {
                  result = false;
                }
                return result;
              },
              child: Scaffold(
                appBar: AppBar(title: Text("Bought invoice")),
                body: InvoiceBoughtOverviewBody(
                    scrollController: _scrollController),
              ),
            );
          })),
    );
  }
}
