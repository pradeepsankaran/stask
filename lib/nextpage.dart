import 'package:flutter/material.dart';

class secondpage extends StatefulWidget {
  const secondpage({super.key});

  @override
  State<secondpage> createState() => _secondpageState();
}

class _secondpageState extends State<secondpage> {
  List Name = ['Ram', 'jeffy', 'Dharshini', 'Rathna', 'Raja'];
  List secton = ['B', 'A', 'B', 'C', 'E'];
  List classs = ['4', '3', '5', '2', '3'];
  List students = ['1234', '2345', '3456', '4567', '5678'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text('Students'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                ElevatedButton(onPressed: () {}, child: Text('Name')),
                ElevatedButton(onPressed: () {}, child: Text('Section '))
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: students.length,
                itemBuilder: (BuildContext context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Roll No  : ' + students[index].toString(),
                          style: TextStyle(color: Colors.red),
                        ),
                        Text('Name  : ' + Name[index].toString()),
                        Text('Class  : ' + classs[index].toString()),
                        Text('Section  : ' + secton[index].toString()),
                      ],
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}

/*
Center(
        child: Form(
          key: formkey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                controller: username,
                decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(color: Colors.white)),
                    filled: true,
                    fillColor: Colors.white,
                    label: Icon(Icons.person),
                    hintText: 'Enter The Password',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30))),
                validator: (value) {
                  if (value!.isEmpty || value == null) {
                    return "Enter The Username";
                  } else {
                    return null;
                  }
                },
              ),
              SizedBox(
                height: 50,
              ),
              TextFormField(
                controller: password,
                decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(color: Colors.white)),
                    filled: true,
                    fillColor: Colors.white,
                    label: Icon(Icons.lock),
                    hintText: 'Enter The Password',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30))),
                validator: (value) {
                  if (value!.isEmpty || value == null) {
                    return "Enter The Username";
                  } else {
                    return null;
                  }
                },
              ),
              SizedBox(
                height: 50,
              ),
              ElevatedButton(onPressed: () {
                if()

              }, child: Text('LOGIN'))
            ],
          ),
        ),
      ),
 */
