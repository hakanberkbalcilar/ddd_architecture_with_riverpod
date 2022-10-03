import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_sample/presentation/screens/navigation/view_model/navigation_view_model.dart';
import 'package:riverpod_sample/presentation/screens/news/view/new_list_view.dart';
import 'package:riverpod_sample/presentation/screens/news_category/view/news_category_list_view.dart';

final _navigationViewModel = ChangeNotifierProvider((ref) => NavigationViewModel());

class NavigationView extends ConsumerStatefulWidget {
  const NavigationView({super.key});

  @override
  ConsumerState<NavigationView> createState() => _NavigationViewState();
}

class _NavigationViewState extends ConsumerState<NavigationView> {
  late final viewModel = ref.read(_navigationViewModel)..context = context;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(statusBarColor: theme.colorScheme.background, systemNavigationBarColor: theme.colorScheme.surface),
      child: Scaffold(
        appBar: _appBar,
        body: PageView(
          controller: viewModel.pageController,
          physics: const NeverScrollableScrollPhysics(),
          children: const [NewsListView(), NewsCategoryListView()],
        ),
        bottomNavigationBar: _bottomNavigation,
      ),
    );
  }

  PreferredSizeWidget get _appBar => PreferredSize(
      preferredSize: const Size.fromHeight(56),
      child: AnimatedBuilder(
          animation: viewModel.pageController,
          builder: (context, _) {
            String title = '';

            switch (viewModel.pageController.page?.toInt() ?? 0) {
              case 0:
                title = "News";
                break;
              case 1:
                title = "Categories";
                break;
            }

            return AppBar(
              title: Text(title),
            );
          }));

  Widget get _bottomNavigation => AnimatedBuilder(
      animation: viewModel.pageController,
      builder: (context, _) {
        return NavigationBar(
            selectedIndex: viewModel.pageController.page?.toInt() ?? 0,
            onDestinationSelected: (value) => viewModel.pageController.jumpToPage(value),
            destinations: const [
              NavigationDestination(icon: Icon(Icons.newspaper_rounded), label: 'News'),
              NavigationDestination(icon: Icon(Icons.category_rounded), label: 'Categories')
            ]);
      });
}
