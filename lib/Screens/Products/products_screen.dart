import 'package:flutter/material.dart';


class ProductsScreen extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        
        return Scaffold(
            body: Center(
                child: SwipeList(),
            )
        );
    }
}

class SwipeList extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ListItemWidget();
  }
}

class ListItemWidget extends State<SwipeList> {
    List items = getDummyList();

    @override
    Widget build(BuildContext context) {
        return Container(
            child: ListView.builder(
                itemCount: items.length,
                itemBuilder: (context, index) {
                    return Dismissible(
                        key: Key(items[index]),
                        background: Container(
                            alignment: AlignmentDirectional.centerEnd,
                            color: Colors.red,
                            child: Icon(
                                Icons.delete,
                                color: Colors.white,
                            ),
                        ),
                        onDismissed: (direction) {
                            setState(() {
                                items.removeAt(index);
                            });
                        },
                        direction: DismissDirection.endToStart,
                        child: Card(
                            elevation: 5,
                            child: Container(
                                height: 100.0,
                                child: Row(
                                    children: <Widget>[
                                        Container(
                                            height: 100.0,
                                            width: 70.0,
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.only(
                                                    bottomLeft: Radius.circular(5),
                                                    topLeft: Radius.circular(5)
                                                ),
                                                image: DecorationImage(
                                                    fit: BoxFit.cover,
                                                    image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQuE4D6qCL5JiUD1X-VzYXZ7Njuh0eyDaIVbQ&usqp=CAU")
                                                )
                                            ),
                                        ),
                                        Container(
                                            height: 100,
                                            child: Padding(
                                                padding: EdgeInsets.fromLTRB(10, 2, 0, 0),
                                                child: Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: <Widget>[
                                                        Text(
                                                            items[index],
                                                        ),
                                                        Padding(
                                                            padding: EdgeInsets.fromLTRB(0, 5, 0, 2),
                                                            child: Container(
                                                                width: 260,
                                                                child: Text(
                                                                    "Morango",
                                                                    style: TextStyle(
                                                                    fontSize: 15,
                                                                    color: Color.fromARGB(255, 48, 48, 54)
                                                                    ),
                                                                ),
                                                            ),
                                                        ),
                                                        Padding(
                                                            padding: EdgeInsets.fromLTRB(0, 5, 0, 2),
                                                            child: Container(
                                                                width: 260,
                                                                child: Text(
                                                                    "Peso: 47kg",
                                                                    style: TextStyle(
                                                                    fontSize: 15,
                                                                    color: Color.fromARGB(255, 48, 48, 54)
                                                                    ),
                                                                ),
                                                            ),
                                                        ),
                                                        Padding(
                                                            padding: EdgeInsets.fromLTRB(0, 5, 0, 2),
                                                            child: Container(
                                                                width: 260,
                                                                child: Text(
                                                                    "Dia de colheita: 06/06/2006",
                                                                    style: TextStyle(
                                                                    fontSize: 15,
                                                                    color: Color.fromARGB(255, 48, 48, 54)
                                                                    ),
                                                                ),
                                                            ),
                                                        )
                                                    ],
                                                ),
                                            ),
                                        )
                                    ],
                                ),
                            ),
                        ),
                    );
                },
            )
        );
    }

    static List getDummyList() {
        List list = List.generate(10, (i) {
            return "Lote ${i + 1}";
        });
        return list;
    }
}