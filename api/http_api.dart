import 'dart:convert';
import 'package:http/http.dart' show Client;

class HttpClientNews {
  Client client = Client();
  List<String> gifsList = List();

  Future<List<String>> fetchNews() async {
    final response = await client.get(
        'https://api.giphy.com/v1/gifs/trending?api_key=CggAvZDdLSPanG0nZqvv4MNDloXwHhr7&limit=25&rating=G');

    final responseDecoded = json.decode(response.body);
    final responseLength = responseDecoded['data'].length;

    gifsList = List();

    for (var i = 0; i < responseLength; i++) {
      gifsList
          .add(responseDecoded['data'][i]['images']['downsized_large']['url']);
    }

    print(gifsList);
    return gifsList;
  }

  Future<List<String>> getNews() => fetchNews();
}
