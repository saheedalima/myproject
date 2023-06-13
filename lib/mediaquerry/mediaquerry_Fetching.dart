import 'package:flutter/material.dart';

class mediaquerry_Fetching extends StatefulWidget {

  @override
  State<mediaquerry_Fetching> createState() => _mediaquerry_FetchingState();
}

class _mediaquerry_FetchingState extends State<mediaquerry_Fetching> {

  var mediaquerry;
  @override
  Widget build(BuildContext context) {

    mediaquerry=MediaQuery.of(context).size.width;
    return Scaffold(

    ) ;
  }
}
