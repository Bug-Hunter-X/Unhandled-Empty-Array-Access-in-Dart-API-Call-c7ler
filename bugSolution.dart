```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final List<dynamic> data = jsonDecode(response.body);

      // Solution: Check if the array is empty before accessing elements
      if (data.isNotEmpty) {
        final String firstItem = data[0]['name']; 
        print('First item name: $firstItem');
      } else {
        print('The data array is empty.');
      }
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    print('Error fetching data: $e');
  }
}
```