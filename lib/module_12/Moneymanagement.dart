import 'package:flutter/material.dart';
class Moneymanagement extends StatefulWidget {
  const Moneymanagement({super.key});

  @override
  State<Moneymanagement> createState() => _MoneymanagementState();
}

class _MoneymanagementState extends State<Moneymanagement> with SingleTickerProviderStateMixin{
  late TabController _tabController;

  List<Map<String,dynamic>>  _expanse =[];
  List<Map<String,dynamic>>  _earning =[];


  double get totalExpense => _expanse.fold(0, (sum,item)=> sum+item['ammount']);
  double get totalEarning => _earning.fold(0, (sum,item)=> sum+item['ammount']);
  double get balance =>  totalEarning - totalExpense;



  void _addEntry(String title,double amount ,DateTime date ,bool isEarning){
    setState(() {
      if(isEarning){
        _earning.add({'Title': title,
          'amount': amount,
          'date': date,
        });
      }else{
        _expanse.add({'Title': title,
          'amount': amount,
          'date': date,
        });
      }
    });
  }


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  void _showbottom(BuildContext context){
    showModalBottomSheet(context: context, builder: (context){
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green
              ),
                onPressed: (){
                Navigator.pop(context);
                _showFrom(isEarning: true);
                }, child: Text('Add Earning',style: TextStyle(color: Colors.white),)),

            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue
                ),
                onPressed: (){
                  Navigator.pop(context);
                  _showFrom(isEarning: false);
                }, child: Text('Add Expense',style: TextStyle(color: Colors.white),)),
          ],
        ),
      );
    });
  }

  void _showFrom({required bool isEarning}){
    TextEditingController titleController = TextEditingController();
    TextEditingController AmountController = TextEditingController();
    DateTime entryDate =DateTime.now();


    showModalBottomSheet(context: context, builder: (context){
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text(
              isEarning ? 'Add Earning' : 'Add Expense',
              style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
            ),
            SizedBox(height: 10,),
            TextField(
              controller: titleController,
              decoration: InputDecoration(
                labelText: 'Title',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10,),
            TextField(
              controller: AmountController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  labelText: 'Amount',
                  border: OutlineInputBorder()
              ),
            ),
            SizedBox(height: 10,),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: (){
                  if(titleController.text.isNotEmpty && AmountController.text.isNotEmpty){
                    _addEntry(titleController.text,double.parse(AmountController.text),entryDate,isEarning) ;
                    Navigator.pop(context);
                  }
                }, child: Text( isEarning ? 'Add Earning': 'Add Expanse',
                style: TextStyle(fontSize: 16,color: Colors.white),
              ),
                style: ElevatedButton.styleFrom(
                    backgroundColor:isEarning? Colors.orangeAccent:Colors.purpleAccent),
              ),
            ),
          ],
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreenAccent,
        centerTitle: true,
        title: Text('MoneyManagement',
          style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
        ),
        bottom: TabBar(
          controller: _tabController,
            tabs: [
              Tab(text: 'Earning',icon: Icon(Icons.arrow_upward),),
              Tab(text: 'Expense',icon: Icon(Icons.arrow_downward),),

            ]
        ),
      ),
      body: Column(
        children: [
          Row(
            children: [
              _buildSummeryCard(title: 'Earning', value: totalEarning , color: Colors.green),
              _buildSummeryCard(title: 'Expense', value: totalExpense, color: Colors.blue),
              _buildSummeryCard(title: 'Balance', value: balance, color: Colors.pink),

            ],
          ),
          
          Expanded(
            child: TabBarView(
              controller: _tabController,
                children: [
              _buildList(_earning, Colors.green, true),
              _buildList(_earning, Colors.pink, false),
              
            ]),
          )
        ],
      ),
      
      floatingActionButton: FloatingActionButton(
          onPressed: ()=>_showbottom(context),
        child: Icon(Icons.favorite,color: Colors.pink,),
      ),
    );
  }
}
Widget _buildSummeryCard({required String title,required double value,required Color color}){
  return Expanded(
    child: Card(
      color: color,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Text(title,
              style: TextStyle(fontSize: 16,color: Colors.white),
            ),
            Text(value.toString(),
              style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    ),
  );
}

Widget _buildList(List<Map<String,dynamic>>items,Color color,bool isEarning){
  return ListView.builder(
  itemCount: items.length,
  itemBuilder: (context,index){
    return Card(
    child: ListTile(
    leading: CircleAvatar(
     backgroundColor: color.withOpacity(0.2),
      child: Icon(isEarning? Icons.arrow_upward: Icons.arrow_downward,color: color,),
),
      title: Text(items[index]['title']),
      subtitle: Text((items[index]['date'].toString())),
      trailing: Text(
         '${items[index]['amount'] }',
        style: TextStyle(
          color: color,
          fontWeight: FontWeight.bold
        ),
      ),
    ),
    );
});
}
