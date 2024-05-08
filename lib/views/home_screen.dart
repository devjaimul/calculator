import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController _numOneTEController = TextEditingController();
  final TextEditingController _numTwoTEController = TextEditingController();
   double _result=0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculator App'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              controller: _numOneTEController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(labelText: 'Number 1'),
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              controller: _numTwoTEController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(labelText: 'Number 2'),
            ),
            const SizedBox(
              height: 20,
            ),
            Wrap(
            spacing: 50,
              alignment: WrapAlignment.spaceEvenly,
              children: [
                ElevatedButton.icon(
                  onPressed: _add,
                  icon: const Icon(Icons.add),
                  label: const Text('Add'),
                  style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.teal.shade500,
                 ),
                ),
                ElevatedButton.icon(
                  onPressed: _sub,
                  icon: const Icon(Icons.remove),
                  label: const Text('Subtract'),
                  style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.teal.shade500,
                 ),
                ),
                ElevatedButton.icon(
                  onPressed: _multiply,
                  icon: const Icon(Icons.close_rounded),
                  label: const Text('Multiply'),
                  style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.teal.shade500,
                 ),
                ),
                ElevatedButton.icon(
                  onPressed: _division,
                  icon: const Icon(Icons.stairs_rounded),
                  label: const Text('Divison'),
                  style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.teal.shade500,
                 ),
                ),

              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Text("Result: $_result",style: const TextStyle(fontSize: 25,fontWeight: FontWeight.w600),),
          ],
        ),
      ),
    );
  }
void _add(){
    double numOne= double.tryParse(_numOneTEController.text)??0;
    double numTwo= double.tryParse(_numTwoTEController.text)??0;
    _result=numOne+numTwo;
    setState(() {

    });
}
void _sub(){
    double numOne= double.tryParse(_numOneTEController.text)??0;
    double numTwo= double.tryParse(_numTwoTEController.text)??0;
    _result=numOne-numTwo;
    setState(() {

    });
}
void _multiply(){
    double numOne= double.tryParse(_numOneTEController.text)??0;
    double numTwo= double.tryParse(_numTwoTEController.text)??0;
    _result=numOne*numTwo;
    setState(() {

    });
}
void _division(){
    double numOne= double.tryParse(_numOneTEController.text)??0;
    double numTwo= double.tryParse(_numTwoTEController.text)??0;
    _result=numOne/numTwo;
    setState(() {

    });
}
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _numOneTEController.dispose();
    _numTwoTEController.dispose();
  }
}
