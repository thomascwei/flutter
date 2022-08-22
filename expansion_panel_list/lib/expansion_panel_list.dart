import 'package:flutter/material.dart';

class ExpansionPanelListDemo extends StatefulWidget {
  const ExpansionPanelListDemo({Key? key}) : super(key: key);

  @override
  State<ExpansionPanelListDemo> createState() => _ExpansionPanelListDemoState();
}

class _ExpansionPanelListDemoState extends State<ExpansionPanelListDemo> {
  late List<int> mList;
  late List<ExpandStateBean> expandStateList;

  _ExpansionPanelListDemoState() {
    mList = [];
    expandStateList = [];
    for (int i = 0; i < 10; i++) {
      mList.add(i);
      expandStateList.add(ExpandStateBean(index: i, isOpen: false));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('expansion panel'),
      ),
      body: SingleChildScrollView(
        child: ExpansionPanelList(
          expansionCallback: (index, bol) {
            _setCurrentIndex(index, bol);
          },
          children: mList.map((index) {
            return ExpansionPanel(
                isExpanded: expandStateList[index].isOpen,
                headerBuilder: (context, isExpanded) {
                  return ListTile(
                    title: Text('this is NO.$index'),
                  );
                },
                body: ListTile(
                  title: Text('expansion is NO.$index'),
                ));
          }).toList(),
        ),
      ),
    );
  }

  _setCurrentIndex(int index, bool isExpanded) {
    setState(() {
      expandStateList.forEach((element) {
        if (element.index == index) {
          element.isOpen = !isExpanded;
        }
      });
    });
  }
}

class ExpandStateBean {
  int index;
  bool isOpen;

  ExpandStateBean({required this.index, required this.isOpen});
}
