import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
// import 'package:shared_preferences/shared_preferences.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shamagri_latest_flutter_version/application/auth/auth_bloc.dart';
import 'package:shamagri_latest_flutter_version/application/bought_sold/list_sold/list_sold_bloc.dart';
import 'package:shamagri_latest_flutter_version/domain/core/errors.dart';
import 'package:shamagri_latest_flutter_version/injection.dart';
// import 'package:shamagri_latest_flutter_version/presentation/customer/critical_failure_display_widget.dart';
import 'package:shamagri_latest_flutter_version/presentation/routes/router.gr.dart';
import 'package:shamagri_latest_flutter_version/presentation/vendor/critical_failure_display_widget.dart';
import 'package:shamagri_latest_flutter_version/presentation/vendor/sold/list_sold_widgets/sold_overview.dart';

// make a hook for infinite scrolling
//paymentSold.vue is used in website for this page
class Sold extends StatelessWidget {
  Sold({Key? key}) : super(key: key);

  // FirebaseFirestore _firestore = FirebaseFirestore.instance;
  // List<DocumentSnapshot> solds = []; // stores fetched products
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
          .collection('Sold')
          .orderBy('updated_at')
          .limit(documentLimit)
          .get();
    } else {
      querySnapshot = await _firestore
          .collection('Sold')
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
    solds.addAll(querySnapshot.docs);
    print(querySnapshot.docs[0]);
    setState(() {
      isLoading = false;
    });
  } */

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              getIt<ListSoldBloc>()..add(const ListSoldEvent.watchFirstTen()),
        ),
      ],
      child: MultiBlocListener(
          listeners: [
            BlocListener<AuthBloc, AuthState>(
              listener: (context, state) {
                state.maybeMap(
                  unauthenticated: (_) =>
                      // ExtendedNavigator.of(context).replace(Routes.signInPage),
                      AutoRouter.of(context).replace(SignInPageRoute()),
                  orElse: () {},
                );
                /*   */
              },
            ),
          ],
          child: Builder(builder: (BuildContext context) {
            /* context.select((ListSoldBloc bloc) => bloc.state.map(
                loadSuccess: (state) {
                  lastDocument = state.listSold[state.listSold.length - 1];
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
                BlocProvider.of<ListSoldBloc>(context).state.map(
                    initial: (initial) => null,
                    loadInProgress: (loadInProgress) => null,
                    loadSuccess: (state) {
                      if (!(state.watchAfterTenCountIsZeroToNine!)) {
                        print('called loadsuccess');
                        return BlocProvider.of<ListSoldBloc>(context)
                            .add(ListSoldEvent.watchAfterTen());
                      }
                      return null;
                    },
                    loadFailure: (state) => CriticalFailureDisplay(
                          failure: state.listSoldFailure,
                        ));
              }
            });
            return ListSoldOverviewBody(scrollController: _scrollController);
          })),
    );
  }
}
