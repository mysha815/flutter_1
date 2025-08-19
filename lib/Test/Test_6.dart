import 'package:flutter/material.dart';
import 'package:flutter1/module_7/Tab.dart';

class Test6 extends StatefulWidget {
  const Test6({super.key});

  @override
  State<Test6> createState() => _Test6State();
}

class _Test6State extends State<Test6> with SingleTickerProviderStateMixin{
  double _earning =0;
  double _expense =0;
  double _balance =0;

  final List<Map<String,dynamic>> _earningList = [];
  final List<Map<String,dynamic>> _expenseList = [];
  final List<Map<String,dynamic>> _transactions = [];

  void _showAddBalanceDialog(){
    final TextEditingController _amountController = TextEditingController();

    showDialog(context: context,
        builder: (context)=>AlertDialog(
          title: Text('Add Balance'),
          content: TextField(
            controller: _amountController,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              hintText: 'Enter amount',
            ),
          ),
          actions: [
            TextButton(onPressed: ()=> Navigator.pop(context),
                child: Text('Cancle')),

            ElevatedButton(onPressed: (){
              double amount = double.tryParse(_amountController.text) ?? 0;
              if (amount>0){
                setState(() {
                  _balance += amount;
                  _earning += amount;

                  final newEntry = {
                    'title' : 'Balance Added',
                    'amount ':'amount',
                    'date' :DateTime.now().toString().split('.')[0],
                    'type' :'earning'
                  };
                  _earningList.add(newEntry);
                  _transactions.add(newEntry);
                });
              }
              Navigator.pop(context);
            },
                child: Text('Add'))
          ],
        ),
    );
  }

  void _showRemoveBalanceDialog(){
   final TextEditingController _amountController = TextEditingController();

   showDialog(context: context,
       builder: (context)=>AlertDialog(
         title: Text('Remove Balance'),
         content: TextField(
           controller: _amountController,
           keyboardType: TextInputType.number,
           decoration: InputDecoration(
             hintText: 'Enter amount',
           ),
         ),
         actions: [
           TextButton(onPressed: ()=>Navigator.pop(context),
               child: Text('Cancel')),
           ElevatedButton(onPressed: (){
             double amount = double.tryParse(_amountController.text)?? 0;

             if(amount>0 && amount >=_balance){
               setState(() {
                 _balance -= amount;
                 _expense += amount;

                 final newEntry = {
                   'title' :'Item Purchased',
                   'amount':'amount',
                   'date' :DateTime.now().toString().split('.')[0],
                   'type' :'expense'
                 };

                 _expenseList.add(newEntry);
                 _transactions.add(newEntry);

               });
             }
             Navigator.pop(context);
           },
               child: Text('Remove'))
         ],
       )
   );
}

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent,
        title: Text('Moneymanagement'),
        centerTitle: true,
      ),

      body: Column(
       children: [
         Row(
           children: [
             _SummaryCard(title: 'Earning', value: _earning, color: Colors.green, fontWeight: FontWeight.normal),
             _SummaryCard(title: 'Expense', value: _expense, color: Colors.red, fontWeight: FontWeight.normal),
             _SummaryCard(title: 'Balance', value: _balance, color: Colors.blue, fontWeight: FontWeight.normal),
           ],
         ),

         Row(
           children: [
             _BalanceCard(icon: Icons.add, title: 'Add Balance', color: Colors.green, onTap: _showAddBalanceDialog),
             _BalanceCard(icon: Icons.remove_circle, title: 'Buy Item', color: Colors.red, onTap: _showAddBalanceDialog),
           ],
         ),
         Padding(padding: const EdgeInsets.all(8.0),
           child: Text('All Transaction',
             style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
           ),
         ),
         _buildTransactionList(_transactions),

       ],
      ),
    );
  }
}
Widget _SummaryCard(
{ required String title ,
required double value,
required Color color,
required FontWeight fontWeight,
}){
  return Expanded(
      child: Card(
        color: color,
        child: Column(
          children: [
            Text(value.toString(),
              style: TextStyle(fontSize: 26,color: Colors.white,fontWeight: fontWeight),
            ),
            Text(title,
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
            )
          ],
        ),
      )
  );
}

Widget _BalanceCard(
{required IconData icon,
required String title,
required Color color,
required VoidCallback onTap,
}){
  return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(50.0),
        child: InkWell(
          onTap: onTap,
          child: Card(
            color: color,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Icon(icon,
                    color: Colors.white,
                    size: 32,
                  ),
                  Text(title,
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
            ),
          ),
        ),
      )
  );
}
Widget _buildTransactionList(List<Map<String,dynamic>> transactions){
  return Expanded(
      child: ListView.builder(
        itemCount: transactions.length,
          itemBuilder: (context,index){
          final item = transactions[index];
          final isEarning = item['type'] == 'earning';
          final color = isEarning? Colors.green : Colors.red;

          return Card(
            child:ListTile(
              leading: CircleAvatar(
                backgroundColor: color.withOpacity(0.2),
                child: Icon(
                  isEarning? Icons.arrow_downward: Icons.arrow_upward,
                  color: color ,
                ),
              ),
              title: Text(item['title']),
              subtitle: Text(item['date'].toString()),
              trailing: Text(
                  '${item['amount']}',
                style: TextStyle(color: color,fontWeight: FontWeight.bold),
              ),
            ) ,
          );
          }
      ),

  );

}