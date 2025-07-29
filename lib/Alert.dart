import 'package:flutter/material.dart';

class Alert extends StatelessWidget {
  const Alert({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    void showAlertDialog(){
      showDialog(context: context,
         barrierDismissible: false,
          builder: (context)=>AlertDialog(

        title: Text('this is title'),
        content: Text('Are you sure ....?'),
        actions: [
          TextButton(onPressed: (){
            Navigator.pop(context);
          }, child: Text('Cancel')),
          ElevatedButton(onPressed: (){}, child: Text('Submit'))
        ],

      ));
    } 
    
    void showAlertDialogWithIcon(){
      showDialog(context: context, builder: (context)=>AlertDialog(
        title: Text('Installation block'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                Icon(Icons.warning,color: Colors.red,size: 40,),
                SizedBox(width: 5,),
                Text('Warning'),
              ],
            ),

            SizedBox(height: 10,),

            Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent rutrum justo nec orci imperdiet rutrum. Duis hendrerit volutpat ex. Nullam orci justo, faucibus at urna quis, laoreet pharetra lectus. Pellentesque posuere iaculis eros, in suscipit diam tempor nec. Proin molestie, lorem eget volutpat varius, eros risus volutpat dolor, sit amet egestas ex nisi id orci. Donec pulvinar, nisl nec auctor lobortis, nisi nisl efficitur risus, sit amet luctus ex augue nec metus. Nunc feugiat diam vitae iaculis tincidunt. Aenean nunc erat, sagittis nec vulputate ac, elementum ac mi. ',
              style: TextStyle(color: Colors.grey),
            ),

          ],
        ),
        actions: [
          TextButton(onPressed: (){
            Navigator.pop(context);
          }, child: Text('ok'))
        ],
      ));
    };

    void showSimpleDialog(){
      showDialog(context: context, builder: (context)=> SimpleDialog(

        title: Text('Simple Dialog'),
        children: [
          SimpleDialogOption(
            child: Text('Option-1'),
          ),
          SimpleDialogOption(
            child: TextField(),
          ),

        ],
      ));
    };
    showBottomSheetAlert(){
      showModalBottomSheet(context: context, builder: (context)=>Container(
        child: Column(
          children: [
            Text('Choose option',style: TextStyle(fontSize: 18,),),

            ListTile(
              title: Text('Option-1'),
            ),

            ListTile(
              title: Text('Option-1'),
            ),
            ListTile(
              title: Text('Option-1'),
            ),
            ListTile(
              title: Text('Option-1'),
            ),
            ElevatedButton(onPressed: (){
              Navigator.pop(context);
            }, child: Text('save')),
          ],
        ),
      ));
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Alert'),
        centerTitle: true,
        backgroundColor: Colors.lightBlue,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
             SizedBox(height: 10,),

              Container(
                color: Colors.blue,
                width: 200,
                height: 200,
              ),

              SizedBox(height: 10,),
        
              Container(
                color: Colors.red,
                width: screenSize.width*0.5,
                height: screenSize.height*0.5,
              ),
        
              Text('This is text',style: TextStyle(fontSize: screenSize.width> 600 ? 32 :18),),
        
              SizedBox(height: 10,),
        
        
              ElevatedButton(onPressed: (){
                showAlertDialog();
              }, child: Text('Alert Dialog')),
        
              ElevatedButton(onPressed: (){
                showAlertDialogWithIcon();
              }, child: Text('Alert Dialog with Icon')),
        
              ElevatedButton(onPressed: (){
                showSimpleDialog();
              }, child: Text('Simple Dialog')),
        
        
              ElevatedButton(onPressed: (){
                showBottomSheetAlert();
              }, child: Text('BottomSheet')),
        
        
            ],
          ),
        
        ),
      ),
    );
  }
}
