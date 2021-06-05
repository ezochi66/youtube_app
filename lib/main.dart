import 'package:flutter/material.dart';
import 'package:youtube_app/video_daetail_page.dart';

//アプリを起動すると呼ばれる
void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  final items = List<String>.generate(100, (i) => "Item $i");

  @override
  Widget build(BuildContext context) {
    //runすると表示される
    return MaterialApp(
      theme: ThemeData(
        //上の部分の色を変更している
        primaryColor: Colors.white,
      ),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: false,
          leading: Icon(
            Icons.videocam
          ),
          //上の部分のタイトル
          title: const Text('KBOYのFlutter大学'),
          actions: <Widget>[
            SizedBox(
              width: 44,
              child: TextButton(
                onPressed: (){

                },
                child: Icon(Icons.search),
              ),
            ),
            SizedBox(
              width: 44,
              child: TextButton(
                onPressed: (){
                },
                child: Icon(Icons.more_vert),
              ),
            ),
          ],
        ),
        //中身
        body: Container(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: <Widget>[
                    SizedBox(
                      width: 60,
                      height: 60,
                      child: Image.network(
                        'https://yt3.ggpht.com/ytc/AAUvwng4tQ0GjNvQN6XMMV8G4ISM5HXt-y2xhvFSMPiD=s88-c-k-c0x00ffffff-no-rj'
                      ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Column(
                      children: <Widget>[
                        const Text(
                          'KBOYのFlutter大学',
                        ),
                        TextButton(
                          child: Row(
                            children: <Widget>[
                              Icon(
                                  Icons.video_call,
                                  color: Colors.red,
                              ),
                              Text('登録する')
                            ],
                          ),
                          onPressed: (){

                          },
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      onTap: () async{
                        await Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => VideoDetailPage()
                          ),
                        );
                      },
                      contentPadding: EdgeInsets.all(8),
                      leading: Image.network(
                        'https://i.ytimg.com/vi/SHoTRjzc1lI/hqdefault.jpg?sqp=-oaymwEcCPYBEIoBSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLAZ2kwjN_oB2XLHtLgTEQv2o2MDUQ'
                       ),
                      title: Column(
                        children: <Widget> [
                          Text('[Flutter超入門]リストを作る方法',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Row(
                            children: <Widget>[
                              Text('267回再生',
                              style: TextStyle(fontSize: 13),),
                              Text('1年前',
                                  style: TextStyle(fontSize: 13)),
                            ],
                          )
                        ],
                      ),
                      trailing: Icon(Icons.more_vert),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

