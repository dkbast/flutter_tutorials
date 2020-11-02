import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:localization/app_localizations.dart';

class MaterialDesignCard extends StatelessWidget {
  const MaterialDesignCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var translate = AppLocalizations.of(context).translate;
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
                              translate('widget_title'),
                              style: Theme.of(context)
                                  .textTheme
                                  .headline6
                                  .copyWith(fontWeight: FontWeight.bold),
                            ),
                            Text(
                              translate('widget_secondary'),
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
                imageUrl: 'http://source.unsplash.com/random/344x194',
                placeholder: (context, url) => Placeholder(
                  fallbackHeight: 194,
                  fallbackWidth: 344,
                ),
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(translate('widget_text'),
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(8, 0, 0, 8),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: TextButton(
                            onPressed: () {},
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 8.0),
                              child: Text(
                                translate('widget_action_1'),
                                style: Theme.of(context).textTheme.button,
                              ),
                            ),
                          ),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Text(translate('widget_action_2'),
                                style: Theme.of(context).textTheme.button),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              )
            ],
          )),
    );
  }
}