import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:quote_generator/config/theme/dimensions.dart';
import 'package:quote_generator/translations/translations.dart';

class SearchScreen extends StatelessWidget {
  static SearchScreen builder(
    BuildContext context,
    GoRouterState state,
  ) =>
      const SearchScreen();

  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (ctx, innerBoxIsScrolled) {
          return [
            SliverAppBar(
              floating: true,
              pinned: true,
              centerTitle: true,
              title: Padding(
                padding: Dimensions.kPaddingAllLarge,
                child: Text(
                  context.l10n.app_bar_search_quote,
                  style: Theme.of(context).textTheme.displayMedium,
                ),
              ),
            )
          ];
        },
        body: SafeArea(
          child: Container(
            width: double.infinity,
            height: double.infinity,
            padding: Dimensions.kPaddingAllLarge,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Search Quote'),
                ElevatedButton(
                  onPressed: () => context.push('/home/createdByYou'),
                  child: const Text('go to by you'),
                ),
                ElevatedButton(
                  onPressed: () => context.go('/home/latest'),
                  child: const Text('go to latest'),
                ),
                ElevatedButton(
                  onPressed: () => context.go('/home/favorites'),
                  child: const Text('go to favorite'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
