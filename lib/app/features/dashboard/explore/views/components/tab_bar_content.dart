part of explore;

class _TabBarContent extends StatelessWidget {
  const _TabBarContent({required this.tabs, required this.children, Key? key})
      : super(key: key);

  final List<Widget> tabs;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabs.length,
      child: Column(
        children: [
          SizedBox(
            height: 40,
            child: TabBar(
              tabs: tabs,
              indicator: DotIndicator(
                color: Theme.of(context).primaryColor,
                distanceFromCenter: kSpacing,
                radius: 3,
                paintingStyle: PaintingStyle.fill,
              ),
              unselectedLabelColor: kFontColorPallets[1],
              labelColor: Theme.of(context).primaryColor,
              isScrollable: true,
            ),
          ),
          SizedBox(height: kSpacing),
          Expanded(
            child: TabBarView(children: children),
          ),
        ],
      ),
    );
  }
}
