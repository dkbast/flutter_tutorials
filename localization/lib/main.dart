import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Flutter Demo', home: HomePage());
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Learning Localization'),
      ),
      body: Center(
        child: Column(
          children: [ExampleCard()],
        ),
      ),
    );
  }
}

class ExampleCard extends StatelessWidget {
  const ExampleCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(maxWidth: 344),
      child: Card(
          child: Column(
        children: [
          IntrinsicHeight(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'http://source.unsplash.com/random/40x40'),
                    )),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          'Title goes here',
                          style: Theme.of(context)
                              .textTheme
                              .headline6
                              .copyWith(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Secondary text',
                          style: Theme.of(context).textTheme.bodyText2,
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          CachedNetworkImage(
              imageUrl:'http://source.unsplash.com/random/344x194',
            placeholder:(context, url) =>
            Placeholder(fallbackHeight: 194, fallbackWidth: 344,),),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'Lorem ipsum dolor sit amet, consectetur adipisicing elit sed do eiusmod tempor',
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              ),
              Row(
                children: [
                  FlatButton(
                    child: Text(
                      'Action 1',
                      style: Theme.of(context).textTheme.button,
                    ),
                  ),
                  FlatButton(
                    child: Text('Action 2',
                        style: Theme.of(context).textTheme.button),
                  )
                ],
              )
            ],
          )
        ],
      )),
    );
  }
}
