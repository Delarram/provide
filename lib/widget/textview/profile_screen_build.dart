import 'package:easyapproach/constant/constant_textStyle.dart';
import 'package:easyapproach/widget/textview/text_view.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Mylistview extends StatelessWidget {
  const Mylistview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: const Text("ListView"),
      ),
      body: Container(
        padding: const EdgeInsets.only(top: 10.0),
        width: double.infinity,
        height: 150,
        child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: 5,
            itemBuilder: (context, index) => Card(
                  child: SizedBox(
                    width: 250,
                    child: Row(
                      //takes the row to the top
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          margin: EdgeInsets.all(10),
                          height: 120,
                          width: 100,
                          child: ClipRRect(
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                            child: CachedNetworkImage(
                              height: double.infinity,
                              fit: BoxFit.fill,
                              imageUrl:
                                  "https://cdn.pixabay.com/photo/2017/12/10/14/47/pizza-3010062_960_720.jpg",
                              progressIndicatorBuilder:
                                  (context, url, downloadProgress) =>
                                      CircularProgressIndicator(
                                          value: downloadProgress.progress),
                              errorWidget: (context, url, error) =>
                                  const Icon(Icons.error),
                            ),
                          ),
                        ),
                        Flexible(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              TextView(
                                  title: "Unique Mandalay Tea Room",
                                  fontSize: 16),
                              TextView(
                                title:
                                    "28 St 70th St, Between 27 And Chan Aye Thar Zar",
                                fontSize: 12,
                                maxLine: 2,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  color: Colors.white,
                )),
      ),
    );
  }
}


