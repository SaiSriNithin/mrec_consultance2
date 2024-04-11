import 'package:flutter/material.dart';
import 'package:mrec_consultance/models/tests_model.dart';
import 'package:mrec_consultance/screens/results.dart';

class TestScreen extends StatefulWidget {
  const TestScreen({
    super.key,
    required this.tests,
    required this.testscreenName,
  });

  final List<TestModel> tests;
  final String testscreenName;

  @override
  State<TestScreen> createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  List<String> selected = [];
  bool value = false;
  bool value1 = false;

  void onRollnoSelected(bool? value, rollno) {
    if (value == true) {
      setState(() {
        selected.add(rollno);
      });
    } else {
      setState(() {
        selected.remove(rollno);
      });
    }
  }

  List<TestModel> searchList = [];

  @override
  void initState() {
    searchList = widget.tests;
    super.initState();
  }

  void filterSearchResults(String enteredKeyword) {
    List<TestModel> results = [];
    if (enteredKeyword.isEmpty) {
      results = widget.tests;
    } else {
      results = widget.tests
          .where((test) =>
              test.Name.toLowerCase().contains(enteredKeyword.toLowerCase()))
          .toList();
    }
    setState(() {
      searchList = results;
    });
  }

  void selectAll(bool? value) {
    setState(() {
      this.value = value!;
      selected.clear();
      if (value) {
        selected.addAll(searchList.map((test) => test.Name));
      } else {
        selected.clear();
      }
    });
  }

  bool areAllSelected() {
    return selected.length == searchList.length;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.testscreenName,
          //style: TextStyle(fontSize: 20),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              onChanged: (value) {
                filterSearchResults(value);
              },
              decoration: const InputDecoration(
                labelText: "Search",
                hintText: "Search",
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(25.0),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text('Select All'),
                    Checkbox(
                      value: areAllSelected(),
                      onChanged: selectAll,
                    ),
                  ],
                ),
                OutlinedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => Results(resultsname: selected),
                      ),
                    );
                  },
                  child: Text('Confirm'),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: searchList.length,
              itemBuilder: (context, index) => SizedBox(
                height: MediaQuery.of(context).size.height / 9,
                child: Card(
                  child: CheckboxListTile(
                    value: selected.contains(searchList[index].Name),
                    onChanged: (bool? value) {
                      onRollnoSelected(value, searchList[index].Name);
                    },
                    title: Text(
                      searchList[index].Name,
                    ),
                    subtitle: Text(searchList[index].Subtext),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
