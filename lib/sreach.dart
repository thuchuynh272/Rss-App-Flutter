import 'package:flutter/material.dart';
import 'package:textfield_search/textfield_search.dart';

class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final _testList = [
    'Continuing Venezuela exodus and COVID-19 highlights need for global solidarity for most vulnerable',
    '‘Unprecedented’ rise in gang violence across Haiti’s capital displaces thousands',
    'Haiti: ‘Laden with challenges’ but also hope, Mission chief tells Security Council',
    'Haitian leaders urged to end political impasse',
    'Haiti needs ‘democratic renewal’ top UN representative tells Security Council',
    'INTERVIEW: Address conflict, climate change, disease to reduce humanitarian need, urges outgoing ‘relief chief’',
    'UN chief: Desertification and drought destabilizing well-being of 3.2 billion people ',
    'Families came first’ for remittances in year of pandemic, says Guterres ',
    'Yemen ‘a tale of missed and then lost opportunities’, outgoing envoy tells Security Council',
    'Five polio vaccination workers shot dead in Afghanistan; UN condemns ‘brutal’ killings',
    '‘Digital dumpsites’ study highlights growing threat to children: UN health agency  ',
    'Domestic workers among hardest hit by COVID crisis, says UN labour agency',
    'Violence against elderly has risen during COVID, UN expert warns ',
    'Restoring nature ‘the test of our generation’: UN General Assembly President',
    '‘Critical juncture’ for Mali warns UN mission chief, with democratic future at risk',
    'COVID-19 cases drop for seventh week, but deaths fall less slowly: WHO',
  ];
  TextEditingController myController = TextEditingController();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    myController.addListener(_printLatestValue);
  }

  _printLatestValue() {
    print("text field: ${myController.text}");
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    myController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Search"),
        backgroundColor: Colors.red,
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Form(
          child: ListView(
            children: <Widget>[
              SizedBox(height: 16),
              TextFieldSearch(
                  initialList: _testList,
                  label: 'Hãy nhập từ khóa',
                  controller: myController),
              SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}
