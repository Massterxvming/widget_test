

import '../../commont/commont.dart';

class Listpage extends StatefulWidget {
  const Listpage({super.key});

  @override
  State<Listpage> createState() => _ListpageState();
}

class _ListpageState extends State<Listpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(),
      ),
        body: Container(
          width: double.infinity,
          padding: EdgeInsets.all(28),
      child: Column(
          children: [
        Card(
          child: Text('hello'),
        ),
        Card(
          child: Text('every one'),
        )
      ]),
      color: Colors.red,
    ));
  }
}
