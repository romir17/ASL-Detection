import 'package:flutter/material.dart';

class Guide extends StatelessWidget {
  const Guide({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Guide'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Image.network(
            'https://cudoo.com/blog/wp-content/uploads/2018/03/ASL-Alphabet-2.jpg',
            loadingBuilder: (context, child, loadingProgress) {
              if (loadingProgress == null) return child;

              return Center(child: CircularProgressIndicator());
            },
            errorBuilder: (context, error, stackTrace) =>
                Text('Some errors occurred!'),
          ),
        ),
      ),
    );
  }
}
