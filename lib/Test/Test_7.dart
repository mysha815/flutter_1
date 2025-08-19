import 'package:flutter/material.dart';

class Test7 extends StatefulWidget {
  const Test7({super.key});

  @override
  State<Test7> createState() => _Test7State();
}

class _Test7State extends State<Test7> {

  double earning = 0;
  double expense =0;
  double balance =0;

  final List<Map<String,dynamic>>_transactions =[];


  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _amountContrller = TextEditingController();


  void _showAddBalance(String actiontitle,bool isExpense){
     
    showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
        ),
        builder: (context){
          return Column(
            children: [
              Text('Add Balance',
                style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20,),

              TextField(
                controller: _titleController,
                decoration: InputDecoration(
                  labelText: 'Enter Title',
                  border: OutlineInputBorder(),
                ),
              ),

              SizedBox(height: 12,),

              TextField(
                controller: _amountContrller,
                decoration: InputDecoration(
                  labelText: 'Enter Amount',
                  border: OutlineInputBorder(),
                ),
              ),

              SizedBox(height: 20,),

              ElevatedButton(onPressed: (){
                if(_titleController.text.isNotEmpty &&
                    _amountContrller.text.isNotEmpty
                ){
                  double amount =double.parse(_amountContrller.text);
                  setState(() {
                    if(isExpense){
                      expense += amount;
                      balance -= amount;
                    }else{
                      earning += amount;
                      balance += amount;
                    }

                    _transactions.add({
                      'title' : _titleController.text,
                      'amount' : amount,
                     'date': DateTime.now().toString().substring(0,10),
                      'isExpense' :isExpense,
                    });
                  });

                  _titleController.clear();
                  _amountContrller.clear();

                  Navigator.pop(context);
                }
              },

                  child: Text('Save'))
            ],
          );
        });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Money Management'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Row(
            children: [
              _SummaryCard(title: 'Earning', color: Colors.green, value: earning),
              _SummaryCard(title: 'Expense', color: Colors.red, value: expense),
              _SummaryCard(title: 'Balance', color: Colors.green, value: balance),

            ],
          ),

          SizedBox(height: 20,),

          Row(
           children: [
             _BalanceCard(color: Colors.green, title: 'Add Balance', iconData: Icons.add, onTap: ()=> _showAddBalance('Add Balance',false)),
             _BalanceCard(color: Colors.red, title: 'Buy item', iconData: Icons.remove_circle, onTap: ()=>_showAddBalance('Buy item',true)),
           ],
          ),
          SizedBox(height: 20,),
          Text('All Transactions',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),



Expanded(child: _buildTransaction(_transactions)),





        ],
      ),

    );
  }
}
Widget _SummaryCard(
{
  required title,
required color,
required double value,
}){
  return Expanded(
    child: Card(
      color: color,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Text(value.toString(),
              style:TextStyle(color: Colors.white,fontSize: 25) ,),
            Text(title,
              style: TextStyle(color: Colors.white,fontSize: 16),
            ),
          ],
        ),
      ),
    ),
  );
}
Widget _BalanceCard(
{
  required color,
required title,
required IconData iconData ,
  required VoidCallback onTap,

}){
  return Expanded(
    child: InkWell(
      onTap: onTap,
      child: Card(
        color: color,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Icon(iconData,color: Colors.white,size: 20,),
              SizedBox(height: 8,),

              Text(title,
                style: TextStyle(color: Colors.white),
              )
            ],
          ),
        ),
      ),
    ),
  );

}
Widget _buildTransaction(List<Map<String,dynamic>> transactions){
  return ListView.builder(
    itemCount: transactions.length,
      itemBuilder: (context,index){
      final tx = transactions[index];
      return Card(
        child: ListTile(
        title: Text(tx['title']),
          subtitle: Text(tx['date']),
          leading: Icon(tx['isExpense']?
              Icons.arrow_downward:Icons.arrow_upward,
        color: tx['isExpense']?
            Colors.red:Colors.green,
          ),

          trailing: Text(tx['amount'].toString(),
            style: TextStyle(
             color: tx['isExpense']?
                 Colors.red:Colors.green,
              fontWeight: FontWeight.bold
            ),
          ),
      ),
      );
  },
  );

}