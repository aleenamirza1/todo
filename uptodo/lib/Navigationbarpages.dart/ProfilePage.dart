import 'package:flutter/material.dart';

class Profile1 extends StatelessWidget {
  const Profile1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: ListView(
            children: [profilee(), container1(), container2()],
          ),
        ));
  }

  Widget profilee() {
    return Card(
      elevation: 3.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: ListTile(
        tileColor: Colors.black,
        contentPadding: EdgeInsets.all(8), // Add padding inside the ListTile
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(15.0),
          child: Container(
            padding: EdgeInsets.all(3),
            height: 160,
            width: 80,
            child: Image.network(
              "https://images.pexels.com/photos/3763188/pexels-photo-3763188.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2",
              fit: BoxFit.cover,
            ),
          ),
        ),
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Aleena Mirza",
              style: TextStyle(
                color: Colors.white,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget container1() {
    List<Map<String, dynamic>> items = [
      {
        "icon": Icons.person_2,
        "text": "Change account name",
        "trailingIcon": Icons.arrow_forward,
      },
      {
        "icon": Icons.key,
        "text": "Change account password",
        "trailingIcon": Icons.arrow_forward,
      },
      {
        "icon": Icons.camera_alt_outlined,
        "text": "Change account image",
        "trailingIcon": Icons.arrow_forward,
      },
    ];

    List<Widget> cardList = items.map((item) {
      return Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: ListTile(
          tileColor: Colors.black,
          leading: Icon(
            item["icon"],
            color: Colors.white,
          ),
          title: Text(
            item["text"],
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
          ),
          trailing: Icon(
            item["trailingIcon"],
            color: Colors.white,
          ),
        ),
      );
    }).toList();
    return Padding(
      padding: EdgeInsets.all(8), // Add padding around the container
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey,
            width: 2.0,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
        child: ListView(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          children: cardList,
        ),
      ),
    );
  }
}

Widget container2() {
  List<Map<String, dynamic>> items = [
    {
      "icon": Icons.settings,
      "text": "App Settings",
      "trailingIcon": Icons.arrow_forward,
    },
    {
      "icon": Icons.question_answer,
      "text": "FAQs",
      "trailingIcon": Icons.arrow_forward,
    },
    {
      "icon": Icons.help,
      "text": "Helps and Feedback",
      "trailingIcon": Icons.arrow_forward,
    },
    {
      "icon": Icons.thumb_up_sharp,
      "text": "Support Us",
      "trailingIcon": Icons.arrow_forward,
    },
  ];

  List<Widget> cardList = items.map((item) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: ListTile(
        tileColor: Colors.black,
        leading: Icon(
          item["icon"],
          color: Colors.white,
        ),
        title: Text(
          item["text"],
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        trailing: Icon(
          item["trailingIcon"],
          color: Colors.white,
        ),
      ),
    );
  }).toList();

  return Padding(
    padding: EdgeInsets.all(8),
    child: Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey,
          width: 2.0,
        ),
        borderRadius: BorderRadius.circular(15),
      ),
      child: ListView(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        children: cardList,
      ),
    ),
  );
}
