/* import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:implicitly_animated_reorderable_list/implicitly_animated_reorderable_list.dart';
import 'package:kt_dart/collection.dart';
import 'package:logger/logger.dart';

import 'package:shamagri_latest_flutter_version/application/auth/auth_bloc.dart';
import 'package:shamagri_latest_flutter_version/application/bought_sold/quotation_primitive/quotation_item_presentation_classes.dart';
import 'package:shamagri_latest_flutter_version/application/bought_sold/quotation_primitive/build_context_x.dart';
import 'package:shamagri_latest_flutter_version/application/bought_sold/selected_individual_edit_for_sold_not_bought/selected_watcher_bloc.dart';
import 'package:shamagri_latest_flutter_version/domain/sold/sold.dart';
import 'package:shamagri_latest_flutter_version/injection.dart';
import 'package:shamagri_latest_flutter_version/presentation/routes/router.gr.dart';
import 'package:provider/provider.dart';

class AfterSelectD extends StatelessWidget {
  // final bool isEditing;
  // final Sold afterSelectSoldOption;
  const AfterSelectD({
    Key key,
    // @required this.isEditing,
    // @required this.afterSelectSoldOption,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          // create: (context) => UnitsBloc()..add(LoadUnits()),
          create: (context) => getIt<SelectedWatcherBloc>(),
        ),
      ],
      child: MultiBlocListener(
          listeners: [
            BlocListener<AuthBloc, AuthState>(
              listener: (context, state) {
                state.maybeMap(
                  unauthenticated: (_) =>
                      ExtendedNavigator.of(context).replace(Routes.signInPage),
                  orElse: () {},
                );
                /*   */
              },
            ),
          ],
          child: BlocConsumer<SelectedWatcherBloc, SelectedWatcherState>(
            listenWhen: (p, c) =>
                p.saveFailureOrSuccessOption != c.saveFailureOrSuccessOption,
            listener: (context, state) {
              state.saveFailureOrSuccessOption.fold(
                () {},
                (either) {
                  either.fold(
                    (failure) {
                      FlushbarHelper.createError(
                        message: failure.map(
                          insufficientPermission: (_) =>
                              'Insufficient permissions ❌',
                          unableToUpdate: (_) =>
                              "Couldn't update the note. Was it deleted from another device?",
                          unexpected: (_) =>
                              'Unexpected error occured, please contact support.',
                        ),
                      ).show(context);
                    },
                    (_) {
                      /* ExtendedNavigator.of(context).popUntil(
                        (route) => route.settings.name == Routes.newSoldBill,
                      ); */
                    },
                  );
                },
              );
            },
            buildWhen: (p, c) => p.isSaving != c.isSaving,
            builder: (context, state) {
              return Stack(children: <Widget>[
                const BillFomationScaffold(),
                SavingInProgressOverlay(isSaving: state.isSaving)
              ]);
            },
          )),
    );
  }
}

class SavingInProgressOverlay extends StatelessWidget {
  final bool isSaving;

  const SavingInProgressOverlay({
    Key key,
    @required this.isSaving,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      ignoring: !isSaving,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 150),
        color: isSaving ? Colors.black.withOpacity(0.8) : Colors.transparent,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Visibility(
          visible: isSaving,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const CircularProgressIndicator(),
              const SizedBox(height: 8),
              Text(
                'Saving',
                style: Theme.of(context).textTheme.bodyText2.copyWith(
                      color: Colors.white,
                      fontSize: 16,
                    ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class BillFomationScaffold extends StatelessWidget {
  const BillFomationScaffold({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        ExtendedNavigator.of(context).replace(Routes.selectBillScreen);
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text('Send Bill'),
        ),
        body: BlocBuilder<SelectedWatcherBloc, SelectedWatcherState>(
            builder: (context, state) {
          return ChangeNotifierProvider(
            create: (_) => FormQuotations(),
            child: Column(
              children: [
                Row(),
                //for name of buyer
                //also has find buyer icon for input box to search for the user
                Expanded(
                  child: Consumer<FormQuotations>(
                    builder: (context, formQuotations, child) {
                      var logger = Logger();
                      logger.wtf(context.formQuotations);

                      return ImplicitlyAnimatedReorderableList<
                          SelectedItemPrimitive>(
                        shrinkWrap: true,
                        removeDuration: const Duration(),
                        items: formQuotations.value.asList(),
                        areItemsTheSame: (oldItem, newItem) =>
                            oldItem.id == newItem.id,
                        onReorderFinished: (item, from, to, newItems) {
                          context.formQuotations = newItems.toImmutableList();
                          context.read<SelectedWatcherBloc>().add(
                              SelectedWatcherEvent.individualQuotationEdited(
                                  context.formQuotations));
                        },
                        itemBuilder: (context, itemAnimation, item, index) {
                          return Reorderable(
                            key: ValueKey(item.id.getOrCrash()),
                            builder: (context, dragAnimation, inDrag) {
                              return ScaleTransition(
                                scale: Tween<double>(begin: 1, end: 0.95)
                                    .animate(dragAnimation),
                                child: ItemTile(
                                  index: index,
                                  elevation: dragAnimation.value * 4,
                                ),
                              );
                            },
                          );
                        },
                      );
                    },
                  ),
                ), //List of items
                Row(), //total
                Row(), //send
              ],
            ),
          );
        }),
      ),
    );
  }
}

class ItemTile extends HookWidget {
  final int index;

  const ItemTile({@required this.index, Key key, elevation}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var logger = Logger();
    final quotation = context.formQuotations.get(index);
    logger.wtf(quotation);
    return ListTile(
      title: Text(quotation.id.getOrCrash()),
    );
  }
}
 */