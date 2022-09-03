import 'package:algolia/algolia.dart';
import 'package:flutter/cupertino.dart';

import 'AlgoliaService.dart';

class AlgoliaProvider extends ChangeNotifier {
Algolia?algolia;
TextEditingController SearchController = TextEditingController();
AlgoliaQuery? algoliaQuery;
List<AlgoliaObjectSnapshot> results = [];


void init() async {
  algolia = Application.algolia;
}

void algo(String?val)async{
  AlgoliaQuery query = algolia!.instance.index('').query(val!);
  AlgoliaQuerySnapshot snap = await query.getObjects();
  print('Hits count: ${snap.nbHits}');
  print(snap.hits);
  results = snap.hits;
  notifyListeners();
}

}