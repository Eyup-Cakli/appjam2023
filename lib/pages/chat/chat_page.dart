import 'package:flutter/material.dart';

class ChatMessage {
  String text;
  String from;

  ChatMessage({required this.text, required this.from});
}

class ChatPage extends StatefulWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  _ChatPageState() {
    _messages.addAll([
      ChatMessage(text: "Uygulamanın son halini rapora eklemem lazım.", from: "you"),
      ChatMessage(text: "Herşey olması gerektiği gibi. Sen de durumlar nasıl?.", from: "Ahmet"),
      ChatMessage(text: "Nasıl gidiyor?", from: "you"),
      ChatMessage(text: "Merhaba", from: "you"),
    ]);
  }
  final List<ChatMessage> _messages = [
    ChatMessage(text: "Teşekkürler.", from: "Ahmet"),
    ChatMessage(text: "Tamamdır, kolay gelsin.", from: "you"),
    ChatMessage(text: "Hala üzerinde çalışıyorum, çok az bir işim kaldı. Bugün bitmeden teslim etmiş olacağım.", from: "Sena"),
    ChatMessage(text: "Harika, peki dün anlaştığımız gibi hata kırılımlarının analiz yaptınız mı? .", from: "you"),
    ChatMessage(text: "Uygulama genel hatlarıyla bitti, UI ve UX çalışmalarına başladık.", from: "Ahmet"),
    ChatMessage(text: "Uygulama ne durumda?.", from: "you"),];


  final TextEditingController _textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF4283F1),
        title: const Text(
          'Chat Screen',
          style: TextStyle(
            fontFamily: 'Raleway',
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
      ),
      body: Container(
        color: Color(0xFFF2F6FC),
        child: Column(
          children: <Widget>[
            Flexible(
              child: ListView.builder(
                padding: const EdgeInsets.all(8.0),
                reverse: true,
                itemBuilder: (_, int index) {
                  final chatMessage = _messages[index];
                  return _buildMessage(chatMessage);
                },
                itemCount: _messages.length,
              ),
            ),
            _buildTextComposer(),
          ],
        ),
      ),
    );
  }

  Widget _buildTextComposer() {
    return IconTheme(
      data: IconThemeData(color: Theme.of(context).accentColor),
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          //border: Border.all(),
          borderRadius:  BorderRadius.all(Radius.circular(20.0)),
          boxShadow:  [
            BoxShadow(
              color:  Color(0x3f000000),
              offset: Offset(0, 10),
              blurRadius: 2,
            )
          ],
        ),
        margin: const EdgeInsets.all(8.0),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: _textController,
                  onSubmitted: _handleSubmitted,
                  decoration: const InputDecoration.collapsed(hintText: 'Send a message'),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 4.0),
              child: IconButton(
                icon: const Icon(Icons.send),
                onPressed: () => _handleSubmitted(_textController.text),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMessage(ChatMessage chatMessage) {
    final bool isMe = chatMessage.from == 'you';
    final messageAlignment = isMe ? CrossAxisAlignment.end : CrossAxisAlignment.start;
    final messageDecoration = isMe
        ? const BoxDecoration(
      boxShadow:  [
        BoxShadow(
          color:  Color(0x3f000000),
          offset: Offset(0, 6),
          blurRadius: 2,
        )
      ],
      color: Colors.white,
      borderRadius:  BorderRadius.only(
        topLeft: Radius.circular(20.0),
        topRight: Radius.circular(20.0),
        bottomLeft: Radius.circular(20.0),
      ),
    )
        : const BoxDecoration(
      boxShadow:  [
        BoxShadow(
          color:  Color(0x3f000000),
          offset: Offset(0.0, 6),
          blurRadius: 2.0,
        )
      ],
      color: Colors.white,
      borderRadius:  BorderRadius.only(
        topLeft: Radius.circular(20.0),
        topRight: Radius.circular(20.0),
        bottomRight: Radius.circular(20.0),
      ),
    );

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10.0),
      child: Column(
        crossAxisAlignment: messageAlignment,
        children: [
          Container(
            decoration: messageDecoration,
            padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
            child: Text(chatMessage.text),
          ),
          const SizedBox(height: 5.0),
          Text(
            chatMessage.from,
            style: const TextStyle(fontSize: 12.0),
          ),
        ],
      ),
    );
  }

  void _handleSubmitted(String text) {
    _textController.clear();
    ChatMessage message = ChatMessage(
      text: text,
      from: 'you',
    );
    setState(() {
      _messages.insert(0, message);
    });
  }

}





